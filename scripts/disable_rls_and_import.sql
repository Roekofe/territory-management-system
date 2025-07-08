-- Temporarily disable RLS for data import
ALTER TABLE public.users DISABLE ROW LEVEL SECURITY;
ALTER TABLE public.territories DISABLE ROW LEVEL SECURITY;
ALTER TABLE public.dispensaries DISABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_territories DISABLE ROW LEVEL SECURITY;
ALTER TABLE public.monthly_sales DISABLE ROW LEVEL SECURITY;