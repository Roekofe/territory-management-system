const fs = require('fs');
const path = require('path');
const { createClient } = require('@supabase/supabase-js');

// Load environment variables
require('dotenv').config();

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);

// Function to parse CSV
function parseCSV(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    const lines = content.split('\n');
    const headers = lines[0].split(',').map(h => h.trim());
    
    const data = [];
    for (let i = 1; i < lines.length; i++) {
        const line = lines[i].trim();
        if (line) {
            // Handle quoted CSV values properly
            const values = [];
            let current = '';
            let inQuotes = false;
            
            for (let j = 0; j < line.length; j++) {
                const char = line[j];
                if (char === '"') {
                    inQuotes = !inQuotes;
                } else if (char === ',' && !inQuotes) {
                    values.push(current.trim());
                    current = '';
                } else {
                    current += char;
                }
            }
            values.push(current.trim()); // Add the last value
            
            const row = {};
            headers.forEach((header, index) => {
                row[header] = values[index] || null;
            });
            data.push(row);
        }
    }
    return data;
}

// Function to convert NY format to database format
function convertNYData(nyData) {
    const territories = new Map();
    const converted = [];
    
    for (const row of nyData) {
        // Skip empty rows
        if (!row['Dispensary'] || row['Dispensary'].trim() === '') {
            continue;
        }
        
        // Map NY columns to database columns
        const convertedRow = {
            hoodie_id: row['Hoodie ID'] || null,
            dispensary_name: row['Dispensary'],
            address: row['Address'] || null,
            license_number: row['License #'] || null,
            county: row['County'] || null,
            total_monthly_sales: row['Total Monthly Sales'] || null,
            may_sales: parseSalesAmount(row['May Sales']),
            tier: mapTier(row['Tier']),
            territory_name: row['Territory'] || 'Unassigned',
            status: 'active'
        };
        
        // Track territories for later insertion
        if (convertedRow.territory_name && !territories.has(convertedRow.territory_name)) {
            territories.set(convertedRow.territory_name, {
                name: convertedRow.territory_name,
                description: `Territory for ${convertedRow.territory_name}`
            });
        }
        
        converted.push(convertedRow);
    }
    
    return { converted, territories: Array.from(territories.values()) };
}

// Function to parse sales amounts
function parseSalesAmount(salesStr) {
    if (!salesStr || salesStr.trim() === '' || salesStr === '0') {
        return null;
    }
    
    // Remove $ and commas, then parse
    const cleaned = salesStr.replace(/[$,]/g, '');
    const parsed = parseFloat(cleaned);
    return isNaN(parsed) ? null : parsed;
}

// Function to map tier values
function mapTier(tier) {
    if (!tier) return 'Tier 4';
    
    const tierMap = {
        't1': 'Tier 1',
        't2': 'Tier 2', 
        't3': 'Tier 3',
        't4': 'Tier 4'
    };
    
    return tierMap[tier.toLowerCase()] || 'Tier 4';
}

// Main import function
async function importNYDataDirect() {
    try {
        console.log('Loading NY data...');
        const nyDataPath = path.join(__dirname, '../docs/NY Addresses - Master.csv');
        const nyData = parseCSV(nyDataPath);
        
        console.log(`Found ${nyData.length} rows in NY data`);
        
        console.log('Converting NY data format...');
        const { converted, territories } = convertNYData(nyData);
        
        console.log(`Converted ${converted.length} dispensaries and ${territories.length} territories`);
        
        // First, insert territories
        console.log('Inserting territories...');
        for (const territory of territories) {
            try {
                const { data, error } = await supabase
                    .from('territories')
                    .upsert(territory, { onConflict: 'name' });
                
                if (error) {
                    console.error(`Error inserting territory ${territory.name}:`, error);
                } else {
                    console.log(`✓ Inserted territory: ${territory.name}`);
                }
            } catch (error) {
                console.error(`Error processing territory ${territory.name}:`, error);
            }
        }
        
        // Get territory ID mapping
        const { data: territoryData, error: territoryError } = await supabase
            .from('territories')
            .select('id, name');
        
        if (territoryError) {
            console.error('Error fetching territories:', territoryError);
            return;
        }
        
        const territoryMap = new Map();
        territoryData.forEach(territory => {
            territoryMap.set(territory.name, territory.id);
        });
        
        // Insert dispensaries in batches
        console.log('Inserting dispensaries...');
        const batchSize = 50;
        let successCount = 0;
        let errorCount = 0;
        
        for (let i = 0; i < converted.length; i += batchSize) {
            const batch = converted.slice(i, i + batchSize);
            
            // Add territory IDs to batch
            const batchWithTerritoryIds = batch.map(dispensary => ({
                ...dispensary,
                territory_id: territoryMap.get(dispensary.territory_name) || null
            }));
            
            // Remove territory_name as it's not in the database
            batchWithTerritoryIds.forEach(dispensary => {
                delete dispensary.territory_name;
            });
            
            try {
                const { data, error } = await supabase
                    .from('dispensaries')
                    .insert(batchWithTerritoryIds);
                
                if (error) {
                    console.error(`Error inserting batch ${i/batchSize + 1}:`, error);
                    errorCount += batch.length;
                } else {
                    successCount += batch.length;
                    console.log(`✓ Inserted batch ${i/batchSize + 1} (${batch.length} dispensaries)`);
                }
            } catch (error) {
                console.error(`Error processing batch ${i/batchSize + 1}:`, error);
                errorCount += batch.length;
            }
        }
        
        console.log(`\nImport complete!`);
        console.log(`✅ Successfully imported: ${successCount} dispensaries`);
        console.log(`❌ Failed to import: ${errorCount} dispensaries`);
        
    } catch (error) {
        console.error('Error in import process:', error);
    }
}

// Run the import if this file is executed directly
if (require.main === module) {
    importNYDataDirect();
}

module.exports = { importNYDataDirect };