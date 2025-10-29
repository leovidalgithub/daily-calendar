-- Agosto 2025 - Generado con reglas actualizadas
-- Aplicando las 7 reglas completas con nueva estructura
-- Fuente: data.txt

-- AUG 01 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-01', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102252', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Warranties and Installations - finished working on installations'),
    JSON_OBJECT('taskId', '102729', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - GSAV-Content Pages - more changes in that CP'),
    JSON_OBJECT('taskId', '102817', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify - Variants are duplicated for 1956 - starting looking at this'),
    JSON_OBJECT('taskId', '102600', 'department', 'ONBOARDING', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Teksavvy Eletronics - 3611 - 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 04 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-04', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Tailbasify stuck merchants', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102600', 'department', 'ONBOARDING', 'duration', '25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Teksavvy Eletronics - 3611 - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '102252', 'department', 'SPRINT', 'duration', '3h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Warranties and Installations - working on warranties - QA sent to Lino'),
    JSON_OBJECT('taskId', '102729', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - GSAV-Content Pages - more changes in that CP'),
    JSON_OBJECT('taskId', '102817', 'department', 'SPRINT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify - Variants are duplicated for 1956')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 05 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-05', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Lino, Etienne', 'duration', '1h5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102252', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Warranties and Installations - checking Linos comments'),
    JSON_OBJECT('taskId', '102817', 'department', 'SPRINT', 'duration', '2h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV]: Tailbasify - Variants are duplicated for 1956 - finish working on this - deployed and tested'),
    JSON_OBJECT('taskId', '101196', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Canales Furniture - 3607 - 3.4 - [WB] - Catalog Sync - CANALES FURNITURE (D.D. TUESD. JULY 29TH) - investigating an issue with some prices - first sync and schedule')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'I received an email from Shopify about the public App Im working on')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 06 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-06', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Checking merchant with MC', 'duration', '40m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101196', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Canales Furniture - 3607 - 3.4 - [WB] - Catalog Sync - CANALES FURNITURE (D.D. TUESD. JULY 29TH) - investigating an issue with some prices - first sync and schedule'),
    JSON_OBJECT('taskId', '102569', 'department', 'SPRINT', 'duration', '4h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Vercel as a Hosting Platform for Shopify Applications'),
    JSON_OBJECT('taskId', '102624', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify - Review Performance')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking something about shopify merchant with marie-claire...'),
    JSON_OBJECT('content', 'do manual push TB1129-ID3606')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 07 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Sonia onboarding', 'duration', '45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102624', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify - Review Performance'),
    JSON_OBJECT('taskId', '101298', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - United Canada Inc. - 3608 - 3.4 - [WB] - Catalog Sync - UNITED CANADA INC. (D.D. WEDNES. JULY 30TH) - adding a store'),
    JSON_OBJECT('taskId', '102729', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - GSAV-Content Pages - more changes in that CP'),
    JSON_OBJECT('taskId', '102612', 'department', 'ONBOARDING', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Teksavvy Eletronics - 3611 - 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '103227', 'department', 'SPRINT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Issue with duplicated keys on Chubbys - working on it - call Lino')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'Canales Furniture sync............. waiting response from Marie'),
    JSON_OBJECT('content', 'call Sonia introducing the new hired people'),
    JSON_OBJECT('content', 'syncning Canales Furniture')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 08 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-08', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Day off (vacation)', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 11 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-11', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '55m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103172', 'department', 'SPRINT', 'duration', '4h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Native Variants - FE Fix'),
    JSON_OBJECT('taskId', '103227', 'department', 'SPRINT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Issue with duplicated keys on Chubbys - checking the latest changes Lino made - and testing the Converte for 2798 on production'),
    JSON_OBJECT('taskId', '102613', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Teksavvy Eletronics - 3611 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. AUG. 14TH)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'preparing the demo for the Tailbasify Unleashed - warranty installations, price qualifier and items-per-package')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 12 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-12', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-11 Demos + Planning', 'duration', '3h55m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102613', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Teksavvy Eletronics - 3611 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. AUG. 14TH)'),
    JSON_OBJECT('taskId', '103227', 'department', 'SPRINT', 'duration', '2h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Issue with duplicated keys on Chubbys - check the tables for 2798 and run Chubbys - running Converter for Chubbys - call Lino - call Etienne on this too'),
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 13 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-13', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Monitoring Tailbasify issue', 'duration', '1h5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Eitenne, Lino', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '3h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8'),
    JSON_OBJECT('taskId', '94561', 'department', 'SPRINT', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DOCUMENTATION] TA Appliance - Metafield variants and tags')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking the issue on tailbasify --> 5/6 Retrying Fetching MerchantShopifyProductsMainObject'),
    JSON_OBJECT('content', 'call Etienne to check the issue with Chubbys variants - how to deal with y/n variants to show something that makes sense')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 14 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-14', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103172', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Native Variants - FE Fix'),
    JSON_OBJECT('taskId', '103261', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Native Variants - FE Fix - finished - deployed - solved 22 conflicts - sent the QA to Lino'),
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 15 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-15', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino, Etienne on Tailbasify & Chubbys', 'duration', '1h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103308', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Variants - Variants Metafield - Configs refactor - looking into the issue with VariantGroups - finding a solution - call Lino - work on it - deployed and monitoring'),
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 18 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-18', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '5h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8 - making a list of TA child products to be create in merchantProds by Catalog Team'),
    JSON_OBJECT('taskId', '102845', 'department', 'ONBOARDING', 'duration', '2h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Standard - Zavalas Furniture and Mattress Upgrade - 3340 (old - 1881) - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. AUG. 21ST)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 19 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-19', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '3h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8'),
    JSON_OBJECT('taskId', '103450', 'department', 'SUPPORT', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Domon - Adding breadcrumb to shopify website - approved with one comment'),
    JSON_OBJECT('taskId', '103387', 'department', 'SPRINT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Ashley Feed - Nectar')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 20 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-20', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '3h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8'),
    JSON_OBJECT('taskId', '103387', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Ashley Feed - Nectar - working on it - call Lino - approved'),
    JSON_OBJECT('taskId', '102845', 'department', 'ONBOARDING', 'duration', '25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Standard - Zavalas Furniture and Mattress Upgrade - 3340 (old - 1881) - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. AUG. 21ST) - more changes'),
    JSON_OBJECT('taskId', '103212', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] - Product Converter - Part 2 - done and put some comments in the case'),
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain) - starting on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 21 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-21', JSON_OBJECT(
  'meetings', JSON_ARRAY(),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '4h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8 - testing stereoplus and found an tiny issue with Variant metefields'),
    JSON_OBJECT('taskId', '103212', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] - Product Converter - Part 2 - 2nd round of QA'),
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 22 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-22', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain)'),
    JSON_OBJECT('taskId', '103415', 'department', 'SUPPORT', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, manque les cases doption à cocher - helping Lino on this - analysis and working on a approach for quick view - warranty and installations - call Lino - commit changes and sent it to Lino')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 25 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Lino, Etienne', 'duration', '55m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101616', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 8 - working on it'),
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '3h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'call Lino on warehouse quick-view window ...')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 26 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-26', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Rencontre dequipe', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-03', 'description', ''),
    JSON_OBJECT('title', 'Retour sur lannonce', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-03', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100963', 'department', 'SPRINT', 'duration', '3h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 7'),
    JSON_OBJECT('taskId', '102729', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - GSAV-Content Pages - even more changes'),
    JSON_OBJECT('taskId', '103415', 'department', 'SUPPORT', 'duration', '35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, manque les cases doption à cocher - helping Lino on this - analysis and working on a approach for quick view - warranty and installations - call Lino - commit changes and sent it to Lino')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 27 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-27', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103415', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, manque les cases doption à cocher - helping Lino on this - analysis and working on a approach for quick view - warranty and installations - call Lino - commit changes and sent it to Lino'),
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain)'),
    JSON_OBJECT('taskId', '100963', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 7 - calls Lino - checking many things with him'),
    JSON_OBJECT('taskId', '103849', 'department', 'SUPPORT', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Levesque Electromanager - moteur de recherche non fonctionnel')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking 2798 and 3523 stuck merchants')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 28 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Lino', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain) - working on'),
    JSON_OBJECT('taskId', '102817', 'department', 'SPRINT', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify - Variants are duplicated for 1956 - logs removed - deployed'),
    JSON_OBJECT('taskId', '102495', 'department', 'ONBOARDING', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Dorothy Jane Montgomery - 3612 - 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'call Lino on TA')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- AUG 29 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-08-29', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Warranties - Parent in cart (Germain) - finished - tested - QA sent to Lino'),
    JSON_OBJECT('taskId', '103875', 'department', 'SPRINT', 'duration', '3h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Tailbasify - Specs/description Shopify issue - done - QA sent to Lino - deployed to SFA & solving for possible conflicts'),
    JSON_OBJECT('taskId', '103877', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Tailbasify - Specs/description issue')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;