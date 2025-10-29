-- Octubre 2025 - Generado con reglas actualizadas
-- Aplicando las 7 reglas completas con nueva estructura
-- Fuente: data.txt

-- OCT 01 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-01', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105324', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tailbasify - Native Variants should have at least 2 option values (Bouthaina)'),
    JSON_OBJECT('taskId', '105673', 'department', 'SUPPORT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify App Extensions - Canales Furniture Rebate Block issue - starting on this after call with Marie & Sonia'),
    JSON_OBJECT('taskId', '105567', 'department', 'ONBOARDING', 'duration', '2h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Standard - Discount Furniture Gallery Upgrade - 3619 - old (1606) - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts availability - V3 - finishing working on this - deployed')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 02 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-02', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105673', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify App Extensions - Canales Furniture Rebate Block issue - waiting for some feedback from Sonia and Marie'),
    JSON_OBJECT('taskId', '105324', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tailbasify - Native Variants should have at least 2 option values (Bouthaina) - approved'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts availability - V3 - finishing working on this - deployed'),
    JSON_OBJECT('taskId', '105482', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Parts availability - V3 - EXTRA WORK ETIENNE - now we have different content: Cantrex and non-Cantrex merchants'),
    JSON_OBJECT('taskId', '104775', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618 - 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '104901', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Fiesta Furniture Upgrade - 3616 - old (1506) - 3.9 - [WB] - Changes before website Review by programmer - scroll-down sticky header menu issue - test the following merchants: 1903 & 3582'),
    JSON_OBJECT('taskId', '105546', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Best Buy CA crawler seems to have broken - check if it ran and how it goes now - it ran well')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 03 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-03', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Onboarding meeting', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105546', 'department', 'SUPPORT', 'duration', '3h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Best Buy CA crawler seems to have broken - putting back all cats and interval - check how it goes now'),
    JSON_OBJECT('taskId', '105734', 'department', 'SUPPORT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Best Buy CA crawler seems to have broken HomeDepotCanada - starting on HomeDepotCanada'),
    JSON_OBJECT('taskId', '105673', 'department', 'SUPPORT', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV]: Tailbasify App Extensions - Canales Furniture Rebate Block issue - making PDP to not show a rebate block when the rebate is marked as DRAFT')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', '9:45 meeting with Sonia & Marie regarding the Tailbasify Unleashed new Block rebates (50m)')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 06 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-06', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105734', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Best Buy CA crawler seems to have broken HomeDepotCanada - check if it ran and how it goes now - https://homedepot.ca/product/camp-chef-smokepro-stx-pellet-grill/1001157107'),
    JSON_OBJECT('taskId', '104522', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Standard - Dream Home Appliances - 3621 - 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '104521', 'department', 'ONBOARDING', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Standard - Dream Home Appliances - 3621 - 3.3 - [WB] - Tailbase console initial set-up by programmer'),
    JSON_OBJECT('taskId', '105624', 'department', 'ONBOARDING', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Standard (Integration) - Bakers Appliances CA - 3620 - 3.3 - [WB] - Tailbase console initial set-up by programmer - starting with this - everythings ready - now, waiting for collaborator access'),
    JSON_OBJECT('taskId', '105800', 'department', 'SPRINT', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts URL in Admin - finished - deployed')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 07 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-14 Demos', 'duration', '2h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105800', 'department', 'SPRINT', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Parts URL in Admin - finished - deployed'),
    JSON_OBJECT('taskId', '105860', 'department', 'SUPPORT', 'duration', '4h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify App Extensions - Rebate Listing Page Bundle - FINISH THE REBATE LISTING PAGE STYLING (for Canales Furniture)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 08 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-08', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-15 Planning', 'duration', '2h45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105860', 'department', 'SUPPORT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify App Extensions - Rebate Listing Page Bundle - FINISH THE REBATE LISTING PAGE STYLING (for Canales Furniture)'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts availability - V3 - tiny change asked by Etienne - new Cantrex text content'),
    JSON_OBJECT('taskId', '104781', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618 - 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '105927', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 9 - staging TA - DB clean up - checking code, db functions and views - shopify store clean up - making up a complete example for David')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 09 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-09', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Onboarding meeting', 'duration', '30m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105927', 'department', 'SPRINT', 'duration', 'metele mas, esta es la vaina que le hice a David de limpiar y recrear todo', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 9 - staging TA - DB clean up - checking code, db functions and views - shopify store clean up - making up a complete example for David')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'VOY POR AQUÍ - VOY POR AQUÍ - VOY POR AQUÍ - VOY POR AQUÍ')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 10 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-10', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Marie/Sonia on Canales', 'duration', '40m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105817', 'department', 'SPRINT', 'duration', '9h original', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] UI for file generation - starting working on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', '11:30 meeting with Marie-claire and Sonia regarding Rebates collection page for Canales')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 13 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-13', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Thanksgiving Day', 'duration', '7h30m', 'timeSubmitted', false, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 14 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-14', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Sonia, Lino', 'duration', '1h', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105817', 'department', 'SPRINT', 'duration', '9h original', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] UI for file generation - finish working on this - QA sent to Lino'),
    JSON_OBJECT('taskId', '104782', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. TUESD. OCT. 14TH)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', 'call with Sonia on KernHill imagoTags onboarding proccess'),
    JSON_OBJECT('content', 'SUPPORT CASE for KERNHILL to onboard on imagoTags')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 15 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-15', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino on Imagotags', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105799', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Features Display Issue - checking this issue and another one reported by Canales - sending a response back to Marie-Claire'),
    JSON_OBJECT('taskId', '106001', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 1 - Gagnon Meubles - 3615 - Meubles Gagnon -DNS - setting DNS records according to an email they sent (Marie-Claire)'),
    JSON_OBJECT('taskId', '106080', 'department', 'SUPPORT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV]: Kern-Hill - Digital price tags - SES Imagotag - checking the information to onboard on API Imagotag integration'),
    JSON_OBJECT('taskId', '105774', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Tri-City Appliance Upgrade - 3622 - (old - 2439) - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '105899', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Le Bon Appliances Upgrade - 3623 - old (1469) - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '104908', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Fiesta Furniture Upgrade - 3616 - old (1506) - 5.2 - [RW] - Launched Website & Final Q.A (D.D. WEDN. OCT. 15TH)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', 'call Lino showing me something regarding collection models in Imagotags')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 16 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-16', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Corporate Information Security Policy 2025', 'duration', '15m', 'timeSubmitted', false, 'departmentId', 'it-02', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105573', 'department', 'ONBOARDING', 'duration', 'bastante', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Standard - Discount Furniture Gallery Upgrade - 3619 - old (1606) - 3.9 - [WB] - Changes before website Review by programmer - adding a banner, and checking a Perq - Fatwin script located at GTM account'),
    JSON_OBJECT('taskId', '105817', 'department', 'SPRINT', 'duration', '9h original', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] UI for file generation - working on the Linos comments - APPROVED'),
    JSON_OBJECT('taskId', '105512', 'department', 'SPRINT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Variant Configurator - Update Rules Propagation [Bouthaina] - brief call Bouthaina - approved')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', 'Requesting Collaborator Access to new Integration client on Shopify BAKERS APPLIANCES')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 17 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-17', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Onboarding meeting on App blocks', 'duration', '45m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105624', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Tailbasify Standard (Integration) - Bakers Appliances CA - 3620 - 3.3 - [WB] - Tailbase console initial set-up by programmer - finish with all onboarding process - both Apps installed'),
    JSON_OBJECT('taskId', '105799', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Tailbasify Unleashed - Features Display Issue - fix and update: Features & Specs blocks - all done for Canales and the rest of all Integration merchants')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', 'Tailbasify Extension Blocks App')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 20 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-20', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105905', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Le Bon Appliances Upgrade - 3623 - old (1469) - 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '105286', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Roots Hometown Furniture & Appliance Inc. - 3624 - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '105809', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Tailbasify Back-end Health - started working on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 21 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-21', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Annual Evaluation with Marc-Andre', 'duration', '1h', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', 'Year-End Performance Review'),
    JSON_OBJECT('title', 'Call Etienne on AI projects, Parts Availability, Tailbasifybadges analysis new case', 'duration', '1h30m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104007', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 2 - Meubles Toco - 3614 - 5.1 - [RW] - Changes before launch by programmer - MEUBLE TOCO- NEW CANTREX LVL3'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] Parts availability - V3'),
    JSON_OBJECT('taskId', '105482', 'department', 'SPRINT', 'duration', 'put some time here too?', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEPLOYMENT] Parts availability - V3 - new contenct for Cantrex and including Fruniture sector'),
    JSON_OBJECT('taskId', '105809', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Tailbasify Back-end Health')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 22 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-22', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino', 'duration', '35m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '106250', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Quality Furniture Upgrade - 3625 - (old - 2605) - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '106095', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Elliott Appliance and Repair Upgrade - 3626 - (old - 2579) - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '105580', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Standard - Discount Furniture Gallery Upgrade - 3619 - old (1606) - 5.2 - [RW] - Launched Website & Final Q.A (D.D. WEDN. OCT. 22ND)'),
    JSON_OBJECT('taskId', '106516', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[ANALYSIS] Tailbasify - Shopify Badges App')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', 'call Lino on trasnferring a domain for 3479....')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 23 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-23', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103946', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 2.2 - [GI] - Domain name - answering a weird question from the client'),
    JSON_OBJECT('taskId', '105911', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Le Bon Appliances Upgrade - 3623 - old (1469) - 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '106516', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[ANALYSIS] Tailbasify - Shopify Badges App - finished - sent to Etienne - call Etienne analyzing all the implications and making a plan')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 24 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105292', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Roots Hometown Furniture & Appliance Inc. - 3624 - 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '106590', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] Tailbasify - Shopify Badges App - START WORKING ON THIS AMAZING APP !!! !!!')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', 'https://admin.shopify.com/store/tailbase-demo-1448/apps/tailbasify-badges-app-1/app/tags'),
    JSON_OBJECT('content', 'shopify app dev clean; shopify app dev')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 27 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-27', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-15 Demos', 'duration', '3h20m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105912', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Le Bon Appliances Upgrade - 3623 - old (1469) - 5.2 - [RW] - Launched Website & Final Q.A (D.D. MOND. OCT. 27TH)'),
    JSON_OBJECT('taskId', '106380', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Eddins Furniture Upgrade - 3627 - (old - 2936) - 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 28 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-16 Planning', 'duration', '3h', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '106467', 'department', 'ONBOARDING', 'duration', 'minimo minimo minimo 2 horitas', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 All-Inclusive - Sight & Sound Upgrade - 3628 - (old - 716) - 3.3 - [WB] - Website building initial set-up by programmer - high demanding case - landing pages - static pages and more'),
    JSON_OBJECT('taskId', '105625', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Tailbasify Standard (Integration) - Bakers Appliances CA - 3620 - 3.4 - [WB] - Catalog Sync - BAKERS APPLIANCES (D.D. TUESD. OCT. 28TH)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 29 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-29', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '106467', 'department', 'ONBOARDING', 'duration', 'metele sin miedo como 5 horas at least', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 All-Inclusive - Sight & Sound Upgrade - 3628 - (old - 716) - 3.3 - [WB] - Website building initial set-up by programmer - high demanding case - landing pages - static pages and more'),
    JSON_OBJECT('taskId', '105780', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Tri-City Appliance Upgrade - 3622 - (old - 2439) - 3.9 - [WB] - Changes before website Review by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- OCT 30 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-30', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103965', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. OCT. 30TH)'),
    JSON_OBJECT('taskId', '105299', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Roots Hometown Furniture & Appliance Inc. - 3624 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. OCT. 30TH)'),
    JSON_OBJECT('taskId', '106700', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] Tailbasify - Most urgent errors - esperando por Marie-Claire for NS updating'),
    JSON_OBJECT('taskId', '106590', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] Tailbasify - Shopify Badges App - START WORKING ON THIS AMAZING APP !!! !!! - CREO QUE CUANDO EDITAMOS UN ELEMENTO, NO DEBEMOS PERMITIR CAMBIAR EL TYPE (BADGE OR IMAGE GRID) - CUANDO EDITO UN IMAGE GRID (group 3) Y PONGO UN NAME, LA VAINA PARECE QUE NO ESTA GUARDANDO')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;