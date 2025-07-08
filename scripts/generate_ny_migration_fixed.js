const fs = require('fs');
const path = require('path');

// Function to parse CSV with better handling of quoted fields and line breaks
function parseCSV(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    
    // Split by lines but handle quoted fields that may contain line breaks
    const lines = [];
    let currentLine = '';
    let inQuotes = false;
    
    for (let i = 0; i < content.length; i++) {
        const char = content[i];
        
        if (char === '"') {
            inQuotes = !inQuotes;
            currentLine += char;
        } else if (char === '\n' && !inQuotes) {
            if (currentLine.trim()) {
                lines.push(currentLine);
            }
            currentLine = '';
        } else {
            currentLine += char;
        }
    }
    
    if (currentLine.trim()) {
        lines.push(currentLine);
    }
    
    // Parse header
    const headers = parseCSVLine(lines[0]);
    console.log('Headers found:', headers);
    
    const data = [];
    for (let i = 1; i < lines.length; i++) {
        const line = lines[i].trim();
        if (line) {
            const values = parseCSVLine(line);
            
            // Skip malformed rows
            if (values.length < headers.length - 5) { // Allow some missing fields
                console.log(`Skipping malformed row ${i}: ${line.substring(0, 100)}...`);
                continue;
            }
            
            const row = {};
            headers.forEach((header, index) => {
                row[header] = values[index] || null;
            });
            data.push(row);
        }
    }
    return data;
}

// Function to parse a single CSV line
function parseCSVLine(line) {
    const values = [];
    let current = '';
    let inQuotes = false;
    
    for (let i = 0; i < line.length; i++) {
        const char = line[i];
        
        if (char === '"') {
            inQuotes = !inQuotes;
        } else if (char === ',' && !inQuotes) {
            values.push(current.trim());
            current = '';
        } else {
            current += char;
        }
    }
    values.push(current.trim());
    
    return values;
}

// Function to escape SQL strings
function escapeSQLString(str) {
    if (!str || str === 'NULL' || str === 'null') return 'NULL';
    return "'" + str.replace(/'/g, "''") + "'";
}

// Function to convert NY format and generate SQL
function generateNYMigration() {
    try {
        console.log('Loading NY data...');
        const nyDataPath = path.join(__dirname, '../docs/NY Addresses - Master.csv');
        const nyData = parseCSV(nyDataPath);
        
        console.log(`Found ${nyData.length} rows in NY data`);
        
        const territories = new Map();
        const dispensaries = [];
        
        // Process each row
        for (const row of nyData) {
            // Skip empty rows or rows without dispensary name
            if (!row['Dispensary'] || row['Dispensary'].trim() === '' || row['Dispensary'] === 'NULL') {
                continue;
            }
            
            // Clean up territory name
            let territoryName = row['Territory'] || 'Unassigned';
            territoryName = territoryName.trim();
            
            // Skip malformed territory names
            if (territoryName.includes(',') && territoryName.length > 20) {
                territoryName = 'Unassigned';
            }
            
            // Track territories
            if (!territories.has(territoryName)) {
                territories.set(territoryName, {
                    name: territoryName,
                    description: `Territory for ${territoryName}`
                });
            }
            
            // Parse sales amount
            let maySales = null;
            if (row['May Sales'] && row['May Sales'].trim() !== '' && row['May Sales'] !== '0') {
                const cleaned = row['May Sales'].replace(/[$,]/g, '');
                const parsed = parseFloat(cleaned);
                maySales = isNaN(parsed) ? null : parsed;
            }
            
            // Map tier
            const tier = mapTier(row['Tier']);
            
            // Clean up address
            let address = row['Address'] || null;
            if (address) {
                address = address.replace(/\n/g, ' ').trim();
            }
            
            dispensaries.push({
                hoodie_id: row['Hoodie ID'] || null,
                dispensary_name: row['Dispensary'].trim(),
                address: address,
                license_number: row['License #'] || null,
                county: row['County'] || null,
                total_monthly_sales: row['Total Monthly Sales'] || null,
                may_sales: maySales,
                tier: tier,
                territory_name: territoryName,
                status: 'active'
            });
        }
        
        console.log(`Converted ${dispensaries.length} dispensaries and ${territories.size} territories`);
        console.log('Territories:', Array.from(territories.keys()));
        
        // Generate SQL migration
        let sql = `-- NY Data Import Migration
-- Generated on ${new Date().toISOString()}

-- Insert territories
`;
        
        for (const territory of territories.values()) {
            sql += `INSERT INTO public.territories (name, description) VALUES (${escapeSQLString(territory.name)}, ${escapeSQLString(territory.description)}) ON CONFLICT (name) DO NOTHING;\n`;
        }
        
        sql += `\n-- Insert dispensaries\n`;
        
        for (const dispensary of dispensaries) {
            sql += `INSERT INTO public.dispensaries (
    hoodie_id, 
    dispensary_name, 
    address, 
    license_number, 
    county, 
    total_monthly_sales, 
    may_sales, 
    tier, 
    territory_id, 
    status
) VALUES (
    ${escapeSQLString(dispensary.hoodie_id)},
    ${escapeSQLString(dispensary.dispensary_name)},
    ${escapeSQLString(dispensary.address)},
    ${escapeSQLString(dispensary.license_number)},
    ${escapeSQLString(dispensary.county)},
    ${escapeSQLString(dispensary.total_monthly_sales)},
    ${dispensary.may_sales || 'NULL'},
    ${escapeSQLString(dispensary.tier)},
    (SELECT id FROM public.territories WHERE name = ${escapeSQLString(dispensary.territory_name)}),
    ${escapeSQLString(dispensary.status)}
);\n`;
        }
        
        // Write migration file
        const migrationPath = path.join(__dirname, '../supabase/migrations/004_import_ny_data.sql');
        fs.writeFileSync(migrationPath, sql);
        
        console.log(`✅ Generated migration file: ${migrationPath}`);
        console.log(`📊 Contains ${territories.size} territories and ${dispensaries.length} dispensaries`);
        
        // Show sample data for verification
        console.log('\n📋 Sample dispensary data:');
        console.log(JSON.stringify(dispensaries.slice(0, 3), null, 2));
        
    } catch (error) {
        console.error('Error generating migration:', error);
    }
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

// Run the generator
generateNYMigration();