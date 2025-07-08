-- Fix address constraint to allow NULL values
ALTER TABLE public.dispensaries ALTER COLUMN address DROP NOT NULL;