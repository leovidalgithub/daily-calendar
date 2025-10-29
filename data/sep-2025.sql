-- Septiembre 2025 - Generado con reglas actualizadas
-- Aplicando las 7 reglas completas con nueva estructura
-- Fuente: data.txt

-- SEP 01 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-01', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Labour Day', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 02 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-02', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-12 Demos', 'duration', '3h10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103212', 'department', 'SPRINT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] - Product Converter - Part 2 - cheking Lino feedback and doing a new round of QA'),
    JSON_OBJECT('taskId', '103415', 'department', 'SUPPORT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, manque les cases doption à cocher - quick view on listing page - warranty/installarion functionality - Lino assigned this case to me... working on it - finished and QA sent to Lino'),
    JSON_OBJECT('taskId', '102517', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Shopify Meublex - Add Delivery Method - digging into Rejeans requirement with Pierre-luc - call Pierre-luc - checking the JSON files and generating a new ones')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 03 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-03', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-13 Planning', 'duration', '3h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103208', 'department', 'SPRINT', 'duration', '2h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Warranties - Parent in cart (Germain) - checking a couple of comments from Lino'),
    JSON_OBJECT('taskId', '103210', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Warranties - Parent in cart (Germain)'),
    JSON_OBJECT('taskId', '103211', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DOCUMENTATION] Warranties - Parent in cart (Germain)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 04 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-04', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Etienne/Lino', 'duration', '1h10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102517', 'department', 'SPRINT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Shopify Meublex - Add Delivery Method - deployment for ShopifyMeublexMiddleware - Rejean Poirier - digging into Rejeans requirement with Pierre-luc'),
    JSON_OBJECT('taskId', '103913', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Pictures slideshow on product page on v2 Tailbasify doesnt work. - call Lino talking about compare what he did and what I did - finally we decide to keep my changes and deploy it for SFA'),
    JSON_OBJECT('taskId', '103415', 'department', 'SUPPORT', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Germain Larivière - Aperçu rapide, manque les cases doption à cocher - intercepting Buy it now button click event before Shopify and adding the warranty/installation products into the cart and redirecting to the checkouts parge - deployed and tested on Germain only'),
    JSON_OBJECT('taskId', '103856', 'department', 'SUPPORT', 'duration', '2h5m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS]: Chubby - Analysis - Variant Yes/No Specs on Shopify - 1. find all the yes/no specs currently be part of a group - 2. analysis to add the no and yes content in the variants table on v3 - 3. check how tailbasify would take that new content to be sent')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 05 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-05', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104116', 'department', 'SUPPORT', 'duration', '3h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV]: Changing the entries for collections in Imagotags API XML file Collection to Product - finish working on this - QA sent to David - deployed'),
    JSON_OBJECT('taskId', '103880', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Canales- Customization on Shopify-Rebate - call Lino on this'),
    JSON_OBJECT('taskId', '101298', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - United Canada Inc. - 3608 - 3.4 - [WB] - Catalog Sync - UNITED CANADA INC. (D.D. WEDNES. JULY 30TH) - ASKING FOR COLLABORATOR ACCESS (again and again and again)'),
    JSON_OBJECT('taskId', '103952', 'department', 'ONBOARDING', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 3.3 - [WB] - Website building initial set-up by programmer - they just grant access')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 08 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-08', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103952', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 3.3 - [WB] - Website building initial set-up by programmer - they just grant access'),
    JSON_OBJECT('taskId', '103880', 'department', 'SPRINT', 'duration', '5h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Canales- Customization on Shopify-Rebate - TAILBASIFY UNLEASHED - REBATE ON PDP BLOCK done! - started working on REBATE COLLECTION APP BUNDLE'),
    JSON_OBJECT('taskId', '103383', 'department', 'SPRINT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Quote for customization on Shopify-Rebate')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 09 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-09', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Tailbasify stuck merchant', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Etienne', 'duration', '45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103880', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [ANALYSIS] Canales- Customization on Shopify-Rebate - finishing working on REBATE COLLECTION APP BUNDLE'),
    JSON_OBJECT('taskId', '103383', 'department', 'SPRINT', 'duration', '3h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Quote for customization on Shopify-Rebate')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'check the key duplicated on 3559 done - Update exception | An item with the same key has already been added. Key: https://alt-imgres.tailbase.com/originalimg/prods/46709_1.jpg-46709-1-1'),
    JSON_OBJECT('content', 'call Lino on Canales and Chubbys Tailbasify Variants Yes/No')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 10 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-10', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101298', 'department', 'ONBOARDING', 'duration', '2h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - United Canada Inc. - 3608 - 3.4 - [WB] - Catalog Sync - UNITED CANADA INC. (D.D. WEDNES. JULY 30TH) - tailbasify app installed - tailbasify app block extension installed - first sync and daily schedule set'),
    JSON_OBJECT('taskId', '102729', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - GSAV-Content Pages - even more changes - more little changes'),
    JSON_OBJECT('taskId', '103856', 'department', 'SUPPORT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS]: Chubby - Analysis - Variant Yes/No Specs on Shopify - working on it'),
    JSON_OBJECT('taskId', '103856', 'department', 'SUPPORT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS]: Chubby - Analysis - Variant Yes/No Specs on Shopify - finished working on it - starting checking for all specs to make a list for Catalog so they can assign proper labels to yes/no specs')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 11 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-11', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino Accent Meubles', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103212', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] - Product Converter - Part 2 - call Lino on the new CategoryMapping rules - new round of QA'),
    JSON_OBJECT('taskId', '102569', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Vercel as a Hosting Platform for Shopify Applications'),
    JSON_OBJECT('taskId', '102711', 'department', 'SPRINT', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] How to make a Shopify Public UNLISTED App - Tailbasify Icons App - ready for revision - Public UNLISTED App')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', '9AM - meeting Lino on Product Catalog')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 12 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-12', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Tailbasify pricing issue', 'duration', '55m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103212', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] - Product Converter - Part 2 - another round of QA - checking categories filter and the spec mapping issue'),
    JSON_OBJECT('taskId', '104226', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - Prices Furniture - 3372 (old - 2658) - 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '104225', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - Prices Furniture - 3372 (old - 2658) - 3.3 - [WB] - Tailbase console initial set-up by programmer'),
    JSON_OBJECT('taskId', '102501', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Dorothy Jane Montgomery - 3612 - 3.9 - [WB] - Changes before website Review by programmer - mattresses menu building'),
    JSON_OBJECT('taskId', '103995', 'department', 'ONBOARDING', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Meubles Toco - 3614 - 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 15 2025 (MONDAY) -- Note: MONODAY appears to be a typo for MONDAY
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-15', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '103995', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Meubles Toco - 3614 - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '101638', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbadgify - Update with new icons'),
    JSON_OBJECT('taskId', '104316', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Gagnon Meubles - 3615 - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '103383', 'department', 'SPRINT', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'DEMO: [DEV] Quote for customization on Shopify-Rebate'),
    JSON_OBJECT('taskId', '103956', 'department', 'ONBOARDING', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 3.7 - [WB] - Shopping cart setup - checking all documentation to enable BAMBORA')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'some onboardings')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 16 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-16', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Tailbasify stuck merchants', 'duration', '35m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '55m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104397', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tailbasify - Update Deprecated API - Deadline Apr 1, 2026'),
    JSON_OBJECT('taskId', '104652', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Issue with duplicated keys on Chubbys [blocked] - call Bouthaina'),
    JSON_OBJECT('taskId', '102507', 'department', 'ONBOARDING', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Dorothy Jane Montgomery - 3612 - 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '103956', 'department', 'ONBOARDING', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 3.7 - [WB] - Shopping cart setup - responding client questions'),
    JSON_OBJECT('taskId', '102508', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Montgomery Furniture - (Dorothy Jane Montgomery) - 3612 - 5.2 - [RW] - Launched Website & Final Q.A(D.D. MOND. SEPT. 22ND)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 17 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-17', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102507', 'department', 'ONBOARDING', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Dorothy Jane Montgomery - 3612 - 5.1 - [RW] - Changes before launch by programmer - logo replacement'),
    JSON_OBJECT('taskId', '104652', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Issue with duplicated keys on Chubbys [blocked] - QA approved'),
    JSON_OBJECT('taskId', '104824', 'department', 'SPRINT', 'duration', '5h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Associated Products Grid - starting working on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 18 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-18', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-13 Demos', 'duration', '3h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104913', 'department', 'SUPPORT', 'duration', '3h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV]: Sticky menu and CSS cleanup on United Floors'),
    JSON_OBJECT('taskId', '104824', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Associated Products Grid - QA sent to Lino')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 19 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-19', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-14 Planning', 'duration', '3h5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Checking with Etienne Unleashed cases', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104824', 'department', 'SPRINT', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Associated Products Grid - finish working on it - QA sent to Lino - APPROVED'),
    JSON_OBJECT('taskId', '104034', 'department', 'ONBOARDING', 'duration', '2h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Allens Appliance & Satellite Service LLC - 3617 - 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'working on Tailbasify Unleashed Associated Product 4x4 Grid on PDP'),
    JSON_OBJECT('content', 'check also the Etienne cases in the chat (unleashed)')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 22 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-22', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104895', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Fiesta Furniture Upgrade - 3616 - old (1506) - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts availability - V3 - starting working on this'),
    JSON_OBJECT('taskId', '103385', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Quote for customization on Shopify-Rebate - All latest components (blocks) were installed for Canales'),
    JSON_OBJECT('taskId', '103964', 'department', 'ONBOARDING', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Heft Home INC. - 3613 - 5.1 - [RW] - Changes before launch by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 23 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-23', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts availability - V3 - finish - QA sent to Bouthaina'),
    JSON_OBJECT('taskId', '104895', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Fiesta Furniture Upgrade - 3616 - old (1506) - 3.3 - [WB] - Website building initial set-up by programmer - combining logos'),
    JSON_OBJECT('taskId', '104322', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Gagnon Meubles - 3615 - 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '104040', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Allens Appliance & Satellite Service LLC - 3617 - 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '105307', 'department', 'SUPPORT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, warranty/installation cart drawer issue - starting on this'),
    JSON_OBJECT('taskId', '104769', 'department', 'ONBOARDING', 'duration', '20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618 - 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 24 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104769', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618 - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '104227', 'department', 'ONBOARDING', 'duration', '4h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - Prices Furniture - 3372 (old - 2658) - 3.5 - [WB] - Shopify website building - images issue on Shopify - solved')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 25 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104329', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Gagnon Meubles - 3615 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. TUESD. SEPT. 30TH)'),
    JSON_OBJECT('taskId', '104047', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Allens Appliance & Satellite Service LLC - 3617 - 5.2 - [RW] - Launched Website & Final Q.A[WEDN OCT 1]'),
    JSON_OBJECT('taskId', '104769', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618 - 3.3 - [WB] - Website building initial set-up by programmer - adding extra brand in shop by brands page and feature brands carousel'),
    JSON_OBJECT('taskId', '105307', 'department', 'SUPPORT', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, warranty/installation cart drawer issue - working on it right now'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Parts availability - V3 - adding the multi language for the parts URL - call Etienne on demo and discussing some final details before deploying')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 26 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-26', JSON_OBJECT(
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

-- SEP 29 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-29', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '35m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104670', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tempur Sealy Feed - Feed broken after new changes from Tempur (Bouthaina)'),
    JSON_OBJECT('taskId', '104818', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Parts availability - V3 - finisshing working on this - deployed'),
    JSON_OBJECT('taskId', '105482', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Parts availability - V3'),
    JSON_OBJECT('taskId', '104950', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Malware Threat Shai-Hulud NPM – Action Required by Technical Teams'),
    JSON_OBJECT('taskId', '104826', 'department', 'SPRINT', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEPLOYMENT] Tailbasify Unleashed - Associated Products Grid - deploy all latest components to everyone'),
    JSON_OBJECT('taskId', '103385', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Quote for customization on Shopify-Rebate')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'Etienne asked for a tiny change for the Parts Availability')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- SEP 30 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-09-30', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Rejean Poirier assistance', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105195', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] - Product Converter - Part 3 -Product Dimensions only (Lino) - all good to me'),
    JSON_OBJECT('taskId', '105258', 'department', 'SPRINT', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Title Generator (Lino) - some comments - I found a couple of details'),
    JSON_OBJECT('taskId', '104826', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Tailbasify Unleashed - Associated Products Grid - deploy all latest components to everyone'),
    JSON_OBJECT('taskId', '105307', 'department', 'SUPPORT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Germain Larivière - Aperçu rapide, warranty/installation cart drawer issue - finished working on it'),
    JSON_OBJECT('taskId', '105546', 'department', 'SUPPORT', 'duration', '1h5m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Best Buy CA crawler seems to have broken - starting on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;