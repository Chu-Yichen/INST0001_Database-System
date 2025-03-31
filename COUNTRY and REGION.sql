INSERT INTO COUNTRY (country_id, country_name) VALUES
('SSD', 'SOUTH SUDAN'),
('RCB', 'DEMOCRATIC REPUBLIC of CONGO'),
('PSE', 'PALESTAN'),
('YEM', 'YEMEN'),
('LEB', 'LEBANON')

INSERT INTO REGION (region_id, region_type, region_name, locates_in_country_id) VALUES
    -- SOUTH SUDAN (SSD)
    ('SSD001', 'urban', 'Juba', 'SSD'),
    ('SSD002', 'urban', 'Wau', 'SSD'),
    ('SSD003', 'rural', 'Bor', 'SSD'),
    ('SSD004', 'rural', 'Yambio', 'SSD'),

    -- DEMOCRATIC REPUBLIC of CONGO (RCB)
    ('RCB001', 'urban', 'Kinshasa', 'RCB'),
    ('RCB002', 'urban', 'Lubumbashi', 'RCB'),
    ('RCB003', 'rural', 'Goma', 'RCB'),
    ('RCB004', 'rural', 'Bukavu', 'RCB'),

    -- PALESTAN (PSE)
    ('PSE001', 'urban', 'Ramallah', 'PSE'),
    ('PSE002', 'urban', 'Gaza', 'PSE'),
    ('PSE003', 'rural', 'Jenin', 'PSE'),
    ('PSE004', 'rural', 'Tubas', 'PSE'),

    -- YEMEN (YEM)
    ('YEM001', 'urban', 'Sanaa', 'YEM'),
    ('YEM002', 'urban', 'Aden', 'YEM'),
    ('YEM003', 'rural', 'Ibb', 'YEM'),
    ('YEM004', 'rural', 'Taiz', 'YEM'),

    -- LEBANON (LEB)
    ('LEB001', 'urban', 'Beirut', 'LEB'),
    ('LEB002', 'urban', 'Tripoli', 'LEB'),
    ('LEB003', 'rural', 'Baalbek', 'LEB'),
    ('LEB004', 'rural', 'Byblos', 'LEB');
