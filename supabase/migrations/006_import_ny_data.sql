-- NY Data Import Migration
-- Generated on 2025-07-08T23:37:45.265Z

-- Insert territories
INSERT INTO public.territories (name, description) VALUES ('NY green', 'Territory for NY green') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.territories (name, description) VALUES ('NY red', 'Territory for NY red') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.territories (name, description) VALUES ('NY yellow', 'Territory for NY yellow') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.territories (name, description) VALUES ('Unassigned', 'Territory for Unassigned') ON CONFLICT (name) DO NOTHING;

-- Insert dispensaries
INSERT INTO public.dispensaries (
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
    '1707511906738',
    '400 River Dispensary and Lounge - Troy',
    '400 River St, Troy, NY 12180, USA',
    'OCM-MICR-24-000081',
    'Rensselaer',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702662094624',
    '420 Bliss - Troy',
    '740 Hoosick Rd, Troy, NY 12180, USA',
    'OCM-CAURD-23-000032',
    'Rensselaer',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1729280362456',
    '716 Cannabis - Blasdell',
    '5161 Camp Rd, Hamburg, NY 14075, USA',
    'OCM-CAURD-23-000043',
    'Erie',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1717779869651',
    '82-J - Buffalo',
    '1673 Hertel Ave, Buffalo, NY 14216, USA',
    'OCM-CAURD-24-000148',
    'Erie',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1729540389920',
    'Ace High Dispensary - Irving',
    '11285 Route 20, Irving, NY 14081, USA',
    'Unspecified',
    'Chautauqua',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1711729234236',
    'Air City Cannabis - Utica',
    '1707 Oriskany St W, Utica, NY 13502, USA',
    'OCM-CAURD-24-000152',
    'Oneida',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722024445382',
    'Allegany River Front Panama Reds Dispensary',
    '36 River St, Salamanca, NY 14779, USA',
    'Unspecified',
    'Cattaraugus',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1708717269937',
    'Alta Dispensary',
    '52 Kenmare St A, New York, NY 10012, USA',
    'OCM-RETL-24-000104',
    'New York',
    '$250,000',
    2738.02,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1633575762610',
    'Alto on Chambers',
    '110 Chambers St, New York, NY 10007, USA',
    'OCM-CAURD-24-000129',
    'New York',
    '$1,000,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1633575765701',
    'Amsterdam Cannabis',
    '1451 Route 5S, Amsterdam, NY 12010, USA',
    'OCM-CAURD-23-000033',
    'Montgomery',
    '$750,000',
    4973.99,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1633575763634',
    'Aroma Farms',
    '20917 Northern Blvd, Bayside, NY 11361, USA',
    'Unspecified',
    'Queens',
    '$1,250,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1633575766714',
    'Aspire Cannabis',
    '205 N Fulton St, Ithaca, NY 14850, USA',
    'OCM-CAURD-24-000106',
    'Tompkins',
    '$500,000',
    741.71,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Back Home Dispensary',
    '3056 NY-213, Stone Ridge, NY 12484, USA',
    'Unspecified',
    'Ulster',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1638730844215',
    'Bad Maryjane - Brooklyn',
    '799 Lexington Ave, Manhattan, NY 10065, USA',
    'Unspecified',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702052205947',
    'Bayside Cannabis Dispensary',
    '224-15 Union Tpke, Oakland Gardens, NY 11364, USA',
    'OCM-RETL-24-000026',
    'Queens',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737739727411',
    'Be. - Brooklyn',
    '202 Flatbush Ave, Brooklyn, NY 11217, USA',
    'MM0906D',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731437570183',
    'Be. - Hudson Valley',
    '1147 Route 9, Wappingers Falls, NY 12590, USA',
    'MM0904D',
    'Dutchess',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Be. - Staten Island',
    '338 New Dorp Ln, Staten Island, NY 10306, USA',
    'MM0903D',
    'Richmond',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722024438370',
    'Bedford Club - Brooklyn',
    '1102 Bedford Ave, Brooklyn, NY 11216, USA',
    'OCM-CAURD-24-000095',
    'Kings',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1689353832321',
    'Beleaf - Brooklyn',
    '1077 Atlantic Ave, Brooklyn, NY 11238, USA',
    'OCM-RETL-24-000037',
    'Kings',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706900901058',
    'Beleaf - Calverton',
    '4462 Middle Country Rd, Calverton, NY 11933, USA',
    'OCM-CAURD-24-000216',
    'Suffolk',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738952538084',
    'Bethel Buds - White Lake',
    '1577 NY-17B, White Lake, NY 12786, USA',
    'OCM-RETL-24-000049',
    'Sullivan',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1739572862330',
    'Big Gas Dispensary - New Paltz',
    '98 N Chestnut St, New Paltz, NY 12561, USA',
    'OCM-CAURD-24-000118',
    'Ulster',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1697467458672',
    'BK Exotic Dispensary - Brooklyn',
    '1056 Flatbush Ave, Brooklyn, NY 11226, USA',
    'OCM-CAURD-24-000048',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715959543453',
    'Black Market Canna - Poughkeepsie',
    '89 Main St, Poughkeepsie, NY 12601, USA',
    'OCM-CAURD-24-000088',
    'Dutchess',
    '$1,000,000',
    2068.75,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728666766274',
    'Black River Supply Company',
    '15 Bridge St, Carthage, NY 13619, USA',
    'Unspecified',
    'Jefferson',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1672163518870',
    'Bleu Leaf Dispensary',
    '2034 Jerome Ave, Bronx, NY 10453, USA',
    'OCM-CAURD-24-000116',
    'Bronx',
    '$500,000',
    2341.09,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714158048856',
    'Bliss + Lex',
    '128 East 86th St, New York, NY 10028, USA',
    'OCM-CAURD-24-000087',
    'New York',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737144770286',
    'Bob Natural Cannabis Dispensary',
    '1067 E 2nd St, Jamestown, NY 14701, USA',
    'OCM-RETL-24-000128',
    'Chautauqua',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725900476319',
    'Broadway Strains
 - New York',
    '3858 Broadway, Manhattan, NY 10032, USA',
    'OCM-RETL-24-000106',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706900155568',
    'Bronx Joint',
    '925 Hunts Point Ave, Bronx, NY 10459, USA',
    'OCM-CAURD-24-000064',
    'Bronx',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1740773808564',
    'Brooklyn Bourne Dispensary',
    '2225 Church Ave, Brooklyn, NY 11226, USA',
    'OCM-CAURD-24-000188',
    'Kings',
    '$500,000',
    1999.16,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1699833504204',
    'Brown Budda New York',
    '1533 County Rd 39, Southampton, NY 11968, USA',
    'OCM-CAURD-24-000157',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714405279344',
    'Brownies Dispensary',
    '1686 Central Ave, Colonie, NY 12205, USA',
    'OCM-CAURD-24-000067',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1703281924521',
    'Bud and Honey',
    '241 5th Ave, Manhattan, NY 10016, USA',
    'Unspecified',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1727466010887',
    'Bud City Cannabis LLC',
    '3343 Fulton St, Brooklyn, NY 11208, USA',
    'Unspecified',
    'Kings',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1690589420452',
    'Budd Barn - Monticello',
    '428 Broadway, Monticello, NY 12701, USA',
    'OCM-CAURD-24-000122',
    'Sullivan',
    '$250,000',
    963.58,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731956890724',
    'Buddeez - Rochester',
    '1460 Lyell Ave Suite, Rochester, NY 14606, USA',
    'OCM-RETL-24-000117',
    'Monroe',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712358005165',
    'Budds Dispensary - Catskill',
    '170 W Bridge St, Catskill, NY 12414, USA',
    'OCM-RETL-24-000042',
    'Greene',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Budr Cannabis - Yonkers NY',
    '887 Yonkers Ave, Yonkers, NY 10704, USA',
    'OCM-CAURD-24-000208',
    'Westchester',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1647456583210',
    'Buffalo Dreams',
    '900 Niagara Falls Blvd, Buffalo, NY 14223, USA',
    'OCM-CAURD-24-000070',
    'Erie',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1628693870871',
    'By Any Other Name',
    '946 Fulton St, Brooklyn, NY 11238, USA',
    'OCM-CAURD-24-000145',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1676305468077',
    'Canna Buddha - Flushing',
    '215-46 39th Ave, Flushing, NY 11361, USA',
    'Unspecified',
    'Queens',
    '$750,000',
    863.21,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Canna Planet - Ellenville',
    '37 N Main St, Ellenville, NY 12428, USA',
    'OCM-RETL-24-000168',
    'Ulster',
    '$750,000',
    757.23,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730497899460',
    'Canna Planet - Kingston',
    '1223 Ulster Ave, Kingston, NY 12401, USA',
    'OCM-RETL-24-000043',
    'Ulster',
    '$500,000',
    1957.22,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730497903557',
    'Canna Planet - Monticello',
    '73 Pleasant St, Monticello, NY 12701, USA',
    'OCM-RETL-24-000235',
    'Sullivan',
    '$750,000',
    391.13,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1693933063163',
    'Canna Planet Dispensary - Wappingers',
    '1444 Route 9D, Wappingers Falls, NY 12508, USA',
    'OCM-CAURD-24-000206',
    'Dutchess',
    '$250,000',
    144.45,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726251195188',
    'Cannabicity',
    '220 Harborside Dr Suite 111, Schenectady, NY 12305, USA',
    'OCM-RETL-24-000239',
    'Schenectady',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1743781925603',
    'Cannabis Central - Clifton Park',
    '1520 Crescent Rd, Clifton Park, NY 12065, USA',
    'OCM-RETL-24-000190',
    'Saratoga',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1688158734311',
    'CANNABIS DEPOT - Watertown',
    '23171 Murrock Cir, Watertown, NY 13601, USA',
    'OCM-RETL-24-000024',
    'Jefferson',
    '$1,000,000',
    3958.13,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Cannabis Hut - Newburgh',
    '165 S Plank Rd, Newburgh, NY 12550, USA',
    'Unspecified',
    'Orange',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725374302774',
    'Cannabis on Lex',
    '135 E 25th St, New York, NY 10010, USA',
    'OCM-RETL-24-000263',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408189677',
    'Cannabis Realm of New York',
    '475 Central Ave, White Plains, NY 10606, USA',
    'OCM-CAURD-24-000046',
    'Westchester',
    '$1,000,000',
    2612.71,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408190679',
    'Cannabist - Brooklyn',
    '44 Court St, Brooklyn, NY 11201, USA',
    'MM0306D',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408214789',
    'Cannadreams',
    '862 9th Ave, New York, NY 10019, USA',
    'OCM-CAURD-24-000114',
    'New York',
    '$750,000',
    2746.12,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408244913',
    'Cannavita Dispensary',
    '30-30 Steinway St, Astoria, NY 11105, USA',
    'OCM-CAURD-24-000052',
    'Queens',
    '$750,000',
    5776.46,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408338427',
    'Capital District Cannabis and Wellness Inc.',
    '997 Central Ave, Albany, NY 12205, USA',
    'OCM-CAURD-23-000028',
    'Albany',
    '$500,000',
    4966.72,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408339448',
    'Catskill Mountain High Dispensary',
    '308 Plaza Rd, Kingston, NY 12401, USA',
    'OCM-CAURD-24-000202',
    'Ulster',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408337413',
    'Central Budz',
    '2247 Central Park Ave, Yonkers, NY 10710, USA',
    'OCM-RETL-24-000020',
    'Westchester',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408529213',
    'Charlie Fox - New York',
    '719 7th Ave, New York, NY 10036, USA',
    'OCM-RETL-24-000254',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1741374266418',
    'Chelsea Cannabis Co - New York',
    '104 7th Ave, New York, NY 10011, USA',
    'OCM-CAURD-25-000243',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728399962896',
    'Chronic Brooklyn',
    '483 3rd Ave, Brooklyn, NY 11215, USA',
    'OCM-RETL-24-000051',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1729280368631',
    'Classy Canna',
    '8 N Main St, Homer, NY 13077, USA',
    'OCM-RETL-24-000174',
    'Cortland',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1745022067561',
    'Cloud 914',
    '807 Washington St, Peekskill, NY 10566, USA',
    'OCM-RETL-24-000087',
    'Westchester',
    '$250,000',
    5158.21,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1703274889426',
    'Cloud Nine - Yonkers',
    '305 Saw Mill River Rd, Yonkers, NY 10701, USA',
    'Unspecified',
    'Westchester',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732640695378',
    'Clouditude Dispensary',
    '4034 Hylan Blvd, Staten Island, NY 10308, USA',
    'Unspecified',
    'Richmond',
    '$500,000',
    1837.05,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732568252124',
    'Collegetown Dispensary',
    '105 Dryden Rd, Ithaca, NY 14850, USA',
    'OCM-RETL-24-000074',
    'Tompkins',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737739726387',
    'CONBUD - Bronx',
    '2412 Third Ave, Bronx, NY 10454, USA',
    'OCM-CAURD-24-000083',
    'Bronx',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1707604678714',
    'CONBUD - Delancey Street',
    '85 Delancey St, New York, NY 10002, USA',
    'OCM-CAURD-23-000021',
    'New York',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1734975169453',
    'ConBud - Gerard Avenue',
    '888 Gerard Ave, Bronx, NY 10452, USA',
    'OCM-CAURD-24-000220',
    'Bronx',
    '$250,000',
    1334.61,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1733170727608',
    'Coney Island Cannabis',
    '875 Neptune Ave, Brooklyn, NY 11224, USA',
    'Unspecified',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738348353812',
    'Cotton Mouth Dispensary - Binghamton',
    '439 Court St, Binghamton, NY 13904, USA',
    'OCM-CAURD-25-000227',
    'Broome',
    '0',
    4298.75,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706282721958',
    'County Road Cannabis - New Hampton',
    '1326 County Rd 12, New Hampton, NY 10958, USA',
    'OCM-RETL-24-000059',
    'Kings',
    '$1,000,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543338684',
    'Culture Cannabis Co - Corning',
    '90 E Market St, Corning, NY 14830, USA',
    'OCM-CAURD-24-000221',
    'Steuben',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731959351975',
    'Culture House NYC',
    '958 6th Ave, New York, NY 10001, USA',
    'OCM-CAURD-24-000049',
    'New York',
    '$1,250,000',
    9558,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706300461404',
    'Curaleaf - Hudson Valley',
    '8 N Plank Rd, Newburgh, NY 12550, USA',
    'MM1002D',
    'Orange',
    '$1,500,000',
    2553.65,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714416273455',
    'Curaleaf - Plattsburgh',
    '345 Cornelia St, Plattsburgh, NY 12901, USA',
    'MM1003D',
    'Clinton',
    '$500,000',
    239.23,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715958400486',
    'Curaleaf - Queens',
    '107-18 70th Rd, Queens, NY 11375, USA',
    'MM1004D',
    'Queens',
    '$750,000',
    678.56,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1723229337160',
    'Cussin''s Cannabis',
    '2075 Central Ave, Schenectady, NY 12304, USA',
    'OCM-CAURD-24-000164',
    'Schenectady',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1735922327339',
    'Dagmar Cannabis - West Broadway',
    '412 W Broadway, New York, NY 10012, USA',
    'OCM-CAURD-23-000029',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1720205914750',
    'Dank 716',
    '501 Main St, Buffalo, NY 14203, USA',
    'OCM-CAURD-23-000017',
    'Erie',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712345573813',
    'Dazed - Union Square West',
    '33 Union Square W, New York, NY 10003, USA',
    'OCM-CAURD-23-000008',
    'New York',
    '$1,000,000',
    414.01,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1724440572269',
    'Devils Lettuce - Buffalo',
    '650 Orchard Park Rd, West Seneca, NY 14224, USA',
    'OCM-CAURD-24-000090',
    'Erie',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1729280369658',
    'Diamond Tree - Syracuse',
    '2700 Erie Blvd E, Syracuse, NY 13224, USA',
    'OCM-CAURD-24-000159',
    'Onondaga',
    '$250,000',
    146.88,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1713558408153',
    'Domes Dispensary',
    '268 Forest Hill Dr, Kingston, NY 12401, USA',
    'OCM-RETL-24-000066',
    'Ulster',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1734972229074',
    'Dosha Farms',
    '76 Main St, Oneonta, NY 13820, USA',
    'OCM-CAURD-23-000019',
    'Ostego',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1704485375531',
    'Dream Daze - Depew',
    '5100 Transit Rd, Depew, NY 14043, USA',
    'OCM-RETL-24-000156',
    'Erie',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1708103288912',
    'Dryden Dispensary',
    '2207 Dryden Rd, Dryden, NY 13053, USA',
    'OCM-RETL-24-000009',
    'Tompkins',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728330185748',
    'Dynasty Commodities Inc',
    '2119 Frederick Douglass Blvd, Manhattan, NY 10026, USA',
    'Unspecified',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1729280364508',
    'East Leaf Dispensary',
    '2442 Clinton St, Buffalo, NY 14224, USA',
    'OCM-CAURD-24-000093',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Electric City Cannabis',
    '1354 Lower Broadway, Schenectady, NY 12306, USA',
    'OCM-RETL-24-000130',
    'Schenectady',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1735328450892',
    'Elevate ADK - Saranac Lake',
    '622 Lake Flower Ave, Saranac Lake, NY 12983, USA',
    'OCM-CAURD-23-000022',
    'essex',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1709914302735',
    'Elevate Cannabis Dispensary',
    '127 S Terrace Ave, Mt Vernon, NY 10550, USA',
    'OCM-CAURD-23-000030',
    'Westchester',
    '$750,000',
    3036.26,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731958613042',
    'Elevation HQ NYC',
    '701 8th Avenue, Manhattan, NY 10036, USA',
    'OCM-CAURD-24-000205',
    'New York',
    '$1,250,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1734452230824',
    'Etain - Kingston',
    '445 Onteora Trail, Kingston, NY 12401, USA',
    'MM0403D',
    'Ulster',
    '$250,000',
    1354.46,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1733510397032',
    'Etain - Manhattan',
    '242 E 58th St, New York, NY 10022, USA',
    'MM0407D',
    'New York',
    '$500,000',
    1589.63,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728660062022',
    'Etain - Syracuse',
    '2140 Erie Blvd E, Syracuse, NY 13224, USA',
    'MM0405D',
    'Onondaga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731718021221',
    'Etain - White Plains',
    '55 Main St, Yonkers, NY 10701, USA',
    'MM0408D',
    'Westchester',
    '$250,000',
    2869.05,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Ether Cannabis - Buffalo',
    '5100 Genesee St, Buffalo, NY 14225, USA',
    'OCM-CAURD-24-000098',
    'Erie',
    '$500,000',
    2215.65,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1696619939499',
    'Evergreen Retail - Brockport',
    '51 N Main St, Brockport, NY 14420, USA',
    'OCM-CAURD-24-000113',
    'Monroe',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1673631023265',
    'Evexia Cannabis',
    '217 Guideboard Rd, Halfmoon, NY 12065, USA',
    'OCM-CAURD-24-000141',
    'Saratoga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Exit 31 Exotic',
    '255 Genesee St, Utica, NY 13502, USA',
    'OCM-CAURD-24-000076',
    'Oneida',
    '$750,000',
    3649.19,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738343092539',
    'Farmers Choice - Fishkill',
    '18 Westage Dr Suite 7, Fishkill, NY 12524, USA',
    'OCM-RETL-24-000045',
    'Dutchess',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1710524538810',
    'FingerLakes Cannabis Company CGS',
    '5 Railroad St, Victor, NY 14564, USA',
    'OCM-CAURD-24-000199',
    'Monroe',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1674856045580',
    'Fireleaf - Brooklyn',
    '2102 Ralph Ave, Brooklyn, NY 11234, USA',
    'OCM-CAURD-24-000196',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'FISHKILL CANNABIS',
    '814 Route 52, Fishkill, NY 12524, USA',
    'OCM-CAURD-24-000109',
    'Dutchess',
    '$500,000',
    4548.71,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1710523667085',
    'Flōr De Fred - Ozone Park',
    '96-05 Liberty Ave, Jamaica, NY 11417, USA',
    'OCM-CAURD-24-000154',
    'Queens',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1709304062869',
    'Flower City - Main',
    '8053 Pittsford Victor Rd, Victor, NY 14564, USA',
    'OCM-CAURD-24-000218',
    'Monroe',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1674489229151',
    'Flower Power Dispensers - New York',
    '22 W 66th St, New York, NY 10023, USA',
    'OCM-CAURD-24-000101',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731718024327',
    'Flynnstoned Cannabis Company',
    '219 Walton St, Syracuse, NY 13202, USA',
    'OCM-CAURD-23-000010',
    'Onondaga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1683409296173',
    'Frass Box Cannabis',
    '3633 Kingsbridge Ave, Bronx, NY 10463, USA',
    'OCM-CAURD-24-000165',
    'Bronx',
    '$500,000',
    726.72,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1742569904108',
    'Freshly Baked NYC',
    '2375 Arthur Ave, Bronx, NY 10458, USA',
    'OCM-CAURD-24-000137,OCM-AUCR-TD-P24063',
    'Bronx',
    '$500,000',
    1584.31,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1692405791161',
    'Gaea’s Garden',
    '134-24 Northern Blvd, Flushing, NY 11354, USA',
    'OCM-MICR-24-000030',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738346589310',
    'Gas Monkeyz - Salamanca',
    '77 Central Ave, Salamanca, NY 14779, USA',
    'Unspecified',
    'Cattaraugus',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714757321428',
    'Goldleaf Cannabis - Hudson',
    '235 Fairview Ave, Hudson, NY 12534, USA',
    'OCM-HMPR-25-10605,OCM-RETL-24-000044',
    'Columbia',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1745022065509',
    'Good Grades - Jamaica',
    '162-03 Jamaica Ave, Queens, NY 11432, USA',
    'OCM-CAURD-23-000007',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1720809083126',
    'Good Life Collective - Rochester',
    '155 Monroe Ave, Rochester, NY 14607, USA',
    'OCM-CAURD-24-000055',
    'Monroe',
    '$1,000,000',
    1395.34,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1708113592392',
    'Gotham - 3rd St',
    '3 E 3rd St, New York, NY 10003, USA',
    'OCM-CAURD-23-000009',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1727114568910',
    'Gotham - Chelsea',
    '146 10th Ave, New York, NY 10011, USA',
    '194749107,CGR25237',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738950509225',
    'Gotham - Hudson Valley',
    '260 Warren St, Hudson, NY 12534, USA',
    'OCM-CAURD-24-000197',
    'Columbia',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1705692746585',
    'Gotham - Williamsburg',
    '296 Kent Ave, Brooklyn, NY 11249, USA',
    'OCM-CAURD-2022-000715',
    'Kings',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1716738560986',
    'Gotham Buds - Harlem',
    '248 W 125th St, New York, NY 10027, USA',
    'OCM-CAURD-23-000023',
    'New York',
    '$750,000',
    7210.01,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1697469850702',
    'Grass and Goodness',
    '1650 Crane St, Schenectady, NY 12303, USA',
    'OCM-RETL-24-000138',
    'Schenectady',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Green Apple Distributors - Brooklyn',
    '572 Manhattan Ave, Brooklyn, NY 11222, USA',
    'OCM-RETL-24-000266',
    'Kings',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1680400700984',
    'Green Flower Wellness - New Floral Park',
    '270-01 Hillside Ave, Queens, NY 11040, USA',
    'OCM-RETL-24-000233',
    'Queens',
    '$250,000',
    1672.17,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1717173938232',
    'Green Flower Wellness - Oakland Gardens',
    '214-24 73rd Ave, Oakland Gardens, NY 11364, USA',
    'OCM-RETL-24-000064',
    'Queens',
    '$500,000',
    1011.61,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715964170055',
    'Green Genius NYC',
    '214 3rd Ave, New York, NY 10003, USA',
    'OCM-CAURD-24-000166',
    'New York',
    '$500,000',
    3001.32,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715371782434',
    'Green Philosophy 716 - West Seneca',
    '101 Slade Ave, West Seneca, NY 14224, USA',
    'OCM-RETL-24-000116',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1721425426092',
    'Greenery Spot',
    '246 Main St, Johnson City, NY 13790, USA',
    'OCM-CAURD-23-000013',
    'Broome',
    '$750,000',
    1213.92,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1699037534987',
    'Grounded - Poughkeepsie',
    '3665 Albany Post Road, Poughkeepsie, NY 12601, USA',
    'OCM-CAURD-24-000097',
    'Dutchess',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1743781926628',
    'Grow Together - Brooklyn',
    '2370 Coney Island Ave, Brooklyn, NY 11223, USA',
    'OCM-CAURD-23-000034',
    'Kings',
    '$500,000',
    1632.6,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730216659160',
    'Guardian Wellness',
    '2500 Arthur Ave, Bronx, NY 10458, USA',
    'Unspecified',
    'Bronx',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1640599530665',
    'Happy Days Dispensary',
    '105 Route 109, Farmingdale, NY 11735, USA',
    'OCM-CAURD-23-000035',
    'Nassau',
    '$3,000,000+',
    12913.82,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1733167235104',
    'Happy Leaf Cannabis - Buffalo',
    '2760 Union Rd, Cheektowaga, NY 14227, USA',
    'OCM-RETL-24-000206',
    'Erie',
    '$250,000',
    160.74,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1704488745032',
    'Happy Munkey - Dyckman',
    '151 Dyckman St, New York, NY 10034, USA',
    'OCM-CAURD-24-000176',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Happy Munkey - Fulton Street',
    '453 Fulton St, Brooklyn, NY 11201, USA',
    'OCM-CAURD-24-000079',
    'Kings',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1742238376191',
    'Happy Times Cannabis Co',
    '3807 Harlem Rd, Buffalo, NY 14215, USA',
    'OCM-RETL-24-000082',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1745022073740',
    'Happy Times Cannabis Co - Niagara Falls',
    '7560 Niagara Falls BLVD, Niagara Falls, NY 14304, USA',
    'OCM-RETL-24-000245',
    'Niagara',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726251196234',
    'Hazy Daze',
    '332 Broad St, Waverly, NY 13743, USA',
    'OCM-RETL-24-000160',
    'Tioga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1720205912700',
    'Hells Kitchen Cannabis Company',
    '356 W 40th St, New York, NY 10018, USA',
    'OCM-MICR-24-000069,OCM-PROC-24-000229',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728330178891',
    'Herb-Z',
    '109 E Taft Rd, North Syracuse, NY 13212, USA',
    'OCM-CAURD-24-000172',
    'Onondaga',
    '$1,000,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Herbal - Woodstock',
    '17 Tinker St, Woodstock, NY 12498, USA',
    'OCM-HMPR-25-10122,OCM-RETL-24-000112',
    'Ulster',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1659120872253',
    'Herbal IQ - Depew',
    '6055 Transit Rd, Depew, NY 14043, USA',
    'OCM-CAURD-23-000018',
    'Erie',
    '$750,000',
    10906.84,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1711729232191',
    'Herbology',
    '304 Ellery St, Brooklyn, NY 11206, USA',
    'OCM-CAURD-24-000177',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1729280360408',
    'Herbwell - Bronx',
    '372 E Fordham Rd, Bronx, NY 10458, USA',
    'OCM-RETL-24-000154',
    'Bronx',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726251202349',
    'Herbwell Weed Dispensary Manhattan - Madison Ave',
    '519 Madison Ave, New York, NY 10022, USA',
    'OCM-RETL-24-000260',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1677868309296',
    'Hibernica - Pelham Bay',
    '3220 Westchester Ave, Bronx, NY 10461, USA',
    'OCM-CAURD-24-000131',
    'Bronx',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1681763750113',
    'High Peaks Canna - Rec',
    '137 Maple Ave, Saratoga Springs, NY 12866, USA',
    'OCM-CAURD-24-000189',
    'Saratoga',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'High Points Dispensary',
    '811 Canandaigua Rd, Geneva, NY 14456, USA',
    'OCM-CAURD-24-000086',
    'Ontario',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1708709268521',
    'High Society Dispensary - Hudson Falls',
    '345 Main St, Hudson Falls, NY 12839, USA',
    'OCM-CAURD-24-000171',
    'Washington',
    '$500,000',
    825.7,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1736542197066',
    'High Stone - Delivery only',
    '1938 Clove Rd, Staten Island, NY 10304, USA',
    'OCM-CAURD-24-000185',
    'Richmond',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1656100638877',
    'High Tide',
    '1829 Como Park Blvd, Lancaster, NY 14086, USA',
    'OCM-RETL-24-000122',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1688156541274',
    'Higher Tolerance Cannabis Dispensary',
    '121 S Pearl St, Albany, NY 12207, USA',
    'OCM-CAURD-24-000054',
    'Albany',
    '$250,000',
    654.74,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Highlife Health',
    '17 Huguenot St, New Rochelle, NY 10801, USA',
    'OCM-RETL-24-000076',
    'Westchester',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738950510452',
    'Highstone NYC',
    '1938 Clove Rd, Staten Island, NY 10304, USA',
    'OCM-CAURD-24-000185',
    'Richmond',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1717874951443',
    'Hii Cannabis Dispensary',
    '152 Bedford Ave, Brooklyn, NY 11249, USA',
    'OCM-CAURD-24-000102',
    'Kings',
    '$750,000',
    2698.66,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731358351992',
    'Hold Up Roll Up',
    '196 Washington Ave, Albany, NY 12210, USA',
    'CAURDP - 2023 - 000140,OCM-CAURD-24-000135',
    'Albany',
    '$250,000',
    1374.81,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Honey Kenmore - Nickel City Green LLC',
    '2981 Delaware Ave, Kenmore, NY 14217, USA',
    'OCM-CAURD-24-000066',
    'Erie',
    '$750,000',
    5665.27,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726265838864',
    'House of Strains - Flushing',
    '16105 29th Ave, Flushing, NY 11358, USA',
    'OCM-CAURD-24-000123',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Housing Works - Broadway',
    '750 Broadway, New York, NY 10003, USA',
    'OCM-CAURD-22-000001',
    'New York',
    '$1,250,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1697466924987',
    'Housing Works Cannabis Co - NOMAD',
    '846 6th Ave, New York, NY 10001, USA',
    'OCM-CAURD-24-000225',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1703870897748',
    'Hush - Bronx',
    '2460 Williamsbridge Rd, Bronx, NY 10469, USA',
    'OCM-CAURD-23-000026',
    'Bronx',
    '$750,000',
    1065.16,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Indoor Treez',
    '584 8th Ave, New York, NY 10018, USA',
    'OCM-CAURD-24-000120',
    'New York',
    '$1,250,000',
    9773.66,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1721412224379',
    'Joe''s Buds',
    '4658 Onondaga Blvd, Syracuse, NY 13219, USA',
    'OCM-CAURD-24-000134',
    'Onondaga',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1694199654634',
    'Joint Jungle',
    '187 Mill St, Liberty, NY 12754, USA',
    'OCM-RETL-24-000148',
    'Sullivan',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715964169424',
    'Jungle Kingdom Flower Company',
    '515 Nostrand Ave, Brooklyn, NY 11216, USA',
    'OCM-RETL-24-000088',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712358004162',
    'Just A Little Higher - Briarwood',
    '138-72 Queens Blvd, Jamaica, NY 11435, USA',
    'MM0602D,OCM-CAURD-25-000233',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728330177876',
    'Just A Little Higher - Murray Hill',
    '698 2nd Ave, New York, NY 10016, USA',
    'OCM-CAURD-24-000156',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722031536393',
    'Just A Little Higher - West Side',
    '157 W 72nd St, New York, NY 10023, USA',
    'OCM-CAURD-24-000136',
    'New York',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712357999030',
    'Just Breathe - Binghamton',
    '75 Court St, Binghamton, NY 13901, USA',
    'OCM-CAURD-23-000004',
    'Broome',
    '$500,000',
    390.59,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738952541160',
    'Just Breathe - Syracuse',
    '185 W Seneca St, Manlius, NY 13104, USA',
    'OCM-RETL-24-000065',
    'Onondaga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706282724000',
    'Just Breathe CGS Finger Lakes',
    '2988 Auburn Rd, Tyre, NY 13148, USA',
    'OCM-PROC-24-000128,OCM-DIST-25-000146,OCM-CAURD-24-000110',
    'Seneca',
    '$250,000',
    992.83,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1741972227333',
    'Kaya Bliss Dispensary',
    '8412 3rd Ave, Brooklyn, NY 11209, USA',
    'OCM-CAURD-24-000211',
    'Richmond',
    '$250,000',
    65.25,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1742572630612',
    'Kings House Of Fire - Peekskill',
    '3006 E Main St, Cortlandt, NY 10567, USA',
    'OCM-CAURD-24-000104',
    'Westchester',
    '$1,000,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730497900475',
    'KushKlub NYC',
    '186 Orchard St, New York, NY 10002, USA',
    'OCM-RETL-24-000061',
    'New York',
    '$250,000',
    34.93,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1692991755450',
    'KushMart - Brooklyn',
    '1413 Kings Hwy, Brooklyn, NY 11229, USA',
    'OCM-CAURD-24-000219',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728401196282',
    'Late Bloomers - Queens',
    '57-01 Myrtle Ave, Flushing, NY 11385, USA',
    'OCM-CAURD-24-000074',
    'Queens',
    '$250,000',
    2052.79,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Leaf Plug - Amherst',
    '3341 Sheridan Dr, Buffalo, NY 14226, USA',
    'OCM-RETL-24-000010',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1698081988280',
    'Leafy Peaks',
    '27 Saratoga Ave, Waterford, NY 12188, USA',
    'OCM-CAURD-24-000099',
    'Saratoga',
    '$500,000',
    5359.05,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706296206072',
    'Leafy Wonders',
    '956 S 1st St, Fulton, NY 13069, USA',
    'OCM-CAURD-24-000139',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1703276021647',
    'Legacy Dispensary - Colonie',
    '1839 Central Ave, Colonie, NY 12205, USA',
    'OCM-CAURD-24-000058',
    'Albany',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1683918194529',
    'Lenox Hill Cannabis Co - New York',
    '334 E 73rd St, New York, NY 10021, USA',
    'OCM-CAURD-23-000038',
    'New York',
    '$1,000,000',
    1465.46,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1743184220842',
    'Liberty Buds',
    '1115 1st Ave., New York, NY 10065, USA',
    'OCM-CAURD-24-000075',
    'New York',
    '$750,000',
    5794.52,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1677866098354',
    'Lifted Cannabis Dispensary',
    '320 N Main St, Jamestown, NY 14701, USA',
    'OCM-RETL-24-000140',
    'Chautauqua',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Little Beach Harvest',
    '56 Montauk Highway, Southampton, NY 11968, USA',
    'OCM-CAURD-24-000215',
    'Suffolk',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712358010277',
    'Long Island Cannabis Club',
    '94 E Industry Ct, Deer Park, NY 11729, USA',
    'OCM-CAURD-23-000012',
    'Suffolk',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1681779616288',
    'LotusWorks Wellness - Beacon',
    '261 Main St, Beacon, NY 12508, USA',
    'OCM-MICR-24-000017',
    'Dutchess',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Loudpack Exotics',
    '6606 Kinne Rd, Syracuse, NY 13214, USA',
    'OCM-CAURD-24-000117',
    'Onondaga',
    '$500,000',
    2358.05,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1672163516820',
    'Lucky Green Ladies - Kingston',
    '365 S Wall St, Kingston, NY 12401, USA',
    'OCM-CAURD-25-000235',
    'Ulster',
    '$250,000',
    3015.11,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722611202067',
    'Mammoth Cannabis',
    '212 Ohio St, Buffalo, NY 14204, USA',
    'OCM-RETL-24-000118',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725374304002',
    'Mary Jane''s: A Legacy to Legal Dispensary',
    '2179 Sheridan Dr, Tonawanda, NY 14223, USA',
    'OCM-CAURD-24-000115',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1744389296621',
    'Matawana',
    '533 5th Ave, Brooklyn, NY 11215, USA',
    'OCM-CAURD-24-000071',
    'Kings',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714405276949',
    'Midnight Moon - New York',
    '1536 Amsterdam Ave Store 2, New York, NY 10031, USA',
    'OCM-RETL-24-000048',
    'New York',
    '$250,000',
    2869.77,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1676665881168',
    'Mighty Lucky',
    '259 Bowery, New York, NY 10002, USA',
    'OCM-CAURD-24-000065',
    'New York',
    '$500,000',
    2670.7,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731867287676',
    'Misfits Dispensary',
    '420 Jefferson Rd, Rochester, NY 14623, USA',
    'OCM-RETL-24-000079',
    'Monroe',
    '$250,000',
    252.25,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714759016934',
    'Misha''s Flower Shop',
    '299 Knickerbocker Ave, Brooklyn, NY 11237, USA',
    'OCM-CAURD-24-000094',
    'Kings',
    '$750,000',
    647.06,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715973019893',
    'Mister Greens',
    '81 Wolf Rd, Albany, NY 12205, USA',
    'OCM-CAURD-24-000192',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730132647498',
    'MJ Dispensary 585',
    '900 Jefferson Rd, Rochester, NY 14623, USA',
    'OCM-CAURD-23-000024',
    'Monroe',
    '$1,250,000',
    1515.58,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702924828021',
    'Mr Good Vybz - Albany',
    '25 N Pearl St, Albany, NY 12207, USA',
    'OCM-CAURD-24-000107',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712338708239',
    'Munchies Dispensary NY',
    '8701 Rockaway Beach Blvd, Far Rockaway, NY 11693, USA',
    'OCM-CAURD-24-000203',
    'Queens',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726251200302',
    'My Bud 420',
    '1798 E Tremont Ave, Bronx, NY 10460, USA',
    'OCM-RETL-24-000008',
    'Bronx',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1713559176511',
    'Native Haze',
    '1503 Canandaigua Rd, Macedon, NY 14502, USA',
    'OCM-CAURD-24-000128',
    'Wayne',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1701457379855',
    'New Amsterdam',
    '245 W 14th St, New York, NY 10011, USA',
    'OCM-RETL-25-000283',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1719266447706',
    'New Metro Recreational Cannabis Dispensary',
    '221-50 Horace Harding Expressway, Bayside, NY 11364, USA',
    'OCM-CAURD-24-000061',
    'Queens',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1745022068586',
    'Nice Yield - Long Island City',
    '10-50 Jackson Ave, Long Island City, NY 11101, USA',
    'OCM-CAURD-25-000249',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732568253314',
    'Nicklz',
    '797 8th Ave, New York, NY 10019, USA',
    'OCM-CAURD-24-000151',
    'New York',
    '$500,000',
    3032.79,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1719603793482',
    'Northern Lights Dispensary',
    '51 Main St, Canton, NY 13617, USA',
    'OCM-RETL-24-000054',
    'St. Lawrence',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Northern Lights NY',
    '100 Broadway, Menands, NY 12204, USA',
    'OCM-CAURD-24-000059',
    'Albany',
    '$500,000',
    3115.77,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1672163514151',
    'NUG Yonkers',
    '2371 Central Park Ave, Yonkers, NY 10710, USA',
    'OCM-CAURD-24-000163',
    'Westchester',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712589564792',
    'NugHub NY',
    '1350 Forest Ave, Staten Island, NY 10302, USA',
    'OCM-CAURD-24-000183',
    'Richmond',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1733170725577',
    'Nuna Harvest',
    '696 Locust St, Fleetwood, NY 10552, USA',
    'OCM-CAURD-24-000140',
    'Westchester',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725649494564',
    'NY Canna Co - 5th Ave',
    '743 9th Ave, New York, NY 10019, USA',
    'OCM-RETL-24-000147',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1672163517846',
    'NY Cannabis Co',
    '743 9th Ave, New York, NY 10019, USA',
    'OCM-RETL-24-000178',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730916715387',
    'NY Elite Cannabis',
    '42-15 Bell Blvd, Bayside, NY 11361, USA',
    'OCM-CAURD-24-000153',
    'Queens',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1734973542238',
    'NYCCE - New York City Cannabis Exchange',
    '248-09 Jericho Turnpike, Queens, NY 11426, USA',
    'OCM-CAURD-24-000047',
    'Queens',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738348353102',
    'OC Dispensary - Brooklyn',
    '769 Franklin Ave, Brooklyn, NY 11238, USA',
    'OCM-CAURD-25-000229',
    'Kings',
    '$250,000',
    3688.8,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1714753819066',
    'Orange County Cannabis - Waywayanda',
    '1308 Dolsontown Rd, Middletown, NY 10940, USA',
    'OCM-CAURD-23-000039',
    'Orange',
    '$1,250,000',
    9760.37,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1703282744099',
    'P. NUGGS - Malone',
    '4171 Route 11, Malone, NY 12953, USA',
    'OCM-CAURD-24-000053',
    'Franklin',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1739556249513',
    'Peace Love and Bud - Lockport',
    '320 S Transit St, Lockport, NY 14094, USA',
    'OCM-RETL-24-000052',
    'Niagara',
    '$250,000',
    2301.64,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725041370927',
    'Phenos - Buffalo',
    '69 Allen St, Buffalo, NY 14201, USA',
    'OCM-MICR-24-000027',
    'Erie',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715371781777',
    'Planet Nugg',
    '2043 Wellwood Ave, Farmingdale, NY 11735, USA',
    'OCM-CAURD-24-000069',
    'Nassau',
    '$1,250,000',
    430.55,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1673030613689',
    'Platinum Leaf - Rock Hill',
    '196 Rock Hill Dr, Rock Hill, NY 12775, USA',
    'OCM-CAURD-24-000108',
    'Sullivan',
    '$250,000',
    5658.49,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1711134265755',
    'Polanco Brothers - Ridgewood',
    '6633 Fresh Pond Rd, Ridgewood, NY 11385, USA',
    'OCM-RETL-24-000075',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1713559174462',
    'Premier Earth',
    '1297 Hertel Ave, Buffalo, NY 14216, USA',
    'OCM-CAURD-23-000027',
    'Erie',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1705683313999',
    'Public Flower',
    '232 Allen St, Buffalo, NY 14201, USA',
    'OCM-CAURD-24-000068',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1700862443197',
    'Puro Vita - Brooklyn',
    '288 Flushing Ave, Brooklyn, NY 11205, USA',
    'OCM-CAURD-24-000073',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1707511535155',
    'Purple Plains',
    '32 Westchester Ave, Pound Ridge, NY 10576, USA',
    'OCM-CAURD-24-000119',
    'Westchester',
    '$750,000',
    7805.99,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1704487563514',
    'Q Dispensary',
    '733 Flatbush Ave, Brooklyn, NY 11226, USA',
    'OCM-RETL-24-000011',
    'Kings',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Quality Control NY',
    '3169 Coney Island Ave, Brooklyn, NY 11235, USA',
    'OCM-RETL-24-000144',
    'Kings',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1724464215765',
    'QUBE Cannabis Dispensary - New York',
    '1412 Broadway, New York, NY 10018, USA',
    'OCM-CAURD-24-000127',
    'New York',
    '$1,000,000',
    950.22,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738950512502',
    'Raven''s Joint',
    '4106 NY-31, Clay, NY 13041, USA',
    'OCM-CAURD-24-000081',
    'Onondaga',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702660767430',
    'Reef Cannabis Dispensary',
    '2532 Route 9N, Greenfield Center, NY 12833, USA',
    'OCM-CAURD-24-000190',
    'Saratoga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726860151660',
    'Ripe Cannabis',
    '245 Broadway, Schenectady, NY 12305, USA',
    'OCMMICR-2023-000308',
    'Schenectady',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543340381',
    'RISE Dispensary - Clifton Park',
    '1675 Route 9, Clifton Park, NY 12065, USA',
    'MM0705D',
    'Saratoga',
    '$1,250,000',
    1679.39,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730497899290',
    'RISE Dispensary - Henrietta',
    '1150 University Ave, Rochester, NY 14607, USA',
    'MM0706D,MM0704D',
    'Monroe',
    '$1,500,000',
    3729.3,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1721157645042',
    'RISE Dispensary - Manhattan',
    '2 E 30th St, New York, NY 10016, USA',
    'MM0702D',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715958400800',
    'Riverbend Dispensary - Hudson',
    '531 Warren St, Hudson, NY 12534, USA',
    'OCM-CAURD-24-000078',
    'Columbia',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1728397650955',
    'RNR Dispensary',
    '287 Harrison Pl, Brooklyn, NY 11237, USA',
    'OCM-CAURD-24-000207',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1684774963447',
    'Robinson''s Dispensary - Albany',
    '106 Everett Rd, Albany, NY 12205, USA',
    'OCM-CAURD-24-000161',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Rochester''s Finest',
    '74 Lake Ave, Rochester, NY 14608, USA',
    'OCM-RETL-24-000080',
    'Monroe',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1726251194986',
    'Root 9 Dispensary',
    '1546 Route 9, Wappingers Falls, NY 12590, USA',
    'OCM-CAURD-24-000195',
    'Dutchess',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1745022070637',
    'Royal Blend Dispensary',
    '2223 Route 32, Kingston, NY 12401, USA',
    'OCM-CAURD-24-000179',
    'Ulster',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1718381436357',
    'Royale Flower - Albany',
    '332 Northern Blvd, Albany, NY 12204, USA',
    'OCM-CAURD-24-000056',
    'Albany',
    '$750,000',
    2378.08,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1625749250135',
    'RR Legacy - New York',
    '12 Hudson Ave, Glens Falls, NY 12801, USA',
    'OCM-RETL-24-000142',
    'Warren',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706900154884',
    'Sacred Bloom - Vestal',
    '1308 Vestal Pkwy E, Vestal, NY 13850, USA',
    'OCM-CAURD-23-000014',
    'Broome',
    '$1,250,000',
    12399.64,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1727706084738',
    'Salmon River Cannabis Company',
    '3808 Route 13, Pulaski, NY 13142, USA',
    'Unspecified',
    'Oswego',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1692053359215',
    'Sashies Dispensary',
    '201 Northline Rd, Ballston Spa, NY 12020, USA',
    'OCM-RETL-24-000172',
    'Saratoga',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1734121488031',
    'Secret Garden 716',
    '1363 Delaware Ave, Buffalo, NY 14209, USA',
    'OCM-CAURD-24-000160',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730831331178',
    'Sesh NYC - Bronx',
    '4219 Webster Ave, Bronx, NY 10470, USA',
    'OCM-CAURD-24-000144',
    'Bronx',
    '$750,000',
    4303.21,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1716738546513',
    'SessCo Cannabis',
    '115 Main st, East Rochester, NY 14445, USA',
    'Unspecified',
    'Monroe',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1719328438470',
    'Silk Road NYC',
    '166-30 Jamaica Ave, Queens, NY 11432, USA',
    'OCM-CAURD-24-000062',
    'Queens',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Silver Therapeutics - Albany',
    '10 Executive Park Dr, Albany, NY 12203, USA',
    'MM0104D,MM0108D',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1704488746050',
    'Silver Therapeutics - Saratoga Springs',
    '75 Weibel Ave, Saratoga Springs, NY 12866, USA',
    'OCM-RETL-24-000101',
    'Saratoga',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732640693328',
    'Smacked Village',
    '144 Bleecker St, New York, NY 10012, USA',
    'OCM-CAURD-23-000002',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702662089527',
    'Smiley Exotics',
    '201 E 30th St, New York, NY 10016, USA',
    'OCM-CAURD-24-000096',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1703281926558',
    'Smokey Paradise - East Greenbush',
    '574 Columbia Turnpike, East Greenbush, New York, USA',
    'OCM-RETL-24-000139',
    'Rensselaer',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1711729238346',
    'Smoking Scholars',
    '784 Allerton Ave, Bronx, NY 10467, USA',
    'OCM-CAURD-24-000200',
    'Bronx',
    '$250,000',
    384.77,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715610089090',
    'Society House - Brooklyn',
    '2441 Flatbush Ave, Brooklyn, NY 11234, USA',
    'OCM-CAURD-24-000162',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1715454915993',
    'SOFACLUB CANNABIS',
    '229 Avenue B, New York, NY 10009, USA',
    'OCM-CAURD-24-000182',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737144783054',
    'Soulmate - DeKalb Ave',
    '237 DeKalb Ave, Brooklyn, NY 11205, USA',
    'OCM-RETL-24-000241',
    'Kings',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543341395',
    'Sparkboro',
    '704 W 177th St, New York, NY 10033, USA',
    'OCM-CAURD-24-000149',
    'New York',
    '$500,000',
    756.98,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1742237662670',
    'ST8line Canna Co',
    '1712 US-219, Limestone, NY 14753, USA',
    'Unspecified',
    'Cattaraugus',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1727106030594',
    'Stage One Dispensary - Rensselaer',
    '810 Broadway, Rensselaer, NY 12144, USA',
    'OCM-CAURD-23-000011',
    'Rensselaer',
    '$750,000',
    3940,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1742570653749',
    'Star Buds - Buffalo NY',
    '396 Kenmore Ave, Buffalo, NY 14223, USA',
    'OCM-CAURD-24-000204',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1710530255493',
    'Star Life - White Plains',
    '75 S Broadway, White Plains, NY 10601, USA',
    'OCM-RETL-24-000159',
    'Westchester',
    '$750,000',
    645.49,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Stash Master',
    '1119 Broadway, Brooklyn, NY 11221, USA',
    'OCM-CAURD-24-000217',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1743183386664',
    'State of Mind Dispensary - Latham',
    '521 Troy-Schenectady Rd, Latham, NY 12110, USA',
    'OCM-CAURD-24-000178',
    'Albany',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1705699719465',
    'Stoops NYC Dispensary',
    '182 5th Ave, New York, NY 10010, USA',
    'OCM-CAURD-24-000082',
    'New York',
    '$250,000',
    1739.66,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1717779868628',
    'Strain Stars - Farmingdale',
    '1815 Broadhollow Rd, Farmingdale, NY 11735, USA',
    'OCM-CAURD-23-000016',
    'Nassau',
    '$3,000,000+',
    16950.29,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712591461821',
    'Strain Stars - Riverhead',
    '1871 Old Country Rd, Riverhead, NY 11901, USA',
    'OCM-RETL-24-000223',
    'Suffolk',
    '$1,250,000',
    4633.61,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712341588843',
    'Sunnyside - Hudson Valley',
    '345 Route 304, Bardonia, NY 10954, USA',
    'MM0804D',
    'Rockland',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738349236185',
    'Sunnyside - Huntington',
    '277 Walt Whitman Rd, Huntington Station, NY 11746, USA',
    'MM0803D',
    'Suffolk',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725377819970',
    'Sweetlife - New York',
    '1662 1st Ave, New York, NY 10028, USA',
    'OCM-RETL-24-000107',
    'New York',
    '$500,000',
    3588.92,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1697833036164',
    'Terp Bros - Long Island City',
    '36-10 Ditmars Blvd, Queens, NY 11105, USA',
    'OCM-CAURD-23-000020',
    'Queens',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1711155246122',
    'The Bakery Cannabis Dispensary - Cohoes',
    '1099 Loudon Rd, Cohoes, NY 12047, USA',
    'OCM-CAURD-24-000092',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712609260249',
    'The Cannabis Place - Queens',
    '74-03 Metropolitan Ave, Queens, NY 11379, USA',
    'OCM-CAURD-24-000080',
    'Queens',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Emerald Dispensary - Brooklyn',
    '85 Suydam St, Brooklyn, NY 11221, USA',
    'OCM-CAURD-24-000057',
    'Kings',
    '$500,000',
    265.97,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543342413',
    'The Emerald Dispensary - Manhattan',
    '1190 Lexington Ave, New York, NY 10028, USA',
    'OCM-CAURD-24-000146',
    'New York',
    '$250,000',
    83.77,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543343465',
    'The Firehaus NY',
    '7479 Route 11, Potsdam, NY 13676, USA',
    'OCM-CAURD-23-000031',
    'St. Lawrence',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543347507',
    'The Flowery - Brooklyn',
    '692 Grand St, Brooklyn, NY 11211, USA',
    'OCM-CAURD-24-000158',
    'Kings',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731718022245',
    'The Flowery - Queens',
    '6354 108th St, Forest Hills, NY 11375, USA',
    'OCM-CAURD-24-000186',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY yellow'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1734452234924',
    'The Flowery - Staten Island',
    '3022 Veterans Rd W, Staten Island, NY 10309, USA',
    'OCM-CAURD-23-000041',
    'Richmond',
    '$1,250,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1690589421494',
    'The Flowery - Upper West Side',
    '2465 Broadway, Manhattan, NY 10025, USA',
    'OCM-CAURD-24-000222',
    'New York',
    '$500,000',
    1343.01,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Flowery SoHo (Formerly Elevate Cannabis)',
    '481 Broadway, New York, NY 10013, USA',
    'OCM-CAURD-24-000132',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619408531238',
    'The Grass Hole Cannabis',
    '779 Route 3, Plattsburgh, NY 12901, USA',
    'OCM-CAURD-23-000037',
    'Clinton',
    '$250,000',
    10803.68,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1677263221628',
    'The Green Door Dispensary - Ogdensburg',
    '3748 Route 37, Ogdensburg, NY 13669, USA',
    'OCM-CAURD-24-000050',
    'St. Lawrence',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1677866100395',
    'The Herb Cave - Plattsburgh',
    '519 Route 3, Plattsburgh, NY 12901, USA',
    'OCM-RETL-24-000208',
    'Clinton',
    '$250,000',
    778.78,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Herbal Care - New York',
    '1410 Lexington Ave, New York, NY 10128, USA',
    'OCM-CAURD-23-000036',
    'New York',
    '$500,000',
    3373.38,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722024442306',
    'The Herbal Confectionery''s Weedery - New York',
    '3 Water St, Manhattan, NY 10004, USA',
    'OCM-MICR-24-000010',
    'New York',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1716597933965',
    'The Higher Company',
    '123 East Willow Street, Syracuse, NY 13202, USA',
    'OCM-CAURD-24-000155',
    'Onondaga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732568255363',
    'The Highest Peak - Potsdam',
    '25 Market St, Potsdam, NY 13676, USA',
    'OCM-CAURD-23-000025',
    'St. Lawrence',
    '$250,000',
    710.05,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702923497414',
    'The Highly Connected - Ithaca',
    '423 Franklin St, Ithaca, NY 14850, USA',
    'OCM-CAURD-24-000187',
    'Tompkins',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730829171868',
    'The Kokoro Way',
    '2454 Elmwood Ave, Kenmore, NY 14217, USA',
    'OCM-RETL-24-000135',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712589565814',
    'The People''s Joint',
    '501 State St, Schenectady, NY 12305, USA',
    'OCM-CAURD-24-000181',
    'Schenectady',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731437573257',
    'The Phinest Bud',
    '576 Dick Rd, Depew, NY 14043, USA',
    'OCM-RETL-24-000155',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543344455',
    'The Plant - Yonkers',
    '2595 Central Park Ave, Scarsdale, NY 10583, USA',
    'OCM-CAURD-24-000063',
    'Westchester',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1740416692719',
    'The Plug',
    '428 Rogers Ave, Brooklyn, NY 11225, USA',
    'OCM-CAURD-24-000210',
    'Kings',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1721229790249',
    'The Purple Owl - White Plains',
    '405 Mamaroneck Ave, White Plains, NY 10605, USA',
    'OCM-CAURD-24-000124',
    'Westchester',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1721231975425',
    'The Service -  New York',
    '121 W 27th St, New York, NY 10001, USA',
    'Unspecified',
    'New York',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1724684079876',
    'The Spot Dispensary - Brooklyn',
    '154 Vanderbilt Ave, Brooklyn, NY 11205, USA',
    'OCM-CAURD-24-000051',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1691172222671',
    'The Station Dispensary - Beacon',
    '463 Main St, Beacon, NY 12508, USA',
    'OCM-RETL-24-000259',
    'Dutchess',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1731087344052',
    'The THC Shop - Rosedale',
    '144-144 243rd St, Rosedale, NY 11422, USA',
    'OCM-RETL-24-000027',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1720196126979',
    'The Travel Agency - Downtown Brooklyn',
    '122 Flatbush Ave, Brooklyn, NY 11217, USA',
    'OCM-CAURD-24-000091',
    'Kings',
    '$2,500,000',
    15755.17,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738348358933',
    'The Travel Agency - Fifth Avenue',
    '587 5th Ave, New York, NY 10017, USA',
    'OCM-CAURD-24-000125',
    'New York',
    '$1,250,000',
    6140.78,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722024446407',
    'The Travel Agency - Union Square',
    '62 E 13th St, New York, NY 10003, USA',
    'OCM-CAURD-23-000003',
    'New York',
    '$2,250,000',
    15387.64,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732562777199',
    'The Village Green - New Hartford',
    '12 New Hartford Shopping Center, New Hartford, NY 13413, USA',
    'OCM-RETL-24-000090',
    'Oneida',
    '$250,000',
    5968.51,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1730920389224',
    'THE WEED SHOPPE INC',
    '4906 Arthur Kill Rd, Staten Island, NY 10309, USA',
    'OCM-CAURD-24-000126',
    'Richmond',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1735322883564',
    'Third Rock Cannabis',
    '131 Saratoga Ave, South Glens Falls, NY 12803, USA',
    'Unspecified',
    'Warren',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725124988028',
    'THTree - Coxsackie',
    '12193 Route 9W, Coxsackie, NY 12192, USA',
    'OCM-RETL-24-000031',
    'Greene',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'TJ''s Cannabis Company',
    '4205 Long Branch Road, Liverpool, NY 13090 USA',
    'OCM-CAURD-23-000040',
    'Onondaga',
    '$1,000,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1692399501526',
    'Token Cannabis Dispensary',
    '92-29 Queens Blvd, Queens, NY 11374, USA',
    'OCM-CAURD-25-000231',
    'Queens',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1677866099388',
    'Torches NYC Dispensary',
    '12 E 42nd St, New York, NY 10017, USA',
    'OCM-CAURD-24-000077',
    'New York',
    '$750,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1700246573976',
    'Transcend Wellness - Troy',
    '289 Oakwood Ave, Troy, NY 12182, USA',
    'OCM-CAURD-24-000133',
    'Rensselaer',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1719600582329',
    'TreeHead Culture',
    '665 N French Rd, Buffalo, NY 14228, USA',
    'OCM-CAURD-24-000085',
    'Erie',
    '$500,000',
    8893.54,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Treehouse Cannabis Dispensary - Nyack',
    '28 Route 59, Nyack, NY 10960, USA',
    'OCM-CAURD-24-000122',
    'Rockland',
    '$1,250,000',
    5521.43,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737144779982',
    'Trends Dispensary - Long Island City',
    '27-25 44th Dr, Long Island City, NY 11101, USA',
    'OCM-CAURD-24-000100',
    'Queens',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1709920501098',
    'Twisted Cannabis FLX',
    '501 Exchange St, Geneva, NY 14456, USA',
    'OCM-RETL-24-000053',
    'Ontario',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725649482547',
    'Two Buds - Bronx',
    '696 E 241st St, Bronx, NY 10470, USA',
    'OCM-CAURD-24-000105',
    'Bronx',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737147689764',
    'Upstate Canna Co',
    '1613 Union St, Schenectady, NY 12309, USA',
    'OCM-CAURD-23-000005',
    'Schenectady',
    '$1,250,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706296339346',
    'Upstate Exotics',
    '9200 Niagara Falls Blvd, Niagara Falls, NY 14304, USA',
    'OCM-CAURD-24-000147',
    'Niagara',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1705336448755',
    'Upstate Pines',
    '7345 S Broadway, Red Hook, NY 12571, USA',
    'OCM-RETL-24-000224',
    'Dutchess',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1702052201921',
    'Urban Leaf - New York',
    '977 2nd Ave, New York, NY 10022, USA',
    'OCM-CAURD-24-000121',
    'New York',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1722616905972',
    'Urban Weeds - Astoria',
    '31 Steinway St, Astoria, NY 11103, USA',
    'OCM-CAURD-23-000042',
    'Queens',
    '$500,000',
    1189.24,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1732568254338',
    'Valley Greens',
    '939 Central Ave, Peekskill, NY 10566, USA',
    'OCM-CAURD-24-000138',
    'Westchester',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Vaporize - South Richmond Hill',
    '124-20 Liberty Ave, South Richmond Hill, NY 11419, USA',
    'OCM-RETL-24-000146',
    'Queens',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1689362511279',
    'VedaLeaf',
    '2921 Erie Blvd E, Syracuse, NY 13224, USA',
    'OCM-CAURD-24-000198',
    'Onondaga',
    '$500,000',
    2057.84,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1716738552816',
    'Verdi Cannabis Store - Manhattan',
    '158 W 23rd St, New York, NY 10011, USA',
    'OCM-CAURD-23-000044',
    'New York',
    '$750,000',
    3690.56,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1713559177535',
    'Verilife - Albany',
    '10 Executive Park Dr, Albany, NY 12203, USA',
    'MM0104D,MM0108D',
    'Albany',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1719598508052',
    'Verilife - Amherst North Delivery',
    '25 N Pointe Pkwy, Buffalo, NY 14228, USA',
    'MM0102D',
    'Erie',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1706282725018',
    'Verilife - Buffalo NY',
    '3760 Union Rd, Buffalo, NY 14225, USA',
    'Unspecified',
    'Erie',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1737147693860',
    'Verilife - East Syracuse',
    '642 Old Liverpool Rd, Liverpool, NY 13088, USA',
    'OCM-XROD-23-000002,MM0107D',
    'Onondaga',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1701457378838',
    'Verona Collective - Willow Place',
    '5250 Willow Pl, Verona, NY 13478, USA',
    'Verona Collective | Oneida Indian Nation',
    'Oneida',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1708709288696',
    'Verona Collective – Chittenango',
    '606 Genesee Turnpike, Chittenango, NY 13037, USA',
    'Unspecified',
    'Madison',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1707506335094',
    'Verona Collective – Sherrill',
    '10 E State St, Sherrill, NY 13461, USA',
    'OCM-CAURD-23-000006',
    'Oneida',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1738343089487',
    'Verona Collective – Verona Crossroads',
    '5528 Route 31, Verona, NY 13478, USA',
    'Unspecified',
    'Oneida',
    '$500,000',
    NULL,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1717873172461',
    'Vireo - Queens',
    '55 Queens Blvd #89, Queens, NY 11373, USA',
    'MM0205D',
    'Queens',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1717873170196',
    'Vireo - Queens North Delivery',
    '55 Queens Blvd #89, Queens, NY 11373, USA',
    'MM0204D',
    'Queens',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1619543348525',
    'Vireo - Queens South Delivery',
    '55 Queens Blvd #89, Queens, NY 11373, USA',
    'MM0204D',
    'Queens',
    '0',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1712948805338',
    'Weedside Dispensary - Woodside',
    '50-50 72nd St, Queens, NY 11370, USA',
    'OCM-RETL-24-000046',
    'Queens',
    '$250,000',
    371.93,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1743196343956',
    'White Atmoss Canna - Newburgh',
    '136 Lake St, Newburgh, NY 12550, USA',
    'OCM-RETL-24-000097',
    'Orange',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1721231977480',
    'White Plains Cannabis Growers Showcase - Leafology',
    '244 Main St, White Plains, NY 10601, USA',
    'OCM-CAURD-24-000112',
    'Westchester',
    '$1,000,000',
    NULL,
    'Tier 1',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Wild Flower - Auburn',
    '41 Genesee St, Auburn, NY 13021, USA',
    'OCM-RETL-24-000029',
    'Cayuga',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1699042216430',
    'Wilde Roots Dispensary - Castleton',
    '4179 Route 20, Castleton-On-Hudson, NY 12033, USA',
    'OCM-RETL-24-000081',
    'Rensselaer',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1745006554166',
    'William Jane',
    '115 Park Ave, Binghamton, NY 13903, USA',
    'OCM-CAURD-23-000006',
    'Tompkins',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725649885741',
    'Windy Hill Wellness / Cannabis Dispensary',
    '106 Main St, Greenwich, NY 12834, USA',
    'OCM-RETL-24-000134',
    'Washington',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1719933510634',
    'Woodstock Oasis - Bethel',
    '2166 Route 17B, Bethel, NY 12720, USA',
    'OCM-RETL-24-000150',
    'Sullivan',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1744395006381',
    'Yerba Buena - Brooklyn',
    '292 Atlantic Avenue, Brooklyn, NY 11201, USA',
    'OCM-CAURD-24-000167',
    'Kings',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1725900484828',
    'Yeti Canna - Lackawanna',
    '1385 Abbott Rd, Lackawanna, NY 14218, USA',
    'OCM-RETL-24-000069',
    'Erie',
    '$250,000',
    NULL,
    'Tier 3',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    '1716597934453',
    'ZenZest',
    '2343 Forest Ave, Staten Island, NY 10303, USA',
    'OCM-RETL-24-000099',
    'Richmond',
    '$500,000',
    1438.22,
    'Tier 2',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Altitude Ithaca',
    '1429 Danby Rd',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Beleaf Medford',
    '262 Middle Island Rd',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Blue Forest Farms Dispensary LLC',
    '122 E 25th St.',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Bodega Express',
    '18-39 41st St',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Caffiend (DBA The Bushwick)',
    '892 Wyckoff Ave',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Cannabis Emporium Corp.',
    '2460 Williamsbridge Road, Bronx, NY 10469',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Canterra',
    '275 Cooper Ave. Suite 102 Tonawanda, NY 14150',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Collective High LLC',
    '188 Grand Street',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Command Cannabis Dispensary',
    '3871 South Park ave, Blasdell, NY, United States, New York',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Essential Flowers dba Legacy Dispensers',
    '2 Anderson Dr.',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Exotic Herbals',
    '426 Rogers Ave',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynnstoned (ROC)- State St',
    '125 State St Rochester, NY 14614',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynnstoned Oswego',
    '143 George St Oswego, NY 13126',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynnstoned- Auburn',
    '48 E Genesee St Auburn, NY 13021',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynnstoned- Buffalo',
    '6850 Main St Suite 1 Williamsville, NY 14221',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynnstoned- North Syracuse',
    '3711 Brewerton RdSTE 8-10 North Syracuse, NY 13212',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynnstoned- ROC Ridge Rd',
    '714 W Ridge Rd Rochester, NY 14615',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Greens Greenery',
    '54 State Highway 357',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Happy Goat Dispensary',
    '1330 Mt Hope Ave',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Havana smoke shop 2',
    '2114 John F Kennedy BlvdUnion City, NJ 07087United States',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'HerbalWai',
    '6970 Transit Road Williamsville, NY 14221',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Herbarium',
    '465 Onderdonk Ave.',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Holy Buds',
    '165A Marine Street',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Housing Works',
    '126 Crosby Street',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Hydrophonics Cannabis Dispensary',
    '670 Old Willets Path',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Ignyte - Brooklyn',
    '387 Van Brunt St.',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Ignyte - Queens',
    '14518 14th Ave',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Just a Little Higher-Queens-Delivery Only',
    '11303 Sutphin Blvd',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Key Foods',
    '991 Fulton St, Brooklyn, NY 11238',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Luxus Botanica',
    '8234 Turin Rd, Ste 1',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Madame Jane Dispensary',
    '102 State Street',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Mango Cannabis',
    '3553 West Henrietta Road',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Mello Tymes',
    '2572 Wallace Ave. Bronx, NY 10467',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'No Name CannBis',
    '137 4th St',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'NYC BUD',
    '4445 Vernon Blvd, Long Island City, NY 11101',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'One Stop Smoke Shop',
    '11 Commercial St',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Oz',
    '1547 Arthur Kill Road, Staten Island, NY 10312',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Satisfied Mind',
    '31 Webster St',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Statis Cannabis - New York',
    '817 E. Tremont Ave. Bronx, NY 10460',
    'OCM-CAURD-23-000015',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Bud Pub',
    '540 clematis st, Suite 5 BLD 5, West palm beach',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Cannabis Place',
    '11709 Hillside Ave.',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Cannabis Store',
    '1936 South Park Ave',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Chronic Dispensary',
    '1284 Central Ave Albany NY 12205',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'The Dabber Hashery',
    '1051 College Ave, Elmira, NY 14901',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Three Buds Cannabis',
    '80 North Main Street',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Tiki Leaves',
    '1511 Neptune Ave',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Twisted Vibration',
    '301 Broadway',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Union Chill Cannabis Co.',
    '34 W. Pulteney St.',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Upstate Canna Co - Glenville',
    '126 Saratoga Rd',
    'missing from hoodie, reaching out to get inputted',
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'William Jane',
    '115 Park Ave Ithaca, New York 14850',
    'OCM-CAURD-23-000006',
    'n/a',
    '$250,000',
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Terp Bros - Ozone Park',
    '135-26 Cross Bay Blvd, Ozone Park, NY 11417',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Green Leaf Cannabis and Wellness',
    '1400 NY-300, Newburgh, NY 12550',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY green'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Quality Roots',
    '330 Tompkins Ave, Brooklyn',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Jungle Kingdom Flower Dispensary',
    '515 Nostrand Ave, Brooklyn, NY 11216',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'All Good Dispensary',
    '3405 Avenue H, Brooklyn, NY 11210',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'NYC Bud- 39th St',
    '405 W 39th St, New York, NY 10018',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Mary Jane- Lexington ave',
    '799 Lexington Ave, New York, NY 10065',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Flynn Stoned- 2nd ave, Manhattan',
    NULL,
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Grams Dispensary - Brooklyn',
    '360 Graham Ave, Brooklyn, NY 11211',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Empire Cannabis Co - Manhattan',
    '424 Broadway, New York, NY 10013',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Elevate HQ',
    '701 8th Ave. New York , NY, 10036',
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'NY red'),
    'active'
);
INSERT INTO public.dispensaries (
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
    NULL,
    'Bud City- Brooklyn',
    NULL,
    NULL,
    'n/a',
    NULL,
    NULL,
    'Tier 4',
    (SELECT id FROM public.territories WHERE name = 'Unassigned'),
    'active'
);
