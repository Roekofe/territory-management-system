-- Territory Management System Database Schema
-- Based on existing NJ Addresses Master spreadsheet structure

-- Enable RLS (Row Level Security) extension
ALTER DATABASE postgres SET row_security = on;

-- Create custom types based on your data
CREATE TYPE user_role AS ENUM ('admin', 'sales_rep', 'manager');
CREATE TYPE tier_level AS ENUM ('Tier 1', 'Tier 2', 'Tier 3', 'Tier 4');

-- Users table (extends Supabase auth.users)
CREATE TABLE public.users (
    id UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    full_name TEXT,
    role user_role NOT NULL DEFAULT 'sales_rep',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Territories table (for Territory column)
CREATE TABLE public.territories (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Dispensaries table (main table matching your spreadsheet structure)
CREATE TABLE public.dispensaries (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    
    -- Core fields from your spreadsheet
    dispensary_name TEXT NOT NULL,
    address TEXT NOT NULL,
    total_monthly_sales TEXT, -- Keeping as TEXT since you have ranges like "$1,250,000+"
    may_sales DECIMAL(10,2), -- Numeric sales data
    territory_id UUID REFERENCES public.territories(id) ON DELETE SET NULL,
    tier tier_level NOT NULL,
    
    -- Additional fields for enhanced functionality
    assigned_user_id UUID REFERENCES public.users(id) ON DELETE SET NULL,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT,
    status TEXT DEFAULT 'active', -- active, inactive, closed
    
    -- Timestamps
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- User territories junction table (many-to-many relationship)
CREATE TABLE public.user_territories (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID REFERENCES public.users(id) ON DELETE CASCADE,
    territory_id UUID REFERENCES public.territories(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    UNIQUE(user_id, territory_id)
);

-- Monthly sales tracking table (for detailed sales history)
CREATE TABLE public.monthly_sales (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    dispensary_id UUID REFERENCES public.dispensaries(id) ON DELETE CASCADE,
    user_id UUID REFERENCES public.users(id) ON DELETE SET NULL,
    month_year DATE NOT NULL, -- First day of the month
    sales_amount DECIMAL(10,2) NOT NULL,
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    UNIQUE(dispensary_id, month_year)
);

-- Create indexes for better performance
CREATE INDEX idx_dispensaries_territory_id ON public.dispensaries(territory_id);
CREATE INDEX idx_dispensaries_tier ON public.dispensaries(tier);
CREATE INDEX idx_dispensaries_assigned_user_id ON public.dispensaries(assigned_user_id);
CREATE INDEX idx_dispensaries_name ON public.dispensaries(dispensary_name);
CREATE INDEX idx_user_territories_user_id ON public.user_territories(user_id);
CREATE INDEX idx_user_territories_territory_id ON public.user_territories(territory_id);
CREATE INDEX idx_monthly_sales_dispensary_id ON public.monthly_sales(dispensary_id);
CREATE INDEX idx_monthly_sales_user_id ON public.monthly_sales(user_id);
CREATE INDEX idx_monthly_sales_month_year ON public.monthly_sales(month_year);

-- Enable RLS on all tables
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.territories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dispensaries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_territories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.monthly_sales ENABLE ROW LEVEL SECURITY;

-- RLS Policies

-- Users can read their own profile
CREATE POLICY "Users can view own profile" ON public.users
    FOR SELECT USING (auth.uid() = id);

-- Users can update their own profile
CREATE POLICY "Users can update own profile" ON public.users
    FOR UPDATE USING (auth.uid() = id);

-- Admins can view all users
CREATE POLICY "Admins can view all users" ON public.users
    FOR SELECT USING (
        EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Territories: Users can view territories they're assigned to
CREATE POLICY "Users can view assigned territories" ON public.territories
    FOR SELECT USING (
        id IN (
            SELECT territory_id FROM public.user_territories
            WHERE user_id = auth.uid()
        )
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Dispensaries: Users can only view dispensaries in their territories or assigned to them
CREATE POLICY "Users can view assigned dispensaries" ON public.dispensaries
    FOR SELECT USING (
        assigned_user_id = auth.uid()
        OR territory_id IN (
            SELECT territory_id FROM public.user_territories
            WHERE user_id = auth.uid()
        )
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Dispensaries: Users can update dispensaries assigned to them
CREATE POLICY "Users can update assigned dispensaries" ON public.dispensaries
    FOR UPDATE USING (
        assigned_user_id = auth.uid()
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Dispensaries: Users can insert new dispensaries (with approval workflow)
CREATE POLICY "Users can create dispensaries" ON public.dispensaries
    FOR INSERT WITH CHECK (
        assigned_user_id = auth.uid()
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role IN ('admin', 'manager')
        )
    );

-- User territories: Users can view their own territory assignments
CREATE POLICY "Users can view own territory assignments" ON public.user_territories
    FOR SELECT USING (
        user_id = auth.uid()
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Monthly sales: Users can view sales for their dispensaries
CREATE POLICY "Users can view assigned dispensary sales" ON public.monthly_sales
    FOR SELECT USING (
        user_id = auth.uid()
        OR dispensary_id IN (
            SELECT id FROM public.dispensaries
            WHERE assigned_user_id = auth.uid()
            OR territory_id IN (
                SELECT territory_id FROM public.user_territories
                WHERE user_id = auth.uid()
            )
        )
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Monthly sales: Users can manage sales for their dispensaries
CREATE POLICY "Users can manage assigned dispensary sales" ON public.monthly_sales
    FOR ALL USING (
        user_id = auth.uid()
        OR dispensary_id IN (
            SELECT id FROM public.dispensaries
            WHERE assigned_user_id = auth.uid()
        )
        OR EXISTS (
            SELECT 1 FROM public.users
            WHERE id = auth.uid() AND role = 'admin'
        )
    );

-- Functions to automatically update timestamps
CREATE OR REPLACE FUNCTION public.handle_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = timezone('utc'::text, now());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create triggers for updated_at
CREATE TRIGGER set_updated_at_users
    BEFORE UPDATE ON public.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER set_updated_at_territories
    BEFORE UPDATE ON public.territories
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER set_updated_at_dispensaries
    BEFORE UPDATE ON public.dispensaries
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER set_updated_at_monthly_sales
    BEFORE UPDATE ON public.monthly_sales
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

-- Function to automatically create user profile when user signs up
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO public.users (id, email, full_name, role)
    VALUES (NEW.id, NEW.email, NEW.raw_user_meta_data->>'full_name', 'sales_rep');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger to create user profile on signup
CREATE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- Insert default territories (you can modify these as needed)
INSERT INTO public.territories (name, description) VALUES 
('North Jersey', 'Northern New Jersey territory'),
('Central Jersey', 'Central New Jersey territory'),
('South Jersey', 'Southern New Jersey territory'),
('Unassigned', 'Dispensaries not yet assigned to a territory');

-- Create a view for easier querying of dispensary data with territory names
CREATE VIEW public.dispensary_details AS
SELECT 
    d.id,
    d.dispensary_name,
    d.address,
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

-- Create a view for sales summary by territory
CREATE VIEW public.territory_sales_summary AS
SELECT 
    t.name as territory_name,
    COUNT(d.id) as total_dispensaries,
    COUNT(CASE WHEN d.tier = 'Tier 1' THEN 1 END) as tier_1_count,
    COUNT(CASE WHEN d.tier = 'Tier 2' THEN 1 END) as tier_2_count,
    COUNT(CASE WHEN d.tier = 'Tier 3' THEN 1 END) as tier_3_count,
    COUNT(CASE WHEN d.tier = 'Tier 4' THEN 1 END) as tier_4_count,
    SUM(d.may_sales) as total_may_sales,
    AVG(d.may_sales) as avg_may_sales
FROM public.territories t
LEFT JOIN public.dispensaries d ON t.id = d.territory_id
GROUP BY t.id, t.name;