
INSERT INTO branches (id, name, address, is_active)
VALUES ('11111111-1111-1111-1111-111111111111', 'Melody Bakery', 'Main Bazaar, Rawalpindi', true);

-- ---- Owner ----
INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES (
    '22222222-2222-2222-2222-222222222222',
    'Tariq Bhai',
    '+923001234567',
    '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', -- password123
    'owner',
    '11111111-1111-1111-1111-111111111111'
);


UPDATE branches SET owner_id = '22222222-2222-2222-2222-222222222222'
WHERE id = '11111111-1111-1111-1111-111111111111';


INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES
    ('33333333-3333-3333-3333-333333333333', 'Imtiaz Ahmed', '+923001112222', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '11111111-1111-1111-1111-111111111111'),
    ('44444444-4444-4444-4444-444444444444', 'Waseem Akram', '+923003334444', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '11111111-1111-1111-1111-111111111111');

INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES
    ('33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 'Production Staff', 1200, 'daily'),
    ('44444444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', 'Cashier', 1000, 'daily');


INSERT INTO suppliers (id, name, contact_phone, branch_id, scorecard_accuracy, scorecard_price)
VALUES ('55555555-5555-5555-5555-555555555555', 'Al-Rehman Flour Mills', '+923005556666', '11111111-1111-1111-1111-111111111111', 95.0, 92.0);


INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES (
    '66666666-6666-6666-6666-666666666666',
    'Kara Biscuit',
    '11111111-1111-1111-1111-111111111111',
    '[{"name": "Maida Flour", "quantity": 5}, {"name": "Sugar", "quantity": 1.2}, {"name": "Dalda Butter", "quantity": 0.8}]',
    5.0,
    200,
    2.0,
    8.50
);

INSERT INTO recipes (product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('Naan', '11111111-1111-1111-1111-111111111111', '[{"name": "Maida Flour", "quantity": 1}]', 1.0, 10, 2.0, 15.0);


INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES
    ('Maida Flour', '11111111-1111-1111-1111-111111111111', 48.5, 'kg', 15),
    ('Sugar', '11111111-1111-1111-1111-111111111111', 31.2, 'kg', 10),
    ('Dalda Butter', '11111111-1111-1111-1111-111111111111', 12.8, 'kg', 5),
    ('Baking Powder', '11111111-1111-1111-1111-111111111111', 0.4, 'kg', 2),
    ('Salt', '11111111-1111-1111-1111-111111111111', 2.1, 'kg', 1);


INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag)
VALUES (
    '11111111-1111-1111-1111-111111111111',
    '66666666-6666-6666-6666-666666666666',
    'Kara Biscuit',
    '33333333-3333-3333-3333-333333333333',
    'morning',
    5.0,
    200,
    198,
    -1.0,
    false
);


INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag)
VALUES (
    '11111111-1111-1111-1111-111111111111',
    '66666666-6666-6666-6666-666666666666',
    'Kara Biscuit',
    '33333333-3333-3333-3333-333333333333',
    'morning',
    5.0,
    200,
    189,
    -5.5,
    true
);


INSERT INTO fraud_alerts (branch_id, staff_id, alert_type, reference_type, risk_score, details, status)
VALUES (
    '11111111-1111-1111-1111-111111111111',
    '33333333-3333-3333-3333-333333333333',
    'rule_based',
    'production_batch',
    65,
    'Imtiaz Ahmed — 11 biscuit deficit (-5.5%)',
    'open'
);


INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount)
VALUES
    ('11111111-1111-1111-1111-111111111111', '44444444-4444-4444-4444-444444444444', 'morning', 'cash', 'Kara Biscuit', 150, 1275.00),
    ('11111111-1111-1111-1111-111111111111', '44444444-4444-4444-4444-444444444444', 'morning', 'digital', 'Naan', 60, 900.00);


INSERT INTO expenses (branch_id, category, amount, submitted_by, status, duplicate_flag)
VALUES ('11111111-1111-1111-1111-111111111111', 'Maintenance', 2200, '44444444-4444-4444-4444-444444444444', 'pending', true);


INSERT INTO business_health_config (branch_id)
VALUES ('11111111-1111-1111-1111-111111111111');


INSERT INTO notifications (branch_id, type, title, message)
VALUES (
    '11111111-1111-1111-1111-111111111111',
    'summary',
    'GramSure Daily Summary',
    'Good morning! Net Profit: Rs. 2,150 | Cash Accuracy: 98.2% | Batch Yield: 94.5% | Fraud Flags: 1 active'
);

