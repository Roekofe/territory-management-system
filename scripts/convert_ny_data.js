const fs = require('fs');
const path = require('path');
const { createClient } = require('@supabase/supabase-js');

// Load environment variables
require('dotenv').config();

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_ANON_KEY;
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
            const values = line.split(',').map(v => v.trim().replace(/"/g, ''));
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
    
    return nyData.map(row => {
        // Skip empty rows
        if (!row['Dispensary'] || row['Dispensary'].trim() === '') {
            return null;
        }
        
        // Map NY columns to database columns
        const converted = {
            hoodie_id: row['Hoodie ID'] || null,
            dispensary_name: row['Dispensary'],
            address: row['Address'],
            license_number: row['License #'] || null,
            county: row['County'] || null,
            total_monthly_sales: row['Total Monthly Sales'] || null,
            may_sales: parseSalesAmount(row['May Sales']),
            tier: mapTier(row['Tier']),
            territory_name: row['Territory'] || 'Unassigned'
        };
        
        // Track territories for later insertion
        if (converted.territory_name && !territories.has(converted.territory_name)) {
            territories.set(converted.territory_name, {
                name: converted.territory_name,
                description: `Territory for ${converted.territory_name}`
            });
        }
        
        return converted;
    }).filter(row => row !== null);
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

// Function to get or create territory
async function getOrCreateTerritory(territoryName) {
    // First try to find existing territory
    const { data: existingTerritory, error: findError } = await supabase
        .from('territories')
        .select('id')
        .eq('name', territoryName)
        .single();
    
    if (existingTerritory) {
        return existingTerritory.id;
    }
    
    // Create new territory
    const { data: newTerritory, error: createError } = await supabase
        .from('territories')
        .insert({
            name: territoryName,
            description: `Territory for ${territoryName}`
        })
        .select('id')
        .single();
    
    if (createError) {
        console.error('Error creating territory:', createError);
        return null;
    }
    
    return newTerritory.id;
}

// Main conversion function
async function convertAndUploadNYData() {
    try {
        console.log('Loading NY data...');
        const nyDataPath = path.join(__dirname, '../docs/NY Addresses - Master.csv');
        const nyData = parseCSV(nyDataPath);
        
        console.log(`Found ${nyData.length} rows in NY data`);
        
        console.log('Converting NY data format...');
        const convertedData = convertNYData(nyData);
        
        console.log(`Converted ${convertedData.length} dispensaries`);
        
        // Process each dispensary
        for (const dispensary of convertedData) {
            try {
                // Get or create territory
                const territoryId = await getOrCreateTerritory(dispensary.territory_name);
                
                // Prepare dispensary data for insertion
                const dispensaryData = {
                    hoodie_id: dispensary.hoodie_id,
                    dispensary_name: dispensary.dispensary_name,
                    address: dispensary.address,
                    license_number: dispensary.license_number,
                    county: dispensary.county,
                    total_monthly_sales: dispensary.total_monthly_sales,
                    may_sales: dispensary.may_sales,
                    tier: dispensary.tier,
                    territory_id: territoryId,
                    status: 'active'
                };
                
                // Insert dispensary
                const { data, error } = await supabase
                    .from('dispensaries')
                    .insert(dispensaryData);
                
                if (error) {
                    console.error(`Error inserting ${dispensary.dispensary_name}:`, error);
                } else {
                    console.log(`✓ Inserted ${dispensary.dispensary_name}`);
                }
                
            } catch (error) {
                console.error(`Error processing ${dispensary.dispensary_name}:`, error);
            }
        }
        
        console.log('NY data conversion complete!');
        
    } catch (error) {
        console.error('Error in conversion process:', error);
    }
}

// Run the conversion if this file is executed directly
if (require.main === module) {
    convertAndUploadNYData();
}

module.exports = { convertAndUploadNYData, convertNYData, parseCSV };