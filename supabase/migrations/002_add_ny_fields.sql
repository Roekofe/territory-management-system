-- Add NY-specific fields to the dispensaries table
-- Only adding the 3 key fields: Hoodie ID, License #, County

-- Add new columns to dispensaries table
ALTER TABLE public.dispensaries 
ADD COLUMN hoodie_id TEXT,
ADD COLUMN license_number TEXT,
ADD COLUMN county TEXT;

-- Create indexes for new fields
CREATE INDEX idx_dispensaries_hoodie_id ON public.dispensaries(hoodie_id);
CREATE INDEX idx_dispensaries_license_number ON public.dispensaries(license_number);
CREATE INDEX idx_dispensaries_county ON public.dispensaries(county);

-- Update the dispensary_details view to include new fields
DROP VIEW IF EXISTS public.dispensary_details;
CREATE VIEW public.dispensary_details AS
SELECT 
    d.id,
    d.hoodie_id,
    d.dispensary_name,
    d.address,
    d.license_number,
    d.county,
    d.total_monthly_sales,
    d.may_sales,
    d.tier,
    d.status,
    d.notes,
    t.name as territory_name,
    u.full_name as assigned_user_name,
    u.email as assigned_user_email,
    d.created_at,
    d.updated_at
FROM public.dispensaries d
LEFT JOIN public.territories t ON d.territory_id = t.id
LEFT JOIN public.users u ON d.assigned_user_id = u.id;

-- Create a view for sales summary by county
CREATE VIEW public.county_sales_summary AS
SELECT 
    d.county,
    COUNT(d.id) as total_dispensaries,
    COUNT(CASE WHEN d.tier = 'Tier 1' THEN 1 END) as tier_1_count,
    COUNT(CASE WHEN d.tier = 'Tier 2' THEN 1 END) as tier_2_count,
    COUNT(CASE WHEN d.tier = 'Tier 3' THEN 1 END) as tier_3_count,
    COUNT(CASE WHEN d.tier = 'Tier 4' THEN 1 END) as tier_4_count,
    SUM(d.may_sales) as total_may_sales,
    AVG(d.may_sales) as avg_may_sales
FROM public.dispensaries d
WHERE d.county IS NOT NULL
GROUP BY d.county
ORDER BY total_may_sales DESC NULLS LAST;