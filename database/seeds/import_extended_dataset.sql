
INSERT INTO branches (id, name, address, owner_id, is_active)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Melody Bakery - Extended Dataset', 'Extended dataset import, Rawalpindi', '22222222-2222-2222-2222-222222222222', true);

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('428f50c9-a808-41fa-8758-16a654b3d052', 'Imtiaz Ahmed', '+923009900001', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('428f50c9-a808-41fa-8758-16a654b3d052', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Baker', 32000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('c49efc15-2d74-4002-8586-c827c6c854a7', 'Waseem Akram', '+923009900002', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('c49efc15-2d74-4002-8586-c827c6c854a7', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cashier', 25000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('e75cbee0-44a6-4055-8131-4fe0df62c35b', 'Ali Raza', '+923009900003', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('e75cbee0-44a6-4055-8131-4fe0df62c35b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Baker', 32000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('21cb3b25-4852-496d-9011-aa755c8f3881', 'Bilal Hussain', '+923009900004', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('21cb3b25-4852-496d-9011-aa755c8f3881', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Helper', 20000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('a37994aa-e13d-4952-b957-0e80d8503493', 'Farhan Sheikh', '+923009900005', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('a37994aa-e13d-4952-b957-0e80d8503493', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cashier', 25000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('67d0433a-75d3-4866-8a54-248a5b857ec0', 'Nasir Iqbal', '+923009900006', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('67d0433a-75d3-4866-8a54-248a5b857ec0', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Baker', 32000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('4281bb68-5135-443b-a7f8-997b2b8db4cd', 'Kiran Fatima', '+923009900007', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('4281bb68-5135-443b-a7f8-997b2b8db4cd', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packer', 22000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('a7bdd850-0208-4352-85df-2c7e9a7ad816', 'Sana Bibi', '+923009900008', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '0e8b49ea-0562-47ac-89bc-45a280fe70db');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('a7bdd850-0208-4352-85df-2c7e9a7ad816', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cashier', 25000, 'monthly');

INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 200, 2.0, 8);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 180, 2.0, 9);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 20, 2.0, 180);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 24, 2.0, 140);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 6.0}]', 6.0, 150, 2.0, 10);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 6.0}]', 6.0, 120, 2.0, 12);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 6.0}]', 6.0, 100, 2.0, 18);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 90, 2.0, 35);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 220, 2.0, 7);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 18, 2.0, 220);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 80, 2.0, 22);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 160, 2.0, 15);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', 'Al-Fateh Flour Mills', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Rawalpindi - Maida Flour', 84.0, 84.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('44391d02-bf5c-4d55-a307-2d0b48cc4cbe', 'Bismillah Sugar Traders', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Rawalpindi - Sugar', 90.0, 90.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('74c646c6-21b8-4556-b28f-687169355d5b', 'Al-Noor Ghee & Oil', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Islamabad - Dalda Ghee', 74.0, 74.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('c2b29fe9-3e51-4cc0-a7f0-0043699de489', 'Punjab Dairy Suppliers', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Rawalpindi - Milk Powder', 80.0, 80.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('9df95928-5246-46a9-a5d1-4aa576d40ba5', 'National Foods Distributors', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Islamabad - Baking Powder', 92.0, 92.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('12afa621-9625-4d7a-b6a0-fe674ad3da8b', 'Rawalpindi Packaging Co', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Rawalpindi - Packaging', 82.0, 82.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('81b028b5-23ba-4d05-8931-f0821042f19d', 'Sadiq Egg Traders', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Rawalpindi - Eggs', 86.0, 86.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('7979ff90-0aa7-41c6-94d4-d9d208ca2f08', 'Metro Cash & Carry', '+923001112233', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Islamabad - Cocoa Powder', 88.0, 88.0);


INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.19, 21, 21, 0.0, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.26, 125, 125, 0.0, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.15, 123, 122, -0.81, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.2, 155, 154, -0.65, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.16, 21, 21, 0.0, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.79, 192, 190, -1.04, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.94, 198, 198, 0.0, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.99, 150, 149, -0.67, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.2, 155, 154, -0.65, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.87, 19, 19, 0.0, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.28, 157, 156, -0.64, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 161, 159, -1.24, false, '2025-11-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.88, 78, 79, 1.28, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.06, 182, 183, 0.55, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.14, 153, 155, 1.31, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.03, 151, 153, 1.32, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.06, 152, 152, 0.0, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.78, 116, 115, -0.86, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.09, 204, 201, -1.47, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.79, 116, 118, 1.72, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.1, 164, 163, -0.61, false, '2025-11-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.01, 120, 120, 0.0, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.0, 80, 80, 0.0, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.16, 21, 21, 0.0, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.12, 25, 25, 0.0, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.18, 93, 94, 1.08, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.78, 86, 86, 0.0, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.71, 95, 96, 1.05, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.15, 83, 83, 0.0, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.92, 148, 147, -0.68, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.01, 90, 91, 1.11, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.09, 183, 182, -0.55, false, '2025-11-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.92, 197, 194, -1.52, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.22, 94, 95, 1.06, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.17, 207, 204, -1.45, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.11, 225, 226, 0.44, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.88, 118, 118, 0.0, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.75, 171, 173, 1.17, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.79, 172, 174, 1.16, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.73, 115, 115, 0.0, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 166, 165, -0.6, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.95, 89, 89, 0.0, false, '2025-11-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.84, 97, 98, 1.03, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.83, 146, 147, 0.68, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.11, 204, 204, 0.0, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.05, 24, 24, 0.0, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.11, 184, 186, 1.09, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.04, 121, 123, 1.65, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.89, 88, 87, -1.14, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.16, 186, 185, -0.54, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.91, 196, 188, -4.08, true, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.09, 18, 18, 0.0, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.17, 93, 88, -5.38, true, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.79, 211, 213, 0.95, false, '2025-11-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 20, 20, 0.0, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.2, 187, 189, 1.07, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.23, 94, 95, 1.06, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.03, 18, 18, 0.0, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.7, 95, 96, 1.05, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.28, 157, 159, 1.27, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.9, 216, 218, 0.93, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.2, 168, 168, 0.0, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.0, 100, 100, 0.0, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.07, 183, 180, -1.64, false, '2025-11-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.03, 181, 182, 0.55, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.08, 224, 227, 1.34, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.15, 206, 203, -1.46, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.82, 212, 214, 0.94, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.19, 168, 169, 0.6, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.82, 116, 115, -0.86, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.07, 20, 20, 0.0, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.86, 146, 144, -1.37, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.25, 156, 157, 0.64, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.81, 17, 17, 0.0, false, '2025-11-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.86, 117, 118, 0.85, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.01, 18, 18, 0.0, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.91, 156, 154, -1.28, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.85, 154, 149, -3.25, true, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.81, 212, 209, -1.42, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.91, 148, 147, -0.68, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.94, 217, 206, -5.07, true, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.02, 24, 24, 0.0, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.13, 83, 82, -1.2, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.79, 116, 117, 0.86, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.05, 182, 180, -1.1, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.82, 153, 155, 1.31, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.02, 150, 151, 0.67, false, '2025-11-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.92, 118, 117, -0.85, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.16, 19, 19, 0.0, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.86, 19, 19, 0.0, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.06, 162, 164, 1.23, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.87, 117, 118, 0.85, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.09, 224, 227, 1.34, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.05, 24, 24, 0.0, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.9, 176, 175, -0.57, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.07, 18, 18, 0.0, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.16, 123, 122, -0.81, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.87, 19, 19, 0.0, false, '2025-11-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.14, 166, 167, 0.6, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.96, 79, 78, -1.27, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.18, 25, 25, 0.0, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.01, 18, 18, 0.0, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.05, 182, 183, 0.55, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.81, 17, 17, 0.0, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.1, 184, 186, 1.09, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.13, 185, 185, 0.0, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.9, 23, 23, 0.0, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.18, 84, 85, 1.19, false, '2025-11-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.17, 227, 226, -0.44, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.89, 156, 155, -0.64, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.87, 155, 156, 0.65, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.96, 119, 114, -4.2, true, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.16, 19, 19, 0.0, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.25, 189, 183, -3.17, true, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.07, 203, 200, -1.48, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 21, 21, 0.0, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.25, 189, 189, 0.0, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.08, 183, 181, -1.09, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.84, 23, 23, 0.0, false, '2025-11-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.72, 143, 145, 1.4, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.23, 230, 230, 0.0, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.97, 20, 20, 0.0, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.97, 159, 161, 1.26, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.95, 149, 149, 0.0, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.85, 175, 173, -1.14, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 20, 19, -5.0, true, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.83, 77, 77, 0.0, false, '2025-11-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.16, 93, 90, -3.23, true, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.93, 89, 89, 0.0, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.02, 201, 201, 0.0, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.94, 149, 149, 0.0, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.78, 210, 211, 0.48, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.86, 87, 86, -1.15, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 21, 21, 0.0, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.89, 156, 157, 0.64, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.16, 154, 156, 1.3, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.13, 153, 152, -0.65, false, '2025-11-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.94, 119, 120, 0.84, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.05, 121, 119, -1.65, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 18, 18, 0.0, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.88, 215, 215, 0.0, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.05, 202, 203, 0.5, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.04, 151, 152, 0.66, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.95, 20, 20, 0.0, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.84, 87, 88, 1.15, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.78, 96, 96, 0.0, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.15, 185, 184, -0.54, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.1, 122, 121, -0.82, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.11, 204, 207, 1.47, false, '2025-11-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.94, 198, 200, 1.01, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.95, 24, 23, -4.17, true, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.15, 93, 94, 1.08, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.84, 97, 98, 1.03, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.02, 221, 221, 0.0, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.13, 153, 152, -0.65, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.18, 21, 21, 0.0, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.83, 213, 212, -0.47, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.16, 93, 92, -1.08, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.22, 94, 95, 1.06, false, '2025-11-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.87, 175, 173, -1.14, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.92, 157, 156, -0.64, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.22, 209, 211, 0.96, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.74, 144, 143, -0.69, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.09, 224, 221, -1.34, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.27, 104, 105, 0.96, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.82, 97, 98, 1.03, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.25, 94, 95, 1.06, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.24, 231, 231, 0.0, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.8, 192, 195, 1.56, false, '2025-11-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.81, 145, 144, -0.69, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.95, 198, 196, -1.01, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.12, 225, 225, 0.0, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.28, 126, 124, -1.59, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.74, 115, 116, 0.87, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.05, 20, 20, 0.0, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.1, 184, 184, 0.0, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.1, 224, 223, -0.45, false, '2025-11-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 81, 82, 1.23, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.98, 18, 18, 0.0, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 21, 21, 0.0, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.94, 178, 179, 0.56, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.17, 25, 25, 0.0, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.96, 18, 18, 0.0, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.29, 126, 124, -1.59, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.9, 118, 117, -0.85, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.97, 219, 219, 0.0, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.97, 219, 217, -0.91, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.06, 81, 82, 1.23, false, '2025-11-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.23, 156, 154, -1.28, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.86, 194, 193, -0.52, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.93, 89, 88, -1.12, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.09, 204, 207, 1.47, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 19, 19, 0.0, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.85, 87, 88, 1.15, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.24, 94, 95, 1.06, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.21, 208, 208, 0.0, false, '2025-11-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.95, 158, 159, 0.63, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.14, 93, 94, 1.08, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 82, 82, 0.0, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.86, 154, 154, 0.0, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.17, 123, 122, -0.81, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.0, 120, 120, 0.0, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.88, 23, 23, 0.0, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.09, 122, 121, -0.82, false, '2025-11-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.17, 154, 155, 0.65, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.13, 21, 21, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.7, 142, 142, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.01, 18, 18, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 25, 25, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.27, 104, 104, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.91, 18, 18, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.79, 211, 210, -0.47, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.18, 228, 230, 0.88, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.98, 100, 99, -1.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.83, 213, 211, -0.94, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.89, 23, 23, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.18, 93, 94, 1.08, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.02, 120, 120, 0.0, false, '2025-11-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.9, 20, 20, 0.0, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.85, 23, 23, 0.0, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.73, 96, 95, -1.04, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.03, 161, 161, 0.0, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.96, 198, 199, 0.51, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.87, 17, 17, 0.0, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.05, 121, 118, -2.48, true, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.0, 200, 200, 0.0, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.1, 92, 92, 0.0, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.09, 204, 207, 1.47, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.76, 190, 188, -1.05, false, '2025-11-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.02, 20, 20, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.15, 166, 167, 0.6, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.17, 93, 94, 1.08, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.85, 19, 19, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.13, 21, 21, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.83, 77, 78, 1.3, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.91, 20, 20, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.93, 119, 121, 1.68, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.02, 161, 161, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.96, 119, 119, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.89, 19, 19, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 82, 82, 0.0, false, '2025-11-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.94, 18, 18, 0.0, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.08, 183, 180, -1.64, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.84, 154, 152, -1.3, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.11, 25, 25, 0.0, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.11, 102, 101, -0.98, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.05, 20, 20, 0.0, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.92, 216, 214, -0.93, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.06, 101, 102, 0.99, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 18, 18, 0.0, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.97, 18, 18, 0.0, false, '2025-11-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.87, 214, 214, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.09, 164, 164, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.08, 18, 18, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.23, 188, 188, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.88, 215, 216, 0.47, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.01, 200, 200, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 81, 81, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.98, 24, 24, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.08, 18, 18, 0.0, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.98, 199, 198, -0.5, false, '2025-11-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.08, 152, 153, 0.66, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.2, 229, 228, -0.44, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.3, 105, 106, 0.95, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.13, 83, 84, 1.2, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.2, 84, 85, 1.19, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.8, 17, 17, 0.0, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.23, 209, 211, 0.96, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.04, 121, 122, 0.83, false, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.81, 19, 18, -5.26, true, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.13, 205, 199, -2.93, true, '2025-11-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.03, 18, 17, -5.56, true, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.94, 149, 147, -1.34, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.98, 20, 19, -5.0, true, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 81, 82, 1.23, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.17, 83, 83, 0.0, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.99, 80, 80, 0.0, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.18, 124, 124, 0.0, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 84, 84, 0.0, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.92, 118, 117, -0.85, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.73, 143, 145, 1.4, false, '2025-11-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.79, 116, 116, 0.0, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.1, 92, 92, 0.0, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.76, 171, 172, 0.58, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.98, 80, 80, 0.0, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.02, 120, 116, -3.33, true, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.04, 181, 174, -3.87, true, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.83, 23, 23, 0.0, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.82, 76, 73, -3.95, true, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.87, 88, 86, -2.27, true, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 25, 25, 0.0, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.0, 100, 101, 1.0, false, '2025-11-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.18, 154, 152, -1.3, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.81, 19, 19, 0.0, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.07, 101, 102, 0.99, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.94, 24, 24, 0.0, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.18, 207, 202, -2.42, true, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.02, 20, 19, -5.0, true, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.83, 97, 97, 0.0, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.27, 125, 125, 0.0, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.19, 25, 25, 0.0, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.75, 86, 85, -1.16, false, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.86, 87, 83, -4.6, true, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.9, 18, 17, -5.56, true, '2025-11-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.88, 23, 23, 0.0, false, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.22, 124, 119, -4.03, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.76, 96, 93, -3.12, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.03, 81, 79, -2.47, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.99, 150, 149, -0.67, false, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.06, 91, 87, -4.4, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.75, 96, 95, -1.04, false, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.11, 225, 216, -4.0, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.98, 179, 179, 0.0, false, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.2, 21, 20, -4.76, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.93, 18, 18, 0.0, false, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.13, 205, 200, -2.44, true, '2025-11-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.01, 80, 80, 0.0, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.99, 160, 159, -0.62, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.12, 21, 20, -4.76, true, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.97, 100, 99, -1.0, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.16, 206, 199, -3.4, true, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.01, 220, 219, -0.45, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.02, 161, 162, 0.62, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.78, 116, 115, -0.86, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.89, 19, 19, 0.0, false, '2025-12-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.28, 126, 125, -0.79, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 21, 21, 0.0, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.14, 83, 82, -1.2, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.76, 209, 200, -4.31, true, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.22, 156, 155, -0.64, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.12, 19, 19, 0.0, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.86, 117, 116, -0.85, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.99, 90, 88, -2.22, true, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.87, 98, 97, -1.02, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 81, 78, -3.7, true, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.99, 100, 96, -4.0, true, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.1, 204, 203, -0.49, false, '2025-12-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.81, 76, 76, 0.0, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.86, 87, 87, 0.0, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.0, 160, 158, -1.25, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.18, 207, 210, 1.45, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.81, 152, 151, -0.66, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.09, 164, 165, 0.61, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.21, 94, 94, 0.0, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.96, 18, 18, 0.0, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.86, 194, 196, 1.03, false, '2025-12-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.71, 114, 114, 0.0, false, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.89, 215, 206, -4.19, true, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.77, 86, 86, 0.0, false, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.05, 20, 19, -5.0, true, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.11, 122, 117, -4.1, true, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.06, 182, 182, 0.0, false, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.87, 117, 119, 1.71, false, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.07, 24, 23, -4.17, true, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.05, 24, 24, 0.0, false, '2025-12-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.91, 88, 87, -1.14, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.02, 90, 91, 1.11, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.21, 188, 186, -1.06, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.05, 91, 92, 1.1, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.21, 229, 226, -1.31, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.1, 122, 123, 0.82, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.87, 17, 16, -5.88, true, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.1, 20, 20, 0.0, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 166, 167, 0.6, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.23, 104, 105, 0.96, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.88, 98, 98, 0.0, false, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.84, 174, 167, -4.02, true, '2025-12-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.13, 25, 24, -4.0, true, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.81, 192, 195, 1.56, false, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.09, 25, 24, -4.0, true, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.81, 87, 84, -3.45, true, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.77, 191, 188, -1.57, false, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.17, 83, 83, 0.0, false, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.12, 102, 98, -3.92, true, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.93, 18, 17, -5.56, true, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.76, 144, 143, -0.69, false, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.19, 84, 83, -1.19, false, '2025-12-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.1, 204, 196, -3.92, true, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.01, 80, 79, -1.25, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.1, 82, 81, -1.22, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.19, 168, 160, -4.76, true, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.97, 18, 18, 0.0, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.81, 23, 23, 0.0, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.07, 152, 152, 0.0, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.24, 125, 123, -1.6, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.94, 20, 20, 0.0, false, '2025-12-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.83, 117, 117, 0.0, false, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.04, 121, 115, -4.96, true, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.15, 93, 90, -3.23, true, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.11, 82, 81, -1.22, false, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.85, 154, 155, 0.65, false, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.05, 222, 215, -3.15, true, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.96, 18, 17, -5.56, true, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.24, 189, 190, 0.53, false, '2025-12-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.95, 99, 94, -5.05, true, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.11, 21, 20, -4.76, true, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.94, 20, 20, 0.0, false, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.13, 165, 158, -4.24, true, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.2, 208, 208, 0.0, false, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.97, 24, 24, 0.0, false, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.02, 24, 23, -4.17, true, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.97, 24, 24, 0.0, false, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.89, 19, 19, 0.0, false, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.91, 216, 213, -1.39, false, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.17, 167, 160, -4.19, true, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.89, 215, 204, -5.12, true, '2025-12-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.09, 183, 175, -4.37, true, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.98, 159, 160, 0.63, false, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.27, 125, 119, -4.8, true, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.95, 158, 157, -0.63, false, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.87, 175, 167, -4.57, true, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.9, 216, 215, -0.46, false, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.02, 80, 81, 1.25, false, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.93, 24, 24, 0.0, false, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.19, 124, 118, -4.84, true, '2025-12-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.95, 24, 24, 0.0, false, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.81, 17, 16, -5.88, true, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.98, 100, 95, -5.0, true, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.18, 84, 84, 0.0, false, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.88, 147, 147, 0.0, false, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.85, 154, 147, -4.55, true, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.15, 227, 228, 0.44, false, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.18, 103, 97, -5.83, true, '2025-12-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.93, 24, 24, 0.0, false, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.2, 155, 149, -3.87, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.86, 98, 97, -1.02, false, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.96, 218, 206, -5.5, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.97, 79, 77, -2.53, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.03, 81, 78, -3.7, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 18, 18, 0.0, false, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.78, 172, 172, 0.0, false, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.2, 94, 94, 0.0, false, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.8, 86, 82, -4.65, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.12, 82, 78, -4.88, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.88, 88, 83, -5.68, true, '2025-12-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.98, 24, 23, -4.17, true, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.91, 156, 155, -0.64, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.73, 96, 91, -5.21, true, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.14, 153, 146, -4.58, true, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.86, 23, 23, 0.0, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.16, 83, 84, 1.2, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.96, 24, 24, 0.0, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.72, 114, 115, 0.88, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.06, 81, 82, 1.23, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.92, 24, 23, -4.17, true, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.96, 20, 20, 0.0, false, '2025-12-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.07, 24, 23, -4.17, true, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.77, 172, 172, 0.0, false, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.1, 122, 116, -4.92, true, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.77, 172, 172, 0.0, false, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.19, 25, 24, -4.0, true, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 20, 20, 0.0, false, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.16, 154, 146, -5.19, true, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.97, 18, 17, -5.56, true, '2025-12-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.26, 104, 105, 0.96, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.76, 96, 96, 0.0, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.82, 153, 155, 1.31, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.08, 203, 205, 0.99, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.15, 19, 19, 0.0, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.8, 86, 85, -1.16, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.07, 20, 20, 0.0, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.04, 181, 180, -0.55, false, '2025-12-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.08, 18, 18, 0.0, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.08, 224, 225, 0.45, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.77, 115, 110, -4.35, true, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.09, 82, 82, 0.0, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.96, 179, 176, -1.68, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.83, 17, 17, 0.0, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.11, 164, 165, 0.61, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.88, 118, 120, 1.69, false, '2025-12-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 162, 160, -1.23, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.74, 144, 135, -6.25, true, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.81, 173, 165, -4.62, true, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.96, 18, 18, 0.0, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.09, 25, 24, -4.0, true, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 24, 24, 0.0, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.18, 25, 24, -4.0, true, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.83, 77, 74, -3.9, true, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.08, 152, 150, -1.32, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.11, 122, 123, 0.82, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.78, 96, 97, 1.04, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.25, 125, 124, -0.8, false, '2025-12-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.14, 102, 101, -0.98, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.76, 190, 190, 0.0, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.76, 115, 116, 0.87, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.03, 24, 24, 0.0, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.94, 217, 220, 1.38, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.9, 78, 78, 0.0, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.75, 96, 97, 1.04, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.01, 80, 81, 1.25, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.12, 21, 21, 0.0, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.99, 200, 201, 0.5, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.95, 20, 20, 0.0, false, '2025-12-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.03, 161, 162, 0.62, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.0, 20, 20, 0.0, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.11, 164, 155, -5.49, true, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.18, 154, 153, -0.65, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.23, 94, 94, 0.0, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.91, 78, 78, 0.0, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.29, 105, 104, -0.95, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.06, 81, 80, -1.23, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.91, 78, 78, 0.0, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.06, 202, 193, -4.46, true, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.02, 90, 85, -5.56, true, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.79, 86, 87, 1.16, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 163, 162, -0.61, false, '2025-12-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.71, 143, 141, -1.4, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.17, 227, 230, 1.32, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.96, 24, 23, -4.17, true, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.96, 18, 18, 0.0, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.89, 98, 98, 0.0, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.78, 210, 210, 0.0, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.06, 20, 20, 0.0, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.96, 24, 24, 0.0, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.8, 19, 18, -5.26, true, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.97, 149, 147, -1.34, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.95, 99, 98, -1.01, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.83, 193, 182, -5.7, true, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.02, 100, 101, 1.0, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.81, 192, 190, -1.04, false, '2025-12-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.88, 23, 23, 0.0, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.19, 187, 186, -0.53, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.92, 20, 20, 0.0, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.95, 218, 216, -0.92, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.97, 79, 78, -1.27, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.99, 18, 18, 0.0, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.99, 120, 121, 0.83, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.9, 176, 177, 0.57, false, '2025-12-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.19, 19, 19, 0.0, false, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.15, 93, 93, 0.0, false, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.71, 143, 141, -1.4, false, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.18, 167, 163, -2.4, true, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.71, 143, 143, 0.0, false, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.96, 149, 148, -0.67, false, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.78, 116, 109, -6.03, true, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.94, 178, 167, -6.18, true, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.17, 207, 207, 0.0, false, '2025-12-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.88, 176, 174, -1.14, false, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.16, 186, 176, -5.38, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.97, 219, 204, -6.85, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.18, 84, 79, -5.95, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.97, 159, 148, -6.92, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.04, 202, 189, -6.44, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.06, 152, 144, -5.26, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.89, 78, 77, -1.28, false, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.87, 77, 76, -1.3, false, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.82, 19, 18, -5.26, true, '2025-12-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.15, 21, 21, 0.0, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.8, 23, 22, -4.35, true, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.15, 21, 21, 0.0, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.21, 229, 231, 0.87, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.02, 120, 113, -5.83, true, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.92, 197, 197, 0.0, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.79, 192, 190, -1.04, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.1, 18, 18, 0.0, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.29, 105, 106, 0.95, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.21, 188, 187, -0.53, false, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.8, 76, 72, -5.26, true, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.93, 20, 19, -5.0, true, '2025-12-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.08, 91, 86, -5.49, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.87, 23, 21, -8.7, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.19, 21, 20, -4.76, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.91, 88, 83, -5.68, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.76, 144, 135, -6.25, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.09, 183, 172, -6.01, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.92, 177, 168, -5.08, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.06, 182, 172, -5.49, true, '2025-12-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.93, 20, 19, -5.0, true, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.14, 123, 123, 0.0, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.19, 84, 78, -7.14, true, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.82, 116, 115, -0.86, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.03, 161, 162, 0.62, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.23, 209, 210, 0.48, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.02, 90, 90, 0.0, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.74, 115, 116, 0.87, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.83, 87, 88, 1.15, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.81, 87, 87, 0.0, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.07, 20, 20, 0.0, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.94, 79, 79, 0.0, false, '2025-12-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.88, 155, 153, -1.29, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.99, 18, 17, -5.56, true, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.08, 82, 83, 1.22, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.01, 18, 18, 0.0, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.9, 23, 23, 0.0, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.84, 213, 212, -0.47, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.91, 78, 77, -1.28, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.22, 188, 188, 0.0, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.77, 86, 86, 0.0, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.01, 90, 89, -1.11, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.18, 207, 209, 0.97, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.06, 182, 183, 0.55, false, '2025-12-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.04, 222, 207, -6.76, true, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.84, 174, 173, -0.57, false, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.03, 221, 221, 0.0, false, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.79, 211, 196, -7.11, true, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.11, 18, 18, 0.0, false, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.95, 89, 88, -1.12, false, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.08, 91, 92, 1.1, false, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.02, 20, 20, 0.0, false, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.19, 187, 177, -5.35, true, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.2, 25, 24, -4.0, true, '2025-12-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.07, 91, 85, -6.59, true, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.82, 212, 197, -7.08, true, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.78, 144, 144, 0.0, false, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.94, 158, 149, -5.7, true, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.13, 226, 211, -6.64, true, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.22, 94, 88, -6.38, true, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.75, 96, 96, 0.0, false, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.16, 154, 156, 1.3, false, '2025-12-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.78, 96, 97, 1.04, false, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.08, 101, 101, 0.0, false, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.97, 20, 20, 0.0, false, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.96, 20, 19, -5.0, true, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.16, 93, 88, -5.38, true, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.16, 166, 164, -1.2, false, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.08, 122, 118, -3.28, true, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.77, 115, 107, -6.96, true, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.04, 162, 162, 0.0, false, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.21, 103, 102, -0.97, false, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.8, 86, 81, -5.81, true, '2025-12-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.0, 100, 100, 0.0, false, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.92, 20, 20, 0.0, false, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 21, 21, 0.0, false, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.12, 82, 82, 0.0, false, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.12, 82, 77, -6.1, true, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.09, 92, 93, 1.09, false, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.88, 118, 111, -5.93, true, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.99, 200, 199, -0.5, false, '2025-12-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.13, 83, 82, -1.2, false, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 24, 24, 0.0, false, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.29, 157, 148, -5.73, true, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.14, 21, 21, 0.0, false, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.9, 196, 197, 0.51, false, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.23, 125, 122, -2.4, true, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.07, 183, 182, -0.55, false, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.82, 212, 213, 0.47, false, '2026-01-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.86, 194, 193, -0.52, false, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.84, 213, 197, -7.51, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.23, 104, 104, 0.0, false, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.74, 115, 107, -6.96, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.79, 172, 172, 0.0, false, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.97, 24, 24, 0.0, false, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.07, 183, 170, -7.1, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.89, 196, 191, -2.55, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.89, 98, 99, 1.02, false, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.86, 146, 139, -4.79, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.82, 146, 145, -0.68, false, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.03, 221, 206, -6.79, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.15, 123, 114, -7.32, true, '2026-01-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.11, 204, 204, 0.0, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.9, 88, 87, -1.14, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.05, 81, 76, -6.17, true, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.12, 225, 222, -1.33, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.78, 172, 159, -7.56, true, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.06, 91, 84, -7.69, true, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.9, 118, 119, 0.85, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.15, 19, 19, 0.0, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.01, 18, 17, -5.56, true, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.24, 189, 177, -6.35, true, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.17, 123, 123, 0.0, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.8, 173, 172, -0.58, false, '2026-01-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 167, 165, -1.2, false, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.13, 25, 24, -4.0, true, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.82, 193, 191, -1.04, false, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.03, 121, 121, 0.0, false, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.29, 126, 127, 0.79, false, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.84, 17, 16, -5.88, true, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.9, 176, 175, -0.57, false, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.17, 227, 213, -6.17, true, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.05, 20, 20, 0.0, false, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.1, 20, 19, -5.0, true, '2026-01-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.23, 209, 193, -7.66, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.78, 144, 144, 0.0, false, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.0, 18, 17, -5.56, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.0, 18, 17, -5.56, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.82, 97, 90, -7.22, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.94, 178, 178, 0.0, false, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.06, 101, 94, -6.93, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.91, 177, 165, -6.78, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.09, 122, 113, -7.38, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.83, 193, 180, -6.74, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.18, 124, 115, -7.26, true, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.77, 191, 194, 1.57, false, '2026-01-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.94, 79, 75, -5.06, true, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 84, 85, 1.19, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.0, 200, 200, 0.0, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.11, 18, 18, 0.0, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.22, 209, 211, 0.96, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.21, 188, 188, 0.0, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.05, 24, 24, 0.0, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.09, 183, 182, -0.55, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.85, 194, 193, -0.52, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 162, 161, -0.62, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.09, 82, 82, 0.0, false, '2026-01-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.94, 178, 165, -7.3, true, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.09, 224, 216, -3.57, true, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.18, 207, 193, -6.76, true, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.83, 77, 77, 0.0, false, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.02, 90, 83, -7.78, true, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.75, 209, 207, -0.96, false, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.92, 216, 216, 0.0, false, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.11, 92, 92, 0.0, false, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.79, 86, 87, 1.16, false, '2026-01-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.06, 152, 154, 1.32, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 25, 25, 0.0, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.82, 76, 76, 0.0, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.89, 156, 158, 1.28, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.1, 224, 225, 0.45, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.81, 145, 145, 0.0, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.1, 164, 163, -0.61, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.12, 82, 83, 1.22, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.18, 25, 25, 0.0, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.17, 93, 92, -1.08, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.83, 17, 17, 0.0, false, '2026-01-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.08, 122, 112, -8.2, true, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.86, 214, 215, 0.47, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.12, 205, 190, -7.32, true, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.19, 21, 21, 0.0, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.99, 160, 160, 0.0, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.09, 92, 85, -7.61, true, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.82, 146, 137, -6.16, true, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.93, 217, 216, -0.46, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.1, 164, 166, 1.22, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.14, 102, 95, -6.86, true, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.97, 24, 24, 0.0, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.0, 120, 110, -8.33, true, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.91, 177, 178, 0.56, false, '2026-01-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.99, 90, 90, 0.0, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.14, 83, 83, 0.0, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.81, 145, 144, -0.69, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.17, 103, 102, -0.97, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.83, 117, 111, -5.13, true, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 82, 83, 1.22, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.27, 104, 105, 0.96, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.84, 154, 155, 0.65, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.81, 192, 192, 0.0, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.82, 153, 141, -7.84, true, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.94, 178, 165, -7.3, true, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 24, 24, 0.0, false, '2026-01-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.84, 174, 174, 0.0, false, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.05, 222, 205, -7.66, true, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.89, 88, 89, 1.14, false, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.18, 154, 152, -1.3, false, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.0, 160, 161, 0.62, false, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.03, 121, 111, -8.26, true, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.24, 104, 103, -0.96, false, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.09, 18, 17, -5.56, true, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.14, 166, 152, -8.43, true, '2026-01-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.1, 20, 20, 0.0, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.92, 89, 82, -7.87, true, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.87, 214, 214, 0.0, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.13, 92, 93, 1.09, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.88, 17, 17, 0.0, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 18, 18, 0.0, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.97, 24, 24, 0.0, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.96, 99, 98, -1.01, false, '2026-01-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.72, 143, 143, 0.0, false, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.09, 122, 122, 0.0, false, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.89, 156, 144, -7.69, true, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.23, 209, 211, 0.96, false, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.01, 90, 84, -6.67, true, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.98, 179, 165, -7.82, true, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.86, 98, 90, -8.16, true, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.17, 167, 167, 0.0, false, '2026-01-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.8, 145, 144, -0.69, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.14, 21, 21, 0.0, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.16, 166, 166, 0.0, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.06, 152, 139, -8.55, true, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.94, 149, 148, -0.67, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.05, 101, 101, 0.0, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.02, 150, 151, 0.67, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.82, 212, 210, -0.94, false, '2026-01-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.92, 20, 20, 0.0, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.85, 194, 197, 1.55, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.9, 98, 90, -8.16, true, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.24, 210, 192, -8.57, true, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.27, 104, 106, 1.92, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.03, 91, 83, -8.79, true, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.75, 209, 208, -0.48, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.79, 192, 194, 1.04, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.07, 121, 110, -9.09, true, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.22, 188, 190, 1.06, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.95, 18, 18, 0.0, false, '2026-01-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.12, 102, 103, 0.98, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.81, 17, 17, 0.0, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.9, 20, 20, 0.0, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.77, 172, 172, 0.0, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.15, 185, 187, 1.08, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.12, 184, 185, 0.54, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.13, 185, 186, 0.54, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.12, 184, 182, -1.09, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.87, 147, 148, 0.68, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.95, 198, 198, 0.0, false, '2026-01-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.79, 116, 117, 0.86, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.75, 115, 115, 0.0, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.7, 95, 95, 0.0, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.91, 88, 89, 1.14, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.11, 204, 206, 0.98, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.98, 80, 80, 0.0, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.1, 25, 23, -8.0, true, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.18, 186, 171, -8.06, true, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.81, 192, 185, -3.65, true, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.88, 155, 143, -7.74, true, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.74, 144, 143, -0.69, false, '2026-01-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.98, 199, 198, -0.5, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.84, 174, 175, 0.57, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.99, 20, 20, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.95, 24, 24, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.93, 18, 18, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 18, 18, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.81, 87, 87, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.75, 144, 135, -6.25, true, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 24, 24, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.02, 24, 24, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.01, 80, 80, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.25, 125, 125, 0.0, false, '2026-01-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.22, 94, 85, -9.57, true, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.87, 117, 116, -0.85, false, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.91, 177, 164, -7.34, true, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.96, 20, 20, 0.0, false, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.94, 149, 150, 0.67, false, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.74, 115, 104, -9.57, true, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.83, 153, 155, 1.31, false, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.94, 99, 90, -9.09, true, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.2, 208, 188, -9.62, true, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.22, 188, 188, 0.0, false, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.18, 19, 19, 0.0, false, '2026-01-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.1, 25, 25, 0.0, false, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.02, 120, 110, -8.33, true, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.84, 23, 23, 0.0, false, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.14, 166, 165, -0.6, false, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.1, 92, 84, -8.7, true, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.08, 224, 203, -9.38, true, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.16, 93, 90, -3.23, true, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.9, 156, 148, -5.13, true, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 20, 20, 0.0, false, '2026-01-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.83, 146, 145, -0.68, false, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.87, 77, 77, 0.0, false, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.08, 82, 83, 1.22, false, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.18, 186, 170, -8.6, true, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.94, 178, 161, -9.55, true, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.86, 117, 118, 0.85, false, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.23, 94, 93, -1.06, false, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.08, 163, 150, -7.98, true, '2026-01-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.93, 157, 143, -8.92, true, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.86, 117, 116, -0.85, false, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.73, 96, 96, 0.0, false, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.77, 210, 194, -7.62, true, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.88, 155, 141, -9.03, true, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.01, 160, 147, -8.12, true, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.19, 168, 153, -8.93, true, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.11, 225, 222, -1.33, false, '2026-01-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.0, 120, 111, -7.5, true, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.88, 19, 17, -10.53, true, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.21, 124, 113, -8.87, true, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.18, 21, 21, 0.0, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.99, 160, 159, -0.62, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.81, 173, 172, -0.58, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.16, 123, 121, -1.63, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.86, 19, 19, 0.0, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.12, 21, 19, -9.52, true, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.11, 92, 91, -1.09, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.14, 226, 228, 0.88, false, '2026-01-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.11, 122, 120, -1.64, false, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.25, 231, 229, -0.87, false, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.08, 163, 162, -0.61, false, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.22, 104, 106, 1.92, false, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.12, 153, 152, -0.65, false, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.04, 151, 138, -8.61, true, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.86, 17, 16, -5.88, true, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.99, 20, 18, -10.0, true, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.09, 82, 74, -9.76, true, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.05, 18, 18, 0.0, false, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.98, 80, 73, -8.75, true, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.81, 116, 106, -8.62, true, '2026-01-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.88, 176, 160, -9.09, true, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.88, 98, 89, -9.18, true, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.12, 122, 123, 0.82, false, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.2, 187, 171, -8.56, true, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.82, 153, 139, -9.15, true, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.07, 203, 185, -8.87, true, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.72, 143, 141, -1.4, false, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.92, 20, 20, 0.0, false, '2026-01-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.86, 175, 175, 0.0, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.19, 187, 187, 0.0, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.16, 83, 82, -1.2, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.05, 24, 24, 0.0, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.89, 78, 71, -8.97, true, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.78, 144, 131, -9.03, true, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.04, 162, 163, 0.62, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.09, 20, 20, 0.0, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.97, 20, 20, 0.0, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.06, 24, 24, 0.0, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.17, 207, 210, 1.45, false, '2026-01-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.13, 25, 23, -8.0, true, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.01, 200, 199, -0.5, false, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.21, 208, 189, -9.13, true, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.89, 19, 19, 0.0, false, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.82, 17, 17, 0.0, false, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 3.91, 18, 18, 0.0, false, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.25, 125, 126, 0.8, false, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.07, 18, 16, -11.11, true, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 5.88, 118, 117, -0.85, false, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.84, 77, 69, -10.39, true, '2026-01-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.09, 25, 25, 0.0, false, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '2baa36bb-c60b-4b2d-b70c-082b4f414485', 'Donuts', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 3.83, 77, 70, -9.09, true, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 6.0, 120, 119, -0.83, false, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f2efa202-9238-4d43-97de-2f317916ea32', 'Khari Biscuit', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.19, 228, 206, -9.65, true, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.1, 152, 151, -0.66, false, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '81c44d9c-0b33-49f1-bfbf-85f6487def7a', 'Plain Bun', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 6.19, 124, 113, -8.87, true, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.01, 24, 22, -8.33, true, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.92, 177, 161, -9.04, true, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '03412fac-815a-47b3-8bbe-29b32baa280c', 'Chocolate Cake', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 4.1, 18, 16, -11.11, true, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '7a562146-c312-4929-88e0-e5eaf784e9ed', 'Dry Cake', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 3.88, 23, 23, 0.0, false, '2026-01-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.81, 87, 86, -1.15, false, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'e2e664d1-c8d0-472c-9187-0d5884fcd898', 'Bread Rusk', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.9, 148, 148, 0.0, false, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '41c3dd64-21a0-483f-b36d-56004580fe17', 'Chicken Patties', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 5.23, 94, 93, -1.06, false, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'f82dfdfe-4374-4ab6-aca1-0af16e7a341a', 'Chocolate Chip Cookies', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.03, 161, 162, 0.62, false, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '663135c8-bb30-4025-b181-a811b7c53f87', 'Cream Bun', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 6.11, 102, 103, 0.98, false, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '9a2feaf4-690a-427e-b3e9-9ede03998bad', 'Naan Khatai', '428f50c9-a808-41fa-8758-16a654b3d052', 'morning', 5.09, 183, 168, -8.2, true, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', '3594e81b-f934-46c5-b5be-9ba306331161', 'Kara Biscuit', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', 'evening', 4.79, 192, 191, -0.52, false, '2026-01-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'baa0e4c5-7534-4f74-96b0-879ab0841f23', 'Fruit Cake', '67d0433a-75d3-4866-8a54-248a5b857ec0', 'morning', 4.04, 20, 20, 0.0, false, '2026-01-29 08:00:00');


INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 315, 4711.0, '2025-11-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 54, 18886.0, '2025-11-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 492, 9697.0, '2025-11-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 206, 5133.0, '2025-11-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 144, 4258.0, '2025-11-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 220, 3296.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 153, 2409.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Fruit Cake', 7, 2426.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Bread Rusk', 514, 10266.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 227, 5590.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Donuts', 75, 3327.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 156, 4035.0, '2025-11-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 52, 771.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 178, 3189.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 19, 6597.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 23, 6399.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 190, 3749.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 146, 3635.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 86, 2969.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 224, 13264.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 140, 6226.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 18, 533.0, '2025-11-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 349, 5197.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 332, 5917.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 2, 697.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 2, 559.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Bread Rusk', 20, 399.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 223, 5532.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 8, 276.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 222, 13311.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 205, 2847.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 23, 966.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 144, 4299.0, '2025-11-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 389, 5756.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 403, 7252.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 20, 4995.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 125, 2463.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 125, 3110.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 81, 2825.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 178, 10530.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 208, 2539.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 15, 5733.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 4, 180.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 20, 561.0, '2025-11-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 50, 748.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 329, 5876.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 18, 6298.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 4, 1112.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 166, 3285.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 26, 649.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Cream Bun', 186, 6499.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 93, 5517.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 202, 2812.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 19, 7893.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 149, 4415.0, '2025-11-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 197, 2953.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 220, 3940.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 18, 6271.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 290, 5751.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 98, 2441.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 24, 838.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 8, 476.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 415, 5761.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Cake', 17, 7097.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 155, 4618.0, '2025-11-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 9, 133.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 183, 3266.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Fruit Cake', 3, 1048.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 19, 5298.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 267, 5277.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 240, 5952.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 5, 175.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 399, 5580.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 17, 7065.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 72, 3237.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 407, 12032.0, '2025-11-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 1, 15.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 167, 3004.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 33, 11460.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 23, 6383.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 54, 1064.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 312, 7745.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 291, 4065.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 32, 13280.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 9, 400.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 215, 5484.0, '2025-11-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 502, 9033.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 6, 2069.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 49, 13699.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 6, 104.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 53, 1306.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 18, 251.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 36, 15078.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 146, 6486.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 170, 5067.0, '2025-11-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 193, 2863.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 608, 10868.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 18, 6207.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Dry Cake', 25, 6931.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 1, 20.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 99, 2466.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 195, 2723.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 25, 9337.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 16, 716.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 279, 7431.0, '2025-11-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 6, 90.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 177, 3177.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Fruit Cake', 36, 10757.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 3, 828.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 240, 4729.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 21, 523.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 223, 3090.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 1, 416.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 64, 2849.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 187, 5564.0, '2025-11-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 182, 2692.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 15, 267.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 24, 8374.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 479, 9444.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 1, 25.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 253, 15090.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 225, 3139.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 14, 622.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 165, 4941.0, '2025-11-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 350, 5195.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 159, 2666.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 19, 6623.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 168, 3322.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 306, 7618.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 92, 3194.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 92, 5452.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 210, 2710.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 16, 6643.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 1, 45.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 27, 695.0, '2025-11-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 246, 3237.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 23, 408.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 24, 8383.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 21, 5240.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 140, 2766.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 49, 1219.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 96, 3336.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 279, 16675.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 431, 5952.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 2, 840.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 5, 132.0, '2025-11-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 403, 5973.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 172, 3072.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 1, 349.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 2, 553.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 156, 3087.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 4, 99.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 168, 5870.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 90, 5360.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 397, 5495.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 135, 3995.0, '2025-11-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 190, 2812.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 183, 2919.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 19, 6560.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Bread Rusk', 144, 2837.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 214, 4672.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Cream Bun', 36, 1247.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 14, 836.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 514, 7099.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 20, 591.0, '2025-11-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 37, 550.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 160, 2839.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 21, 6722.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 22, 6068.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 13, 260.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 231, 5722.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 4, 123.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 1, 56.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 374, 5228.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 31, 12847.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 132, 5911.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 2, 60.0, '2025-11-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 539, 8073.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 24, 428.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 1, 348.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Dry Cake', 3, 838.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 145, 2884.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 35, 869.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 1, 35.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 237, 14037.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 75, 1036.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 22, 9235.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 31, 1389.0, '2025-11-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 69, 1025.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 1, 18.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 19, 5285.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 9, 179.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 347, 8608.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 109, 6475.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 8, 110.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 2, 832.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 72, 3224.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 287, 8512.0, '2025-11-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 5, 68.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Fruit Cake', 17, 5929.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 47, 12983.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Bread Rusk', 271, 5404.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 131, 3246.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 172, 5946.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 93, 5561.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 571, 7989.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Cake', 31, 12866.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 10, 447.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 22, 658.0, '2025-11-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 704, 10411.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 22, 7607.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 26, 7249.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 27, 532.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 104, 2588.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 120, 4183.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 108, 5616.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 74, 1032.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 18, 7497.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Donuts', 1, 45.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 144, 4307.0, '2025-11-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 88, 1313.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 81, 28101.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 2, 553.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 1, 18.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 243, 6051.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 5, 175.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 84, 4972.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 6, 83.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 4, 1661.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 130, 5816.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 302, 9054.0, '2025-11-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 3, 45.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 164, 2762.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 36, 12492.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 23, 6057.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 16, 394.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 171, 5983.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 13, 779.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 198, 2745.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 52, 21584.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 28, 1251.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 185, 5519.0, '2025-11-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 369, 5504.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 177, 3185.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 3, 1047.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 22, 6074.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 2, 50.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 29, 1002.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 1, 60.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 360, 5014.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 34, 14126.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 79, 3067.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 145, 4326.0, '2025-11-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 367, 5483.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 24, 430.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 18, 6275.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 3, 838.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 125, 2471.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 116, 2878.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 101, 3533.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 270, 3779.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 19, 7889.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 160, 7144.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 28, 774.0, '2025-11-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 58, 750.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 3, 54.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 17, 5934.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 1, 279.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 281, 5550.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 239, 5891.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 9, 313.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 43, 598.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 16, 6692.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 288, 12835.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 5, 149.0, '2025-11-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 13, 192.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 330, 5891.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 3, 1038.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 42, 10209.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 36, 711.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 217, 5348.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 90, 3131.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 148, 8788.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Khari Biscuit', 2, 28.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 3, 1153.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 181, 8090.0, '2025-11-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 195, 2884.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 14, 229.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 32, 11133.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 45, 12461.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 129, 2576.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 123, 3049.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 183, 6365.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chicken Patties', 163, 9643.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 15, 6239.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 23, 1032.0, '2025-11-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Kara Biscuit', 169, 2512.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 153, 2739.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 21, 7303.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 29, 8105.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 148, 2949.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 128, 3177.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 183, 6329.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 114, 6780.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 183, 2542.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 17, 7074.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 66, 2754.0, '2025-11-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 225, 3365.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 24, 427.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 39, 13535.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 3, 785.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 23, 456.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 125, 3113.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 118, 4117.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 7, 417.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 202, 2803.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 3, 1254.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 91, 4061.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 299, 8921.0, '2025-12-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 200, 2995.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 4, 72.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 21, 7297.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 1, 277.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 152, 3016.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 223, 5542.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 199, 6917.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 79, 4712.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 212, 2946.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 15, 6282.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 132, 5879.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 18, 536.0, '2025-12-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 357, 5307.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 5, 1739.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 6, 118.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 22, 544.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 7, 242.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 156, 9301.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Khari Biscuit', 33, 461.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 21, 8762.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 89, 3948.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 448, 13341.0, '2025-12-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Kara Biscuit', 58, 865.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 170, 3049.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 16, 5521.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 39, 10914.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 1, 20.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 338, 8369.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 99, 5877.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 190, 2649.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 1, 419.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Donuts', 18, 803.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 26, 773.0, '2025-12-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 6, 89.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 338, 6083.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Fruit Cake', 20, 6919.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 8, 2214.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 126, 3118.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 168, 5815.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 270, 16039.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 210, 2917.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 14, 5854.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 2, 89.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 162, 4787.0, '2025-12-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 314, 4699.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 25, 446.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 3, 1036.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 45, 12511.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 131, 2614.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 10, 248.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Cream Bun', 125, 4334.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chicken Patties', 86, 5087.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 34, 472.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 17, 7090.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 156, 7006.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 9, 270.0, '2025-12-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 242, 3596.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 2, 36.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 18, 5951.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 21, 5842.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 152, 3008.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 111, 2734.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 7, 245.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 18, 1080.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 3, 42.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 18, 7547.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 148, 6589.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Chip Cookies', 142, 4216.0, '2025-12-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 23, 344.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 174, 3125.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 2, 690.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 5, 1397.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 10, 198.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 202, 5013.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 1, 35.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 87, 5145.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 185, 2584.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 16, 6635.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 89, 3972.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 163, 4834.0, '2025-12-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 181, 2689.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 14, 250.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 48, 16718.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 57, 15761.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 2, 38.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 35, 874.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Cream Bun', 87, 3013.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 5, 296.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 404, 5571.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 3, 1246.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 12, 539.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 271, 8113.0, '2025-12-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 25, 372.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 330, 5858.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 10, 3455.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 36, 9975.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 207, 5133.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 6, 209.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 227, 3131.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 73, 3258.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 324, 8335.0, '2025-12-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 2, 30.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 12, 215.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 1, 349.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 21, 5815.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 129, 2553.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 34, 844.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 156, 5460.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 240, 3332.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Cake', 14, 5820.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Donuts', 86, 3828.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Chip Cookies', 168, 5040.0, '2025-12-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 1, 15.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 155, 2789.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 24, 6630.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 138, 2731.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 3, 75.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 125, 4361.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 211, 12615.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 198, 2738.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 19, 7923.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 193, 8674.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Chip Cookies', 28, 837.0, '2025-12-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 17, 304.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 16, 5568.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 93, 25680.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 160, 3163.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 109, 2708.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 85, 2963.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chicken Patties', 44, 2603.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 24, 333.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 1, 367.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 204, 9090.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 134, 3966.0, '2025-12-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 315, 5624.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 21, 7255.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 46, 12778.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 133, 2630.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 101, 2516.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 14, 485.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 4, 237.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 3, 42.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 16, 6649.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 9, 404.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 21, 629.0, '2025-12-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 166, 2485.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 173, 3072.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 18, 6257.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 5, 1399.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 26, 517.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 20, 493.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 171, 5928.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 78, 4093.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 19, 7102.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 1, 41.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 129, 3838.0, '2025-12-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 37, 552.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 180, 3239.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 5, 1745.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 1, 276.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 2, 40.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 190, 4498.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Cream Bun', 28, 972.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 7, 414.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 214, 2975.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Cake', 34, 14265.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Donuts', 73, 3253.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 171, 5058.0, '2025-12-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 2, 30.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 171, 3069.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 61, 16920.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 231, 4059.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 251, 5684.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 84, 2896.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 11, 152.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 19, 7888.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Donuts', 72, 3202.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 168, 5014.0, '2025-12-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 319, 4755.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 23, 390.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Fruit Cake', 38, 13139.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 29, 8099.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 47, 928.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 139, 3458.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 191, 6649.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 182, 2513.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 1, 418.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 143, 6365.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 11, 289.0, '2025-12-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 251, 3738.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 5, 89.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 20, 6923.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 5, 1234.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 142, 2831.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 13, 323.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 121, 3876.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 216, 12801.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 34, 474.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 216, 9577.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 409, 12201.0, '2025-12-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 340, 5062.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 36, 12505.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 39, 10771.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 263, 5222.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 2, 50.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 252, 8703.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 44, 2336.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 397, 5519.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 15, 6289.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 39, 1591.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 68, 2025.0, '2025-12-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Kara Biscuit', 37, 477.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 318, 5720.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Fruit Cake', 24, 8295.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 27, 7548.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 39, 774.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 103, 2574.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Cream Bun', 44, 1540.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chicken Patties', 5, 296.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Khari Biscuit', 235, 3282.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 19, 7895.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 73, 3237.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 4, 120.0, '2025-12-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 193, 2852.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 172, 3083.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 1, 346.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 5, 1398.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 412, 8137.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 106, 2630.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 7, 243.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 80, 4785.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 26, 314.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 17, 6430.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 12, 535.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 151, 4515.0, '2025-12-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Kara Biscuit', 196, 2925.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 374, 6711.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 15, 5238.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 142, 2814.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 17, 422.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chicken Patties', 11, 652.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 194, 2687.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 4, 1674.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 205, 7895.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 131, 3905.0, '2025-12-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 381, 5651.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 181, 2908.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 52, 18099.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 19, 5267.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 22, 434.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 106, 2622.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 89, 3112.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 3, 179.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 224, 3121.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 16, 6642.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 90, 4047.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Chip Cookies', 27, 810.0, '2025-12-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Kara Biscuit', 21, 311.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 455, 8089.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Fruit Cake', 27, 9438.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Dry Cake', 23, 6418.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 130, 2573.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 10, 248.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Cream Bun', 15, 518.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 163, 8629.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 18, 250.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 2, 829.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 8, 355.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 2, 60.0, '2025-12-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 202, 2989.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 71, 1276.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 36, 12478.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 1, 276.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 8, 159.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 338, 8395.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 2, 66.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 224, 13385.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 1, 14.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 147, 6599.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 151, 4474.0, '2025-12-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Kara Biscuit', 211, 3142.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 337, 6002.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 8, 2498.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 21, 5836.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 1, 20.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 15, 370.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 200, 11843.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 200, 2796.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 32, 13259.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Donuts', 154, 6898.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 141, 4167.0, '2025-12-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 6, 89.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 343, 5506.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 16, 5574.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 24, 6110.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 2, 50.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 163, 9695.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Khari Biscuit', 559, 7730.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Cake', 18, 7485.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 16, 717.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 19, 567.0, '2025-12-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 1, 15.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 40, 618.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 4, 1398.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 2, 560.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 269, 5067.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Cream Bun', 92, 3214.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 189, 11313.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 416, 5778.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Cake', 3, 1245.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 2, 90.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 147, 4363.0, '2025-12-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 8, 142.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 37, 12888.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 26, 520.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 216, 5051.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 278, 9611.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 180, 10712.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 59, 826.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 294, 8799.0, '2025-12-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 173, 2575.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 1, 18.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 39, 13460.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 5, 100.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 113, 2790.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 109, 3781.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 99, 5329.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 8, 112.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Donuts', 140, 6228.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Chip Cookies', 31, 926.0, '2025-12-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 187, 2799.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 174, 3091.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 21, 7332.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 20, 5564.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 135, 2695.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 110, 2709.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 15, 520.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 5, 297.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 200, 2772.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 96, 4256.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 6, 178.0, '2026-01-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 389, 5756.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 314, 5609.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 3, 1049.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 25, 6982.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 241, 4783.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 232, 5748.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Cream Bun', 178, 6167.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 1, 60.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 356, 4931.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 4, 179.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 1, 30.0, '2026-01-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 212, 3169.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 479, 8576.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 1, 345.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 3, 829.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 46, 908.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 214, 5348.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 24, 768.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 163, 9640.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 258, 3569.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 34, 14273.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 72, 3224.0, '2026-01-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 177, 2618.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 224, 4027.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Fruit Cake', 38, 13149.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 22, 5247.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 8, 158.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 256, 6326.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 3, 103.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 8, 476.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Khari Biscuit', 202, 2812.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 16, 6650.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 4, 178.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 136, 4075.0, '2026-01-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 541, 8110.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 303, 5396.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Fruit Cake', 1, 347.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 2, 555.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 137, 2703.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 207, 5163.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 164, 5680.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 31, 429.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 31, 12940.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 1, 44.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 27, 799.0, '2026-01-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 576, 8613.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 402, 7157.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 21, 5317.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 9, 178.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 46, 1137.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 18, 622.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 6, 84.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 20, 7440.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 229, 10169.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 141, 4226.0, '2026-01-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 228, 3381.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 158, 2812.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 3, 828.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 3, 75.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 2, 70.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 244, 14616.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 569, 7896.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 3, 1246.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 76, 3397.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 19, 569.0, '2026-01-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 52, 770.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 29, 520.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Dry Cake', 48, 13422.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 261, 5157.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 101, 5280.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 260, 3626.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 16, 6679.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Donuts', 167, 7479.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 261, 7752.0, '2026-01-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 164, 2454.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 160, 2861.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 20, 6433.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 24, 6707.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 152, 2720.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 182, 4535.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 80, 2766.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 77, 4600.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 442, 6107.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 1, 417.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 6, 270.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 312, 9333.0, '2026-01-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 215, 3208.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 156, 2794.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 1, 328.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 25, 6926.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 140, 2772.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 134, 3310.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 190, 6228.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 88, 4831.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 22, 306.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 133, 5979.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 324, 9687.0, '2026-01-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 7, 104.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 190, 3419.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 1, 277.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Bread Rusk', 164, 3279.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 123, 3066.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 114, 3951.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 97, 5818.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 180, 2315.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 15, 5706.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 32, 1421.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 290, 8612.0, '2026-01-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 12, 214.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 17, 5864.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 22, 6142.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 13, 257.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 4, 99.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 102, 3528.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 164, 9698.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 217, 3020.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 35, 12766.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 1, 45.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 60, 1685.0, '2026-01-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 175, 2595.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 153, 2746.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 2, 699.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 2, 555.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 135, 2663.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 116, 2893.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 98, 3389.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 93, 5539.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 20, 278.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 2, 837.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 292, 8758.0, '2026-01-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 34, 509.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 11, 187.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 18, 6257.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 495, 9856.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 7, 163.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 90, 3122.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 11, 656.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 177, 2347.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 187, 4919.0, '2026-01-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Kara Biscuit', 478, 7109.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 181, 3233.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Fruit Cake', 23, 7971.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 85, 1700.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 95, 2340.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Cream Bun', 199, 6929.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 80, 4760.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Khari Biscuit', 216, 3010.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 16, 6666.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 8, 238.0, '2026-01-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 262, 3890.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 749, 13393.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 19, 6579.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 154, 3069.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 14, 330.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Cream Bun', 103, 3566.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chicken Patties', 4, 238.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 27, 374.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 18, 7454.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chocolate Chip Cookies', 2, 60.0, '2026-01-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 403, 6035.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 286, 5100.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 2, 699.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 21, 5176.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 141, 2779.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Plain Bun', 188, 4648.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Cream Bun', 98, 3144.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 82, 4306.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 2, 25.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 1, 415.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Donuts', 76, 3401.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 137, 4105.0, '2026-01-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Kara Biscuit', 191, 2831.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 214, 3838.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 18, 6296.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Dry Cake', 63, 17537.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 117, 2306.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 138, 3436.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 12, 419.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 82, 4882.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 31, 12832.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 78, 3007.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 6, 180.0, '2026-01-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 214, 3176.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 325, 5774.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 21, 7301.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 11, 3065.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 164, 2998.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 241, 6015.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 87, 3002.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chicken Patties', 85, 5044.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Cake', 20, 8374.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 5, 223.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 138, 4102.0, '2026-01-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 12, 164.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 42, 746.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Fruit Cake', 18, 6296.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Dry Cake', 44, 12159.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Bread Rusk', 11, 219.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 114, 2812.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 5, 173.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 181, 10789.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 172, 2128.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Cake', 4, 1672.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 1, 41.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 275, 8244.0, '2026-01-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Naan Khatai', 279, 4630.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 3, 1039.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 3, 785.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Bread Rusk', 119, 2345.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Plain Bun', 103, 2566.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Chicken Patties', 88, 5212.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 28, 390.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 153, 6789.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 178, 5260.0, '2026-01-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 53, 951.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Dry Cake', 1, 276.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 22, 436.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Plain Bun', 124, 3072.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 89, 3092.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 9, 539.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'digital', 'Khari Biscuit', 405, 5656.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 6, 267.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 537, 15926.0, '2026-01-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Naan Khatai', 157, 2825.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 68, 23781.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 5, 99.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 313, 7772.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Cream Bun', 6, 210.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chicken Patties', 81, 4835.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Khari Biscuit', 233, 3238.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Donuts', 1, 45.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 202, 6056.0, '2026-01-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 18, 319.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 25, 8745.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Bread Rusk', 240, 4775.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 221, 5460.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 96, 3311.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chicken Patties', 11, 656.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Khari Biscuit', 207, 2894.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 33, 13835.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 135, 6022.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 165, 4921.0, '2026-01-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 149, 2228.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Naan Khatai', 282, 5000.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 17, 5898.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 164, 3262.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Plain Bun', 158, 3935.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 95, 3309.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 1, 60.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 29, 404.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 1, 414.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 11, 494.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Chocolate Chip Cookies', 153, 4571.0, '2026-01-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 232, 3460.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 345, 6156.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 41, 14345.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Dry Cake', 42, 11663.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Bread Rusk', 138, 2731.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 14, 307.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Cream Bun', 5, 174.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Khari Biscuit', 2, 28.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 128, 5745.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Chip Cookies', 148, 4399.0, '2026-01-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Kara Biscuit', 350, 5229.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Naan Khatai', 63, 1121.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Fruit Cake', 20, 6902.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Dry Cake', 24, 6673.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 19, 375.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 225, 5569.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Cake', 43, 17998.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Donuts', 89, 3964.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chocolate Chip Cookies', 25, 744.0, '2026-01-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Kara Biscuit', 43, 637.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Naan Khatai', 142, 2537.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Fruit Cake', 2, 690.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Dry Cake', 66, 18247.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Bread Rusk', 134, 2646.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Plain Bun', 234, 5430.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 170, 2366.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Cake', 19, 7935.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Donuts', 62, 2761.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Chocolate Chip Cookies', 3, 89.0, '2026-01-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Kara Biscuit', 193, 2858.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Naan Khatai', 165, 2949.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Fruit Cake', 18, 6211.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Dry Cake', 7, 1954.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'digital', 'Bread Rusk', 142, 2810.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Plain Bun', 17, 421.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Cream Bun', 92, 3172.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', 'morning', 'cash', 'Chicken Patties', 147, 8712.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Khari Biscuit', 35, 483.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'digital', 'Chocolate Cake', 4, 1658.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'c49efc15-2d74-4002-8586-c827c6c854a7', 'morning', 'cash', 'Donuts', 12, 540.0, '2026-01-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'a37994aa-e13d-4952-b957-0e80d8503493', 'morning', 'cash', 'Chocolate Chip Cookies', 147, 3989.0, '2026-01-29 14:00:00');


INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8990cc3b-7046-4eb1-89a4-be6767125abe', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 32.8, "unitPrice": 173.2, "unit": "kg"}]', 5594.4, 'received', '2025-11-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8990cc3b-7046-4eb1-89a4-be6767125abe', '[{"materialName": "Sugar", "quantity": 32.3, "unitPrice": 173.2, "unit": "kg"}]', 5594.4, false, '2025-11-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e71fa063-1bfa-4d88-abaa-7cf8d56adffc', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 39.2, "unitPrice": 15.5, "unit": "unit"}]', 599.9, 'received', '2025-11-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e71fa063-1bfa-4d88-abaa-7cf8d56adffc', '[{"materialName": "Packaging", "quantity": 38.7, "unitPrice": 15.5, "unit": "unit"}]', 599.9, false, '2025-11-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ce0b44ac-3338-485c-a216-8216ea863308', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 51.9, "unitPrice": 142.8, "unit": "kg"}]', 7439.9, 'received', '2025-11-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ce0b44ac-3338-485c-a216-8216ea863308', '[{"materialName": "Maida Flour", "quantity": 52.1, "unitPrice": 142.8, "unit": "kg"}]', 7439.9, false, '2025-11-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8bf863f4-d83c-4e6d-a30d-1a808a866cdc', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 50.3, "unitPrice": 1061.1, "unit": "kg"}]', 47537.3, 'discrepancy', '2025-11-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8bf863f4-d83c-4e6d-a30d-1a808a866cdc', '[{"materialName": "Milk Powder", "quantity": 44.8, "unitPrice": 1061.1, "unit": "kg"}]', 47537.3, true, '2025-11-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e8c7859c-e422-4e48-bdb3-e2b55a6847e7', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Vanilla Essence", "quantity": 26.3, "unitPrice": 2445.4, "unit": "litre"}]', 63824.9, 'received', '2025-11-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e8c7859c-e422-4e48-bdb3-e2b55a6847e7', '[{"materialName": "Vanilla Essence", "quantity": 26.1, "unitPrice": 2445.4, "unit": "litre"}]', 63824.9, false, '2025-11-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8ca9a8b5-3450-4d31-b38c-f3d9608064e0', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 13.2, "unitPrice": 327.9, "unit": "dozen"}]', 4295.5, 'received', '2025-11-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8ca9a8b5-3450-4d31-b38c-f3d9608064e0', '[{"materialName": "Eggs", "quantity": 13.1, "unitPrice": 327.9, "unit": "dozen"}]', 4295.5, false, '2025-11-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('72a65268-c08d-467c-8773-07c09a72129e', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 44.2, "unitPrice": 926.5, "unit": "kg"}]', 40395.4, 'received', '2025-11-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('72a65268-c08d-467c-8773-07c09a72129e', '[{"materialName": "Butter", "quantity": 43.6, "unitPrice": 926.5, "unit": "kg"}]', 40395.4, false, '2025-11-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('02653610-a2a6-4d86-886b-47f7a967bf3b', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 22.3, "unitPrice": 144.3, "unit": "kg"}]', 3217.9, 'received', '2025-11-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('02653610-a2a6-4d86-886b-47f7a967bf3b', '[{"materialName": "Maida Flour", "quantity": 22.3, "unitPrice": 144.3, "unit": "kg"}]', 3217.9, false, '2025-11-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('02f00c14-f136-4753-9913-523dc61246fc', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Salt", "quantity": 49.2, "unitPrice": 62.9, "unit": "kg"}]', 3063.2, 'received', '2025-11-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('02f00c14-f136-4753-9913-523dc61246fc', '[{"materialName": "Salt", "quantity": 48.7, "unitPrice": 62.9, "unit": "kg"}]', 3063.2, false, '2025-11-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('dc8d95fa-0606-4143-b9cf-0d44eba362cf', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 53.8, "unitPrice": 470.8, "unit": "kg"}]', 24999.5, 'received', '2025-11-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('dc8d95fa-0606-4143-b9cf-0d44eba362cf', '[{"materialName": "Dalda Ghee", "quantity": 53.1, "unitPrice": 470.8, "unit": "kg"}]', 24999.5, false, '2025-11-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('22ef09b2-9242-49ce-af6e-3bd0a355e244', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 48.4, "unitPrice": 164.8, "unit": "kg"}]', 7926.9, 'received', '2025-11-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('22ef09b2-9242-49ce-af6e-3bd0a355e244', '[{"materialName": "Sugar", "quantity": 48.1, "unitPrice": 164.8, "unit": "kg"}]', 7926.9, false, '2025-11-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bac667a8-6ced-496e-903b-c7fc4c7615c8', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 49.4, "unitPrice": 586.6, "unit": "kg"}]', 28743.4, 'received', '2025-11-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bac667a8-6ced-496e-903b-c7fc4c7615c8', '[{"materialName": "Baking Powder", "quantity": 49.0, "unitPrice": 586.6, "unit": "kg"}]', 28743.4, false, '2025-11-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c6c8f7b2-97a0-4d52-a6f9-d8ee5ed7251e', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 18.0, "unitPrice": 321.7, "unit": "dozen"}]', 5726.3, 'received', '2025-11-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c6c8f7b2-97a0-4d52-a6f9-d8ee5ed7251e', '[{"materialName": "Eggs", "quantity": 17.8, "unitPrice": 321.7, "unit": "dozen"}]', 5726.3, false, '2025-11-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a1cc4461-1e1a-426a-93e0-c71dd6be7410', '7979ff90-0aa7-41c6-94d4-d9d208ca2f08', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Cocoa Powder", "quantity": 21.5, "unitPrice": 1889.1, "unit": "kg"}]', 40804.6, 'received', '2025-11-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a1cc4461-1e1a-426a-93e0-c71dd6be7410', '[{"materialName": "Cocoa Powder", "quantity": 21.6, "unitPrice": 1889.1, "unit": "kg"}]', 40804.6, false, '2025-11-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('53549469-5a1a-45e7-a780-4e05f0f2bb42', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 48.9, "unitPrice": 148.3, "unit": "kg"}]', 7148.1, 'received', '2025-11-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('53549469-5a1a-45e7-a780-4e05f0f2bb42', '[{"materialName": "Maida Flour", "quantity": 48.2, "unitPrice": 148.3, "unit": "kg"}]', 7148.1, false, '2025-11-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f3ff02ea-1e30-4cc4-8b38-fc6754f87258', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 13.5, "unitPrice": 15.3, "unit": "unit"}]', 208.1, 'received', '2025-11-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f3ff02ea-1e30-4cc4-8b38-fc6754f87258', '[{"materialName": "Packaging", "quantity": 13.6, "unitPrice": 15.3, "unit": "unit"}]', 208.1, false, '2025-11-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('68229394-fceb-4e9d-834f-20c1c111d507', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 19.3, "unitPrice": 312.4, "unit": "dozen"}]', 6029.3, 'received', '2025-11-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('68229394-fceb-4e9d-834f-20c1c111d507', '[{"materialName": "Eggs", "quantity": 19.3, "unitPrice": 312.4, "unit": "dozen"}]', 6029.3, false, '2025-11-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f750ac0a-48b2-437c-aa0e-8368f673460a', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 59.2, "unitPrice": 1140.0, "unit": "kg"}]', 66462.0, 'received', '2025-11-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f750ac0a-48b2-437c-aa0e-8368f673460a', '[{"materialName": "Milk Powder", "quantity": 58.3, "unitPrice": 1140.0, "unit": "kg"}]', 66462.0, false, '2025-11-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('cebc23d8-464c-4f23-b71b-d41d71cc1cfb', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 41.0, "unitPrice": 143.0, "unit": "kg"}]', 5820.1, 'received', '2025-11-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('cebc23d8-464c-4f23-b71b-d41d71cc1cfb', '[{"materialName": "Maida Flour", "quantity": 40.7, "unitPrice": 143.0, "unit": "kg"}]', 5820.1, false, '2025-11-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('27c9bd93-6eb6-4c07-a17b-b397e816d6a0', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Yeast", "quantity": 57.3, "unitPrice": 1197.5, "unit": "kg"}]', 67898.2, 'received', '2025-11-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('27c9bd93-6eb6-4c07-a17b-b397e816d6a0', '[{"materialName": "Yeast", "quantity": 56.7, "unitPrice": 1197.5, "unit": "kg"}]', 67898.2, false, '2025-11-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f6480850-5532-4a37-8c5b-7c7c49dbb9cb', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 38.2, "unitPrice": 336.6, "unit": "dozen"}]', 12858.1, 'received', '2025-11-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f6480850-5532-4a37-8c5b-7c7c49dbb9cb', '[{"materialName": "Eggs", "quantity": 38.2, "unitPrice": 336.6, "unit": "dozen"}]', 12858.1, false, '2025-11-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('48501001-c0b6-43c8-8472-7a45868465e4', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 25.6, "unitPrice": 496.4, "unit": "kg"}]', 12807.1, 'received', '2025-11-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('48501001-c0b6-43c8-8472-7a45868465e4', '[{"materialName": "Dalda Ghee", "quantity": 25.8, "unitPrice": 496.4, "unit": "kg"}]', 12807.1, false, '2025-11-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('28083c17-e24f-487b-bb0b-40b33699f83f', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 57.5, "unitPrice": 165.1, "unit": "kg"}]', 9427.2, 'received', '2025-11-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('28083c17-e24f-487b-bb0b-40b33699f83f', '[{"materialName": "Sugar", "quantity": 57.1, "unitPrice": 165.1, "unit": "kg"}]', 9427.2, false, '2025-11-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('54688ce4-fce6-4279-ba3d-f07745696838', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 27.5, "unitPrice": 997.2, "unit": "kg"}]', 27123.8, 'received', '2025-11-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('54688ce4-fce6-4279-ba3d-f07745696838', '[{"materialName": "Butter", "quantity": 27.2, "unitPrice": 997.2, "unit": "kg"}]', 27123.8, false, '2025-11-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b042062f-b46b-4b46-815a-c7cc89480928', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 38.2, "unitPrice": 141.6, "unit": "kg"}]', 5352.5, 'received', '2025-11-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b042062f-b46b-4b46-815a-c7cc89480928', '[{"materialName": "Maida Flour", "quantity": 37.8, "unitPrice": 141.6, "unit": "kg"}]', 5352.5, false, '2025-11-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('27924789-6cea-4e35-adca-6f65c3764d6b', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 36.0, "unitPrice": 319.2, "unit": "dozen"}]', 10150.6, 'discrepancy', '2025-11-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('27924789-6cea-4e35-adca-6f65c3764d6b', '[{"materialName": "Eggs", "quantity": 31.8, "unitPrice": 319.2, "unit": "dozen"}]', 10150.6, true, '2025-11-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('33c3254f-567a-4b4a-9dbb-43ed3a75f8f8', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 22.8, "unitPrice": 15.7, "unit": "unit"}]', 356.4, 'received', '2025-11-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('33c3254f-567a-4b4a-9dbb-43ed3a75f8f8', '[{"materialName": "Packaging", "quantity": 22.7, "unitPrice": 15.7, "unit": "unit"}]', 356.4, false, '2025-11-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('422d17be-2bd3-4f70-b3b9-1f4a7860b0a8', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 47.8, "unitPrice": 179.9, "unit": "kg"}]', 8509.3, 'received', '2025-11-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('422d17be-2bd3-4f70-b3b9-1f4a7860b0a8', '[{"materialName": "Sugar", "quantity": 47.3, "unitPrice": 179.9, "unit": "kg"}]', 8509.3, false, '2025-11-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('9fd59394-2f6a-4c8e-aae6-d1553dc2d668', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 59.6, "unitPrice": 622.6, "unit": "kg"}]', 36920.2, 'received', '2025-11-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('9fd59394-2f6a-4c8e-aae6-d1553dc2d668', '[{"materialName": "Baking Powder", "quantity": 59.3, "unitPrice": 622.6, "unit": "kg"}]', 36920.2, false, '2025-11-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ceebfd07-dfff-428a-b596-3ee67ebb1379', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 54.4, "unitPrice": 134.6, "unit": "kg"}]', 7295.3, 'received', '2025-11-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ceebfd07-dfff-428a-b596-3ee67ebb1379', '[{"materialName": "Maida Flour", "quantity": 54.2, "unitPrice": 134.6, "unit": "kg"}]', 7295.3, false, '2025-11-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('df9afd97-733f-4799-b6d8-c0d77f762b9f', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 38.6, "unitPrice": 1160.4, "unit": "kg"}]', 44211.2, 'received', '2025-11-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('df9afd97-733f-4799-b6d8-c0d77f762b9f', '[{"materialName": "Milk Powder", "quantity": 38.1, "unitPrice": 1160.4, "unit": "kg"}]', 44211.2, false, '2025-11-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('fc42deb3-b222-49de-a3ea-9f2f36737260', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Vanilla Essence", "quantity": 16.8, "unitPrice": 2553.7, "unit": "litre"}]', 42646.8, 'received', '2025-11-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('fc42deb3-b222-49de-a3ea-9f2f36737260', '[{"materialName": "Vanilla Essence", "quantity": 16.7, "unitPrice": 2553.7, "unit": "litre"}]', 42646.8, false, '2025-11-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('47415930-e71d-4692-b440-6ac6351eafab', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 14.5, "unitPrice": 338.2, "unit": "dozen"}]', 4870.1, 'received', '2025-11-23 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('47415930-e71d-4692-b440-6ac6351eafab', '[{"materialName": "Eggs", "quantity": 14.4, "unitPrice": 338.2, "unit": "dozen"}]', 4870.1, false, '2025-11-23 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('4e9996dd-9c5d-4442-b936-764546ca495c', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 48.4, "unitPrice": 480.9, "unit": "kg"}]', 23083.2, 'received', '2025-11-23 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('4e9996dd-9c5d-4442-b936-764546ca495c', '[{"materialName": "Dalda Ghee", "quantity": 48.0, "unitPrice": 480.9, "unit": "kg"}]', 23083.2, false, '2025-11-23 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d78ae9ae-92a1-4ec9-abe9-5d66d7c9bf23', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 52.3, "unitPrice": 144.0, "unit": "kg"}]', 7430.4, 'received', '2025-11-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d78ae9ae-92a1-4ec9-abe9-5d66d7c9bf23', '[{"materialName": "Maida Flour", "quantity": 51.6, "unitPrice": 144.0, "unit": "kg"}]', 7430.4, false, '2025-11-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('81efd4e0-7bc1-4bf3-a7e4-d600f96ff79c', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 20.7, "unitPrice": 997.2, "unit": "kg"}]', 20841.5, 'received', '2025-11-25 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('81efd4e0-7bc1-4bf3-a7e4-d600f96ff79c', '[{"materialName": "Butter", "quantity": 20.9, "unitPrice": 997.2, "unit": "kg"}]', 20841.5, false, '2025-11-25 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8404a89e-41a5-4287-95c1-58b757cd9ded', '7979ff90-0aa7-41c6-94d4-d9d208ca2f08', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Cocoa Powder", "quantity": 21.2, "unitPrice": 1799.5, "unit": "kg"}]', 37969.5, 'received', '2025-11-25 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8404a89e-41a5-4287-95c1-58b757cd9ded', '[{"materialName": "Cocoa Powder", "quantity": 21.1, "unitPrice": 1799.5, "unit": "kg"}]', 37969.5, false, '2025-11-25 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('4f38faff-9476-4071-bc8c-e4be56ee716a', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 29.7, "unitPrice": 178.5, "unit": "kg"}]', 5337.1, 'received', '2025-11-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('4f38faff-9476-4071-bc8c-e4be56ee716a', '[{"materialName": "Sugar", "quantity": 29.9, "unitPrice": 178.5, "unit": "kg"}]', 5337.1, false, '2025-11-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d995930d-f600-4899-ac26-2a733612cd4f', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 11.9, "unitPrice": 307.6, "unit": "dozen"}]', 3260.6, 'discrepancy', '2025-11-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d995930d-f600-4899-ac26-2a733612cd4f', '[{"materialName": "Eggs", "quantity": 10.6, "unitPrice": 307.6, "unit": "dozen"}]', 3260.6, true, '2025-11-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('013ee28d-e39c-496f-a43c-3504c5e0a450', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Salt", "quantity": 55.8, "unitPrice": 59.5, "unit": "kg"}]', 3284.4, 'received', '2025-11-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('013ee28d-e39c-496f-a43c-3504c5e0a450', '[{"materialName": "Salt", "quantity": 55.2, "unitPrice": 59.5, "unit": "kg"}]', 3284.4, false, '2025-11-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a427f015-2aa5-4480-a3ab-e9777731faba', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 12.5, "unitPrice": 15.0, "unit": "unit"}]', 186.0, 'received', '2025-11-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a427f015-2aa5-4480-a3ab-e9777731faba', '[{"materialName": "Packaging", "quantity": 12.4, "unitPrice": 15.0, "unit": "unit"}]', 186.0, false, '2025-11-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('fc9da649-8760-4f9f-914c-dab8635a2de0', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 44.4, "unitPrice": 139.9, "unit": "kg"}]', 6141.6, 'received', '2025-11-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('fc9da649-8760-4f9f-914c-dab8635a2de0', '[{"materialName": "Maida Flour", "quantity": 43.9, "unitPrice": 139.9, "unit": "kg"}]', 6141.6, false, '2025-11-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('710d4a4b-91ef-408c-b978-ce97c1703aac', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 23.3, "unitPrice": 470.1, "unit": "kg"}]', 10248.2, 'discrepancy', '2025-11-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('710d4a4b-91ef-408c-b978-ce97c1703aac', '[{"materialName": "Dalda Ghee", "quantity": 21.8, "unitPrice": 470.1, "unit": "kg"}]', 10248.2, true, '2025-11-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('786fa57e-270a-4c10-b8f1-31dce43d5572', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Yeast", "quantity": 21.9, "unitPrice": 1242.1, "unit": "kg"}]', 27326.2, 'received', '2025-11-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('786fa57e-270a-4c10-b8f1-31dce43d5572', '[{"materialName": "Yeast", "quantity": 22.0, "unitPrice": 1242.1, "unit": "kg"}]', 27326.2, false, '2025-11-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('eea66bb3-d35d-4b8b-8347-610d5cfb3555', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 26.0, "unitPrice": 325.9, "unit": "dozen"}]', 8538.6, 'received', '2025-11-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('eea66bb3-d35d-4b8b-8347-610d5cfb3555', '[{"materialName": "Eggs", "quantity": 26.2, "unitPrice": 325.9, "unit": "dozen"}]', 8538.6, false, '2025-11-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bf676caf-dbfa-441f-8605-83a93246f4db', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 37.0, "unitPrice": 134.8, "unit": "kg"}]', 4987.6, 'received', '2025-12-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bf676caf-dbfa-441f-8605-83a93246f4db', '[{"materialName": "Maida Flour", "quantity": 37.0, "unitPrice": 134.8, "unit": "kg"}]', 4987.6, false, '2025-12-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ab091257-4f37-4078-ad38-6b74620527ce', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 31.2, "unitPrice": 177.8, "unit": "kg"}]', 5582.9, 'received', '2025-12-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ab091257-4f37-4078-ad38-6b74620527ce', '[{"materialName": "Sugar", "quantity": 31.4, "unitPrice": 177.8, "unit": "kg"}]', 5582.9, false, '2025-12-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f7397700-baff-4f83-ab19-9102fd8277b2', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 35.5, "unitPrice": 311.3, "unit": "dozen"}]', 11020.0, 'received', '2025-12-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f7397700-baff-4f83-ab19-9102fd8277b2', '[{"materialName": "Eggs", "quantity": 35.4, "unitPrice": 311.3, "unit": "dozen"}]', 11020.0, false, '2025-12-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('9fa71ec0-a484-4424-afe5-07598ce502e1', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 42.5, "unitPrice": 620.4, "unit": "kg"}]', 26429.0, 'received', '2025-12-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('9fa71ec0-a484-4424-afe5-07598ce502e1', '[{"materialName": "Baking Powder", "quantity": 42.6, "unitPrice": 620.4, "unit": "kg"}]', 26429.0, false, '2025-12-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a41881dc-0eeb-407a-a490-de16d2f42148', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 20.6, "unitPrice": 1115.3, "unit": "kg"}]', 22863.6, 'received', '2025-12-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a41881dc-0eeb-407a-a490-de16d2f42148', '[{"materialName": "Milk Powder", "quantity": 20.5, "unitPrice": 1115.3, "unit": "kg"}]', 22863.6, false, '2025-12-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b53f30b2-88c1-42e4-b5b9-e25fdec6f63e', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 35.8, "unitPrice": 139.0, "unit": "kg"}]', 4990.1, 'received', '2025-12-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b53f30b2-88c1-42e4-b5b9-e25fdec6f63e', '[{"materialName": "Maida Flour", "quantity": 35.9, "unitPrice": 139.0, "unit": "kg"}]', 4990.1, false, '2025-12-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f6842733-c373-4cac-ad52-a9807e0c2caa', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 54.6, "unitPrice": 928.2, "unit": "kg"}]', 50215.6, 'received', '2025-12-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f6842733-c373-4cac-ad52-a9807e0c2caa', '[{"materialName": "Butter", "quantity": 54.1, "unitPrice": 928.2, "unit": "kg"}]', 50215.6, false, '2025-12-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f3fad0d0-a3e6-4074-b640-118792c15763', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 16.2, "unitPrice": 308.7, "unit": "dozen"}]', 5031.8, 'received', '2025-12-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f3fad0d0-a3e6-4074-b640-118792c15763', '[{"materialName": "Eggs", "quantity": 16.3, "unitPrice": 308.7, "unit": "dozen"}]', 5031.8, false, '2025-12-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('dd420f46-a2fa-4f7c-9438-bb1ef76a4fe7', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 51.8, "unitPrice": 478.8, "unit": "kg"}]', 24658.2, 'received', '2025-12-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('dd420f46-a2fa-4f7c-9438-bb1ef76a4fe7', '[{"materialName": "Dalda Ghee", "quantity": 51.5, "unitPrice": 478.8, "unit": "kg"}]', 24658.2, false, '2025-12-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('af1e731f-000b-4b4d-a50a-d6bd1a786362', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 45.7, "unitPrice": 178.5, "unit": "kg"}]', 8068.2, 'received', '2025-12-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('af1e731f-000b-4b4d-a50a-d6bd1a786362', '[{"materialName": "Sugar", "quantity": 45.2, "unitPrice": 178.5, "unit": "kg"}]', 8068.2, false, '2025-12-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c7bab6e4-be78-4837-a03a-d4613ac4ed85', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 58.4, "unitPrice": 142.0, "unit": "kg"}]', 8321.2, 'received', '2025-12-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c7bab6e4-be78-4837-a03a-d4613ac4ed85', '[{"materialName": "Maida Flour", "quantity": 58.6, "unitPrice": 142.0, "unit": "kg"}]', 8321.2, false, '2025-12-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6ea1345e-69e0-4297-97dd-e0c4f6323f22', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 37.2, "unitPrice": 15.5, "unit": "unit"}]', 573.5, 'received', '2025-12-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6ea1345e-69e0-4297-97dd-e0c4f6323f22', '[{"materialName": "Packaging", "quantity": 37.0, "unitPrice": 15.5, "unit": "unit"}]', 573.5, false, '2025-12-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c1ccb363-4ef5-4fab-b912-d0811d9f059f', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 31.2, "unitPrice": 145.6, "unit": "kg"}]', 4484.5, 'received', '2025-12-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c1ccb363-4ef5-4fab-b912-d0811d9f059f', '[{"materialName": "Maida Flour", "quantity": 30.8, "unitPrice": 145.6, "unit": "kg"}]', 4484.5, false, '2025-12-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e47b0e88-6c7b-4e04-92b5-80931b9da835', '7979ff90-0aa7-41c6-94d4-d9d208ca2f08', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Cocoa Powder", "quantity": 35.1, "unitPrice": 1766.1, "unit": "kg"}]', 56338.6, 'discrepancy', '2025-12-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e47b0e88-6c7b-4e04-92b5-80931b9da835', '[{"materialName": "Cocoa Powder", "quantity": 31.9, "unitPrice": 1766.1, "unit": "kg"}]', 56338.6, true, '2025-12-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ea4e01df-e0fc-45a7-8737-c8511851a047', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Vanilla Essence", "quantity": 13.0, "unitPrice": 2548.2, "unit": "litre"}]', 33126.6, 'received', '2025-12-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ea4e01df-e0fc-45a7-8737-c8511851a047', '[{"materialName": "Vanilla Essence", "quantity": 13.0, "unitPrice": 2548.2, "unit": "litre"}]', 33126.6, false, '2025-12-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('653594c2-b458-4e39-b46d-9b16914ad325', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 30.1, "unitPrice": 323.8, "unit": "dozen"}]', 9778.8, 'received', '2025-12-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('653594c2-b458-4e39-b46d-9b16914ad325', '[{"materialName": "Eggs", "quantity": 30.2, "unitPrice": 323.8, "unit": "dozen"}]', 9778.8, false, '2025-12-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('dfd2e40e-a5b5-474a-8fbb-c28aa18bdabb', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 36.9, "unitPrice": 134.6, "unit": "kg"}]', 4926.4, 'received', '2025-12-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('dfd2e40e-a5b5-474a-8fbb-c28aa18bdabb', '[{"materialName": "Maida Flour", "quantity": 36.6, "unitPrice": 134.6, "unit": "kg"}]', 4926.4, false, '2025-12-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0e9afaf1-4ed0-4c7e-a78f-2e54fd1c9604', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 34.9, "unitPrice": 168.0, "unit": "kg"}]', 5913.6, 'received', '2025-12-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0e9afaf1-4ed0-4c7e-a78f-2e54fd1c9604', '[{"materialName": "Sugar", "quantity": 35.2, "unitPrice": 168.0, "unit": "kg"}]', 5913.6, false, '2025-12-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a1145c83-2bd4-4f68-80af-2c53b70f1cb0', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 48.7, "unitPrice": 991.7, "unit": "kg"}]', 48097.5, 'received', '2025-12-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a1145c83-2bd4-4f68-80af-2c53b70f1cb0', '[{"materialName": "Butter", "quantity": 48.5, "unitPrice": 991.7, "unit": "kg"}]', 48097.5, false, '2025-12-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('55fe37bf-3d53-476d-a021-f07d4742f1dc', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 31.2, "unitPrice": 15.1, "unit": "unit"}]', 468.1, 'received', '2025-12-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('55fe37bf-3d53-476d-a021-f07d4742f1dc', '[{"materialName": "Packaging", "quantity": 31.0, "unitPrice": 15.1, "unit": "unit"}]', 468.1, false, '2025-12-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b89fe440-88cd-4531-9e08-899203c5eda1', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 57.8, "unitPrice": 1144.1, "unit": "kg"}]', 66243.4, 'received', '2025-12-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b89fe440-88cd-4531-9e08-899203c5eda1', '[{"materialName": "Milk Powder", "quantity": 57.9, "unitPrice": 1144.1, "unit": "kg"}]', 66243.4, false, '2025-12-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c97d9267-1d76-4d0e-8173-f89a68c43da0', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 46.9, "unitPrice": 507.9, "unit": "kg"}]', 23566.6, 'received', '2025-12-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c97d9267-1d76-4d0e-8173-f89a68c43da0', '[{"materialName": "Dalda Ghee", "quantity": 46.4, "unitPrice": 507.9, "unit": "kg"}]', 23566.6, false, '2025-12-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('00837418-5a3d-46ac-bbb3-14025e326389', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 39.0, "unitPrice": 326.1, "unit": "dozen"}]', 12783.1, 'received', '2025-12-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('00837418-5a3d-46ac-bbb3-14025e326389', '[{"materialName": "Eggs", "quantity": 39.2, "unitPrice": 326.1, "unit": "dozen"}]', 12783.1, false, '2025-12-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0e0d2469-63a2-4a25-a61e-be436d7a3a78', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Yeast", "quantity": 26.6, "unitPrice": 1214.8, "unit": "kg"}]', 32313.7, 'received', '2025-12-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0e0d2469-63a2-4a25-a61e-be436d7a3a78', '[{"materialName": "Yeast", "quantity": 26.6, "unitPrice": 1214.8, "unit": "kg"}]', 32313.7, false, '2025-12-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bae9cc64-e310-40ee-b506-11d777bd48e2', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 56.1, "unitPrice": 595.2, "unit": "kg"}]', 33569.3, 'received', '2025-12-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bae9cc64-e310-40ee-b506-11d777bd48e2', '[{"materialName": "Baking Powder", "quantity": 56.4, "unitPrice": 595.2, "unit": "kg"}]', 33569.3, false, '2025-12-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('04c84c7b-d795-47f5-a7e1-509abf9d99f5', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 51.6, "unitPrice": 143.5, "unit": "kg"}]', 7462.0, 'received', '2025-12-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('04c84c7b-d795-47f5-a7e1-509abf9d99f5', '[{"materialName": "Maida Flour", "quantity": 52.0, "unitPrice": 143.5, "unit": "kg"}]', 7462.0, false, '2025-12-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('86b10a80-0c26-4225-be6e-dd41035a6824', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Salt", "quantity": 25.7, "unitPrice": 60.6, "unit": "kg"}]', 1563.5, 'received', '2025-12-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('86b10a80-0c26-4225-be6e-dd41035a6824', '[{"materialName": "Salt", "quantity": 25.8, "unitPrice": 60.6, "unit": "kg"}]', 1563.5, false, '2025-12-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('09faac3c-f1d9-4c1e-af04-605c7ba6cd1c', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 44.9, "unitPrice": 138.8, "unit": "kg"}]', 6148.8, 'received', '2025-12-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('09faac3c-f1d9-4c1e-af04-605c7ba6cd1c', '[{"materialName": "Maida Flour", "quantity": 44.3, "unitPrice": 138.8, "unit": "kg"}]', 6148.8, false, '2025-12-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bb8d6568-8dee-496b-8e9a-d9ff70c38dc6', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 47.7, "unitPrice": 175.3, "unit": "kg"}]', 8291.7, 'received', '2025-12-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bb8d6568-8dee-496b-8e9a-d9ff70c38dc6', '[{"materialName": "Sugar", "quantity": 47.3, "unitPrice": 175.3, "unit": "kg"}]', 8291.7, false, '2025-12-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8dd4c455-db9d-42c8-b263-e12d87b84f9e', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 32.7, "unitPrice": 314.0, "unit": "dozen"}]', 10299.2, 'received', '2025-12-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8dd4c455-db9d-42c8-b263-e12d87b84f9e', '[{"materialName": "Eggs", "quantity": 32.8, "unitPrice": 314.0, "unit": "dozen"}]', 10299.2, false, '2025-12-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('481e086f-ec97-45ef-9629-076e8a693278', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 21.2, "unitPrice": 478.1, "unit": "kg"}]', 9657.6, 'discrepancy', '2025-12-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('481e086f-ec97-45ef-9629-076e8a693278', '[{"materialName": "Dalda Ghee", "quantity": 20.2, "unitPrice": 478.1, "unit": "kg"}]', 9657.6, true, '2025-12-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f373e52b-a271-4c48-a03c-f15b08184098', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 32.9, "unitPrice": 935.0, "unit": "kg"}]', 30668.0, 'received', '2025-12-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f373e52b-a271-4c48-a03c-f15b08184098', '[{"materialName": "Butter", "quantity": 32.8, "unitPrice": 935.0, "unit": "kg"}]', 30668.0, false, '2025-12-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c163eacd-75ab-4fa8-bc26-b9c499b2de7b', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 24.1, "unitPrice": 14.6, "unit": "unit"}]', 313.9, 'discrepancy', '2025-12-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c163eacd-75ab-4fa8-bc26-b9c499b2de7b', '[{"materialName": "Packaging", "quantity": 21.5, "unitPrice": 14.6, "unit": "unit"}]', 313.9, true, '2025-12-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2b2138ea-d03b-42a4-890b-5fbd45a0775a', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 43.7, "unitPrice": 139.8, "unit": "kg"}]', 6109.3, 'received', '2025-12-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2b2138ea-d03b-42a4-890b-5fbd45a0775a', '[{"materialName": "Maida Flour", "quantity": 43.7, "unitPrice": 139.8, "unit": "kg"}]', 6109.3, false, '2025-12-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5d21af19-aab9-4bdb-94de-27b8dd1beba0', '7979ff90-0aa7-41c6-94d4-d9d208ca2f08', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Cocoa Powder", "quantity": 55.6, "unitPrice": 1870.1, "unit": "kg"}]', 104164.6, 'received', '2025-12-23 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5d21af19-aab9-4bdb-94de-27b8dd1beba0', '[{"materialName": "Cocoa Powder", "quantity": 55.7, "unitPrice": 1870.1, "unit": "kg"}]', 104164.6, false, '2025-12-23 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7fc696db-4000-4e7b-9c33-ae01db23c6d2', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 20.5, "unitPrice": 321.2, "unit": "dozen"}]', 6552.5, 'received', '2025-12-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7fc696db-4000-4e7b-9c33-ae01db23c6d2', '[{"materialName": "Eggs", "quantity": 20.4, "unitPrice": 321.2, "unit": "dozen"}]', 6552.5, false, '2025-12-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d6b15a06-6a6b-48aa-8ffe-02b572266d5b', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 27.2, "unitPrice": 175.5, "unit": "kg"}]', 4791.2, 'received', '2025-12-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d6b15a06-6a6b-48aa-8ffe-02b572266d5b', '[{"materialName": "Sugar", "quantity": 27.3, "unitPrice": 175.5, "unit": "kg"}]', 4791.2, false, '2025-12-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('1d1eab14-40b2-42f7-8ab6-0b79033a70da', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 45.7, "unitPrice": 1159.6, "unit": "kg"}]', 52877.8, 'received', '2025-12-25 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('1d1eab14-40b2-42f7-8ab6-0b79033a70da', '[{"materialName": "Milk Powder", "quantity": 45.6, "unitPrice": 1159.6, "unit": "kg"}]', 52877.8, false, '2025-12-25 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2d64eb5b-dd0f-4f6e-9389-29e8eef1ba5d', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 22.1, "unitPrice": 597.3, "unit": "kg"}]', 13260.1, 'received', '2025-12-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2d64eb5b-dd0f-4f6e-9389-29e8eef1ba5d', '[{"materialName": "Baking Powder", "quantity": 22.2, "unitPrice": 597.3, "unit": "kg"}]', 13260.1, false, '2025-12-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7c94e8a7-d4d7-4b2d-a71d-c8134f08aedf', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 50.4, "unitPrice": 141.3, "unit": "kg"}]', 7149.8, 'received', '2025-12-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7c94e8a7-d4d7-4b2d-a71d-c8134f08aedf', '[{"materialName": "Maida Flour", "quantity": 50.6, "unitPrice": 141.3, "unit": "kg"}]', 7149.8, false, '2025-12-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7c474398-f6fd-4e3a-941a-81a7133ed877', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 25.4, "unitPrice": 327.1, "unit": "dozen"}]', 8275.6, 'received', '2025-12-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7c474398-f6fd-4e3a-941a-81a7133ed877', '[{"materialName": "Eggs", "quantity": 25.3, "unitPrice": 327.1, "unit": "dozen"}]', 8275.6, false, '2025-12-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f3729b25-0e08-4aed-a1f0-66b87e2873f2', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 53.1, "unitPrice": 482.7, "unit": "kg"}]', 25872.7, 'received', '2025-12-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f3729b25-0e08-4aed-a1f0-66b87e2873f2', '[{"materialName": "Dalda Ghee", "quantity": 53.6, "unitPrice": 482.7, "unit": "kg"}]', 25872.7, false, '2025-12-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a751d2e4-b201-43ac-9a0f-ec3bb9a7520f', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Vanilla Essence", "quantity": 37.7, "unitPrice": 2544.1, "unit": "litre"}]', 94894.9, 'received', '2025-12-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a751d2e4-b201-43ac-9a0f-ec3bb9a7520f', '[{"materialName": "Vanilla Essence", "quantity": 37.3, "unitPrice": 2544.1, "unit": "litre"}]', 94894.9, false, '2025-12-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('be840897-25b5-4c0e-8695-28e6ff69fc00', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Yeast", "quantity": 43.5, "unitPrice": 1237.7, "unit": "kg"}]', 53592.4, 'received', '2025-12-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('be840897-25b5-4c0e-8695-28e6ff69fc00', '[{"materialName": "Yeast", "quantity": 43.3, "unitPrice": 1237.7, "unit": "kg"}]', 53592.4, false, '2025-12-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('548bc170-1d21-45c1-bba3-0f70cfaebce9', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 30.4, "unitPrice": 15.1, "unit": "unit"}]', 456.0, 'received', '2025-12-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('548bc170-1d21-45c1-bba3-0f70cfaebce9', '[{"materialName": "Packaging", "quantity": 30.2, "unitPrice": 15.1, "unit": "unit"}]', 456.0, false, '2025-12-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('951b314c-dff8-407e-9366-645ef239c8d3', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 24.4, "unitPrice": 146.9, "unit": "kg"}]', 3555.0, 'received', '2025-12-30 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('951b314c-dff8-407e-9366-645ef239c8d3', '[{"materialName": "Maida Flour", "quantity": 24.2, "unitPrice": 146.9, "unit": "kg"}]', 3555.0, false, '2025-12-30 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('07773f9d-a57d-46d6-8a61-de979bf3ca71', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 33.9, "unitPrice": 331.8, "unit": "dozen"}]', 11314.4, 'received', '2025-12-30 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('07773f9d-a57d-46d6-8a61-de979bf3ca71', '[{"materialName": "Eggs", "quantity": 34.1, "unitPrice": 331.8, "unit": "dozen"}]', 11314.4, false, '2025-12-30 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b0fcb3a1-e638-4821-9a29-8d526525fa50', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 50.7, "unitPrice": 1000.5, "unit": "kg"}]', 50625.3, 'received', '2025-12-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b0fcb3a1-e638-4821-9a29-8d526525fa50', '[{"materialName": "Butter", "quantity": 50.6, "unitPrice": 1000.5, "unit": "kg"}]', 50625.3, false, '2025-12-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('14d2b4ad-7f25-467d-a887-08569e879791', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 34.7, "unitPrice": 179.7, "unit": "kg"}]', 6181.7, 'received', '2025-12-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('14d2b4ad-7f25-467d-a887-08569e879791', '[{"materialName": "Sugar", "quantity": 34.4, "unitPrice": 179.7, "unit": "kg"}]', 6181.7, false, '2025-12-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('dac05aca-c24a-4275-9234-f6a6b5921530', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 40.3, "unitPrice": 140.1, "unit": "kg"}]', 5590.0, 'received', '2026-01-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('dac05aca-c24a-4275-9234-f6a6b5921530', '[{"materialName": "Maida Flour", "quantity": 39.9, "unitPrice": 140.1, "unit": "kg"}]', 5590.0, false, '2026-01-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('052c2d67-89df-4918-a145-e6f14f8ca1be', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 39.4, "unitPrice": 327.5, "unit": "dozen"}]', 12805.2, 'received', '2026-01-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('052c2d67-89df-4918-a145-e6f14f8ca1be', '[{"materialName": "Eggs", "quantity": 39.1, "unitPrice": 327.5, "unit": "dozen"}]', 12805.2, false, '2026-01-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0990c1e6-bc25-40cc-958b-b4f336d43f45', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 23.1, "unitPrice": 147.4, "unit": "kg"}]', 3360.7, 'received', '2026-01-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0990c1e6-bc25-40cc-958b-b4f336d43f45', '[{"materialName": "Maida Flour", "quantity": 22.8, "unitPrice": 147.4, "unit": "kg"}]', 3360.7, false, '2026-01-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('856995df-0b80-4fb6-bd5b-de14c0c02b29', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 46.1, "unitPrice": 1079.6, "unit": "kg"}]', 49337.7, 'received', '2026-01-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('856995df-0b80-4fb6-bd5b-de14c0c02b29', '[{"materialName": "Milk Powder", "quantity": 45.7, "unitPrice": 1079.6, "unit": "kg"}]', 49337.7, false, '2026-01-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('07237661-af73-49a6-9a8c-3a1bf6be5596', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 41.6, "unitPrice": 507.6, "unit": "kg"}]', 21166.9, 'received', '2026-01-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('07237661-af73-49a6-9a8c-3a1bf6be5596', '[{"materialName": "Dalda Ghee", "quantity": 41.7, "unitPrice": 507.6, "unit": "kg"}]', 21166.9, false, '2026-01-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7085dea6-fbd7-4b2f-a978-dba8b6bf9df8', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 16.7, "unitPrice": 15.9, "unit": "unit"}]', 262.4, 'received', '2026-01-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7085dea6-fbd7-4b2f-a978-dba8b6bf9df8', '[{"materialName": "Packaging", "quantity": 16.5, "unitPrice": 15.9, "unit": "unit"}]', 262.4, false, '2026-01-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7f5be66f-be15-4aba-9a40-22e0bcc4a19a', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 24.2, "unitPrice": 140.2, "unit": "kg"}]', 3364.8, 'received', '2026-01-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7f5be66f-be15-4aba-9a40-22e0bcc4a19a', '[{"materialName": "Maida Flour", "quantity": 24.0, "unitPrice": 140.2, "unit": "kg"}]', 3364.8, false, '2026-01-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('61fa8dbc-4b7f-424b-8b4f-55e9c065f70f', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 56.2, "unitPrice": 174.2, "unit": "kg"}]', 9720.4, 'received', '2026-01-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('61fa8dbc-4b7f-424b-8b4f-55e9c065f70f', '[{"materialName": "Sugar", "quantity": 55.8, "unitPrice": 174.2, "unit": "kg"}]', 9720.4, false, '2026-01-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b1e199e1-e3cf-409b-aadb-ceab98ce652d', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 26.1, "unitPrice": 320.0, "unit": "dozen"}]', 8352.0, 'received', '2026-01-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b1e199e1-e3cf-409b-aadb-ceab98ce652d', '[{"materialName": "Eggs", "quantity": 26.1, "unitPrice": 320.0, "unit": "dozen"}]', 8352.0, false, '2026-01-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2adc5c4d-1d4a-41ef-82a9-b5d12f44c463', '7979ff90-0aa7-41c6-94d4-d9d208ca2f08', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Cocoa Powder", "quantity": 43.4, "unitPrice": 1833.6, "unit": "kg"}]', 79578.2, 'received', '2026-01-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2adc5c4d-1d4a-41ef-82a9-b5d12f44c463', '[{"materialName": "Cocoa Powder", "quantity": 43.4, "unitPrice": 1833.6, "unit": "kg"}]', 79578.2, false, '2026-01-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c860ccb2-05ff-4706-83fd-096e6797689b', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Salt", "quantity": 52.9, "unitPrice": 58.4, "unit": "kg"}]', 3106.9, 'received', '2026-01-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c860ccb2-05ff-4706-83fd-096e6797689b', '[{"materialName": "Salt", "quantity": 53.2, "unitPrice": 58.4, "unit": "kg"}]', 3106.9, false, '2026-01-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('3fad747a-5538-47b4-9869-06a4dc838dd7', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 24.9, "unitPrice": 138.2, "unit": "kg"}]', 3468.8, 'received', '2026-01-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('3fad747a-5538-47b4-9869-06a4dc838dd7', '[{"materialName": "Maida Flour", "quantity": 25.1, "unitPrice": 138.2, "unit": "kg"}]', 3468.8, false, '2026-01-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a301ab0c-ab33-4a05-bedb-633a589b1aeb', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 58.0, "unitPrice": 602.9, "unit": "kg"}]', 34968.2, 'received', '2026-01-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a301ab0c-ab33-4a05-bedb-633a589b1aeb', '[{"materialName": "Baking Powder", "quantity": 58.0, "unitPrice": 602.9, "unit": "kg"}]', 34968.2, false, '2026-01-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('55a17cfa-1e5d-459f-907e-cc99e3129651', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 36.9, "unitPrice": 312.7, "unit": "dozen"}]', 11569.9, 'received', '2026-01-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('55a17cfa-1e5d-459f-907e-cc99e3129651', '[{"materialName": "Eggs", "quantity": 37.0, "unitPrice": 312.7, "unit": "dozen"}]', 11569.9, false, '2026-01-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('68937c67-2114-4a5e-aba3-c7b2c8f536bd', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 52.7, "unitPrice": 141.6, "unit": "kg"}]', 7349.0, 'received', '2026-01-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('68937c67-2114-4a5e-aba3-c7b2c8f536bd', '[{"materialName": "Maida Flour", "quantity": 51.9, "unitPrice": 141.6, "unit": "kg"}]', 7349.0, false, '2026-01-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('47b1b7ab-5aad-407e-902b-2a0a9a6d929b', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 22.1, "unitPrice": 918.0, "unit": "kg"}]', 20012.4, 'received', '2026-01-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('47b1b7ab-5aad-407e-902b-2a0a9a6d929b', '[{"materialName": "Butter", "quantity": 21.8, "unitPrice": 918.0, "unit": "kg"}]', 20012.4, false, '2026-01-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6ce18b0f-fc42-46da-a74e-036b82d23d56', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 21.6, "unitPrice": 496.5, "unit": "kg"}]', 10674.8, 'received', '2026-01-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6ce18b0f-fc42-46da-a74e-036b82d23d56', '[{"materialName": "Dalda Ghee", "quantity": 21.5, "unitPrice": 496.5, "unit": "kg"}]', 10674.8, false, '2026-01-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0bb8de0c-e82f-4e4b-aa64-2093bc7cbd7e', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 27.8, "unitPrice": 163.6, "unit": "kg"}]', 4515.4, 'received', '2026-01-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0bb8de0c-e82f-4e4b-aa64-2093bc7cbd7e', '[{"materialName": "Sugar", "quantity": 27.6, "unitPrice": 163.6, "unit": "kg"}]', 4515.4, false, '2026-01-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ba12b5d3-db30-4223-9320-ee99306325eb', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Yeast", "quantity": 32.1, "unitPrice": 1179.9, "unit": "kg"}]', 37756.8, 'received', '2026-01-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ba12b5d3-db30-4223-9320-ee99306325eb', '[{"materialName": "Yeast", "quantity": 32.0, "unitPrice": 1179.9, "unit": "kg"}]', 37756.8, false, '2026-01-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('437c5bb8-77b0-4167-ac45-34e0ad08314e', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 11.3, "unitPrice": 14.8, "unit": "unit"}]', 168.7, 'received', '2026-01-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('437c5bb8-77b0-4167-ac45-34e0ad08314e', '[{"materialName": "Packaging", "quantity": 11.4, "unitPrice": 14.8, "unit": "unit"}]', 168.7, false, '2026-01-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('92654988-c3f5-496e-bb98-bbfc910a522e', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 23.8, "unitPrice": 1091.1, "unit": "kg"}]', 25640.8, 'received', '2026-01-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('92654988-c3f5-496e-bb98-bbfc910a522e', '[{"materialName": "Milk Powder", "quantity": 23.5, "unitPrice": 1091.1, "unit": "kg"}]', 25640.8, false, '2026-01-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e759a552-69da-42b7-b844-05ce4bbb30b6', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 47.7, "unitPrice": 136.8, "unit": "kg"}]', 6470.6, 'received', '2026-01-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e759a552-69da-42b7-b844-05ce4bbb30b6', '[{"materialName": "Maida Flour", "quantity": 47.3, "unitPrice": 136.8, "unit": "kg"}]', 6470.6, false, '2026-01-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6460a011-dc28-4ad6-bf71-f29cad1ccc20', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 36.2, "unitPrice": 137.9, "unit": "kg"}]', 4950.6, 'received', '2026-01-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6460a011-dc28-4ad6-bf71-f29cad1ccc20', '[{"materialName": "Maida Flour", "quantity": 35.9, "unitPrice": 137.9, "unit": "kg"}]', 4950.6, false, '2026-01-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bc57a234-7ac6-41ab-9c66-e60ce0a05c93', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Vanilla Essence", "quantity": 12.3, "unitPrice": 2627.7, "unit": "litre"}]', 32583.5, 'received', '2026-01-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bc57a234-7ac6-41ab-9c66-e60ce0a05c93', '[{"materialName": "Vanilla Essence", "quantity": 12.4, "unitPrice": 2627.7, "unit": "litre"}]', 32583.5, false, '2026-01-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b2f13758-552b-46a9-8f48-aa652c953cc9', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 34.7, "unitPrice": 308.2, "unit": "dozen"}]', 10632.9, 'received', '2026-01-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b2f13758-552b-46a9-8f48-aa652c953cc9', '[{"materialName": "Eggs", "quantity": 34.5, "unitPrice": 308.2, "unit": "dozen"}]', 10632.9, false, '2026-01-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('3e141cdf-1fdb-4569-91cd-5f0f9f4b78bb', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 59.8, "unitPrice": 178.2, "unit": "kg"}]', 10567.3, 'received', '2026-01-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('3e141cdf-1fdb-4569-91cd-5f0f9f4b78bb', '[{"materialName": "Sugar", "quantity": 59.3, "unitPrice": 178.2, "unit": "kg"}]', 10567.3, false, '2026-01-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bddd52e7-f1fa-4633-85ab-b32aa93a3640', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 58.5, "unitPrice": 480.4, "unit": "kg"}]', 28151.4, 'received', '2026-01-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bddd52e7-f1fa-4633-85ab-b32aa93a3640', '[{"materialName": "Dalda Ghee", "quantity": 58.6, "unitPrice": 480.4, "unit": "kg"}]', 28151.4, false, '2026-01-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('cad6a107-937e-4fff-abce-86548e0ae240', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 47.4, "unitPrice": 912.3, "unit": "kg"}]', 42786.9, 'received', '2026-01-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('cad6a107-937e-4fff-abce-86548e0ae240', '[{"materialName": "Butter", "quantity": 46.9, "unitPrice": 912.3, "unit": "kg"}]', 42786.9, false, '2026-01-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5134a35e-cc17-4422-a528-39104739ce14', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 32.0, "unitPrice": 142.9, "unit": "kg"}]', 4501.4, 'received', '2026-01-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5134a35e-cc17-4422-a528-39104739ce14', '[{"materialName": "Maida Flour", "quantity": 31.5, "unitPrice": 142.9, "unit": "kg"}]', 4501.4, false, '2026-01-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8cfae0fc-78e6-4542-a583-f284ba3aa7dd', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 23.8, "unitPrice": 323.3, "unit": "dozen"}]', 7662.2, 'received', '2026-01-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8cfae0fc-78e6-4542-a583-f284ba3aa7dd', '[{"materialName": "Eggs", "quantity": 23.7, "unitPrice": 323.3, "unit": "dozen"}]', 7662.2, false, '2026-01-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('57501389-70ef-47b9-bc4c-d9eae3f3f97b', '9df95928-5246-46a9-a5d1-4aa576d40ba5', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Baking Powder", "quantity": 42.1, "unitPrice": 622.9, "unit": "kg"}]', 26473.2, 'received', '2026-01-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('57501389-70ef-47b9-bc4c-d9eae3f3f97b', '[{"materialName": "Baking Powder", "quantity": 42.5, "unitPrice": 622.9, "unit": "kg"}]', 26473.2, false, '2026-01-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('174203f6-33dd-457e-b98f-c66a03eb849e', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 25.7, "unitPrice": 15.1, "unit": "unit"}]', 389.6, 'received', '2026-01-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('174203f6-33dd-457e-b98f-c66a03eb849e', '[{"materialName": "Packaging", "quantity": 25.8, "unitPrice": 15.1, "unit": "unit"}]', 389.6, false, '2026-01-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('24dfdf56-0f59-4279-a665-de844b34c3b1', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 57.1, "unitPrice": 179.6, "unit": "kg"}]', 10345.0, 'received', '2026-01-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('24dfdf56-0f59-4279-a665-de844b34c3b1', '[{"materialName": "Sugar", "quantity": 57.6, "unitPrice": 179.6, "unit": "kg"}]', 10345.0, false, '2026-01-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('fe8995a7-19bc-4f28-b147-719cb9382c7d', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 21.3, "unitPrice": 143.9, "unit": "kg"}]', 3065.1, 'received', '2026-01-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('fe8995a7-19bc-4f28-b147-719cb9382c7d', '[{"materialName": "Maida Flour", "quantity": 21.3, "unitPrice": 143.9, "unit": "kg"}]', 3065.1, false, '2026-01-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5403fd41-9770-45c2-9caa-367b55d4ae2d', '7979ff90-0aa7-41c6-94d4-d9d208ca2f08', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Cocoa Powder", "quantity": 31.4, "unitPrice": 1830.7, "unit": "kg"}]', 57484.0, 'received', '2026-01-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5403fd41-9770-45c2-9caa-367b55d4ae2d', '[{"materialName": "Cocoa Powder", "quantity": 31.4, "unitPrice": 1830.7, "unit": "kg"}]', 57484.0, false, '2026-01-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d26f4649-a8b2-4820-9df5-6d109fbcb805', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 12.8, "unitPrice": 323.6, "unit": "dozen"}]', 4142.1, 'received', '2026-01-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d26f4649-a8b2-4820-9df5-6d109fbcb805', '[{"materialName": "Eggs", "quantity": 12.8, "unitPrice": 323.6, "unit": "dozen"}]', 4142.1, false, '2026-01-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('66c4f800-7dbb-4fc5-9b3f-55148e1c7b9b', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Milk Powder", "quantity": 33.6, "unitPrice": 1132.2, "unit": "kg"}]', 37928.7, 'received', '2026-01-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('66c4f800-7dbb-4fc5-9b3f-55148e1c7b9b', '[{"materialName": "Milk Powder", "quantity": 33.5, "unitPrice": 1132.2, "unit": "kg"}]', 37928.7, false, '2026-01-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ccedf7ed-6c46-438f-93da-096a7aef6669', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 37.7, "unitPrice": 469.6, "unit": "kg"}]', 17469.1, 'received', '2026-01-23 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ccedf7ed-6c46-438f-93da-096a7aef6669', '[{"materialName": "Dalda Ghee", "quantity": 37.2, "unitPrice": 469.6, "unit": "kg"}]', 17469.1, false, '2026-01-23 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('79cacf06-57f5-422c-b27a-b6937b4f7fae', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 10.1, "unitPrice": 326.3, "unit": "dozen"}]', 3263.0, 'received', '2026-01-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('79cacf06-57f5-422c-b27a-b6937b4f7fae', '[{"materialName": "Eggs", "quantity": 10.0, "unitPrice": 326.3, "unit": "dozen"}]', 3263.0, false, '2026-01-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f695c573-2e8b-4123-a6fc-9da3e7a7c531', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 59.4, "unitPrice": 145.1, "unit": "kg"}]', 8633.4, 'received', '2026-01-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f695c573-2e8b-4123-a6fc-9da3e7a7c531', '[{"materialName": "Maida Flour", "quantity": 59.5, "unitPrice": 145.1, "unit": "kg"}]', 8633.4, false, '2026-01-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b5572af7-8ac7-4910-b147-38985789ef4f', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Salt", "quantity": 41.6, "unitPrice": 62.2, "unit": "kg"}]', 2575.1, 'received', '2026-01-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b5572af7-8ac7-4910-b147-38985789ef4f', '[{"materialName": "Salt", "quantity": 41.4, "unitPrice": 62.2, "unit": "kg"}]', 2575.1, false, '2026-01-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('93f44644-f6ec-420a-9817-772073aba12c', '12afa621-9625-4d7a-b6a0-fe674ad3da8b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Packaging", "quantity": 21.5, "unitPrice": 15.8, "unit": "unit"}]', 342.9, 'received', '2026-01-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('93f44644-f6ec-420a-9817-772073aba12c', '[{"materialName": "Packaging", "quantity": 21.7, "unitPrice": 15.8, "unit": "unit"}]', 342.9, false, '2026-01-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5ea96382-f0c5-4083-9a58-f9af530d2705', 'c2b29fe9-3e51-4cc0-a7f0-0043699de489', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Butter", "quantity": 38.9, "unitPrice": 1000.3, "unit": "kg"}]', 38711.6, 'received', '2026-01-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5ea96382-f0c5-4083-9a58-f9af530d2705', '[{"materialName": "Butter", "quantity": 38.7, "unitPrice": 1000.3, "unit": "kg"}]', 38711.6, false, '2026-01-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e2d334a1-bf40-40ce-a159-7f09d6a76f0f', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Yeast", "quantity": 41.3, "unitPrice": 1217.1, "unit": "kg"}]', 49779.4, 'received', '2026-01-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e2d334a1-bf40-40ce-a159-7f09d6a76f0f', '[{"materialName": "Yeast", "quantity": 40.9, "unitPrice": 1217.1, "unit": "kg"}]', 49779.4, false, '2026-01-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('51fc5574-2100-4a04-b415-415b4a691a86', '44391d02-bf5c-4d55-a307-2d0b48cc4cbe', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Sugar", "quantity": 32.2, "unitPrice": 171.4, "unit": "kg"}]', 5467.7, 'received', '2026-01-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('51fc5574-2100-4a04-b415-415b4a691a86', '[{"materialName": "Sugar", "quantity": 31.9, "unitPrice": 171.4, "unit": "kg"}]', 5467.7, false, '2026-01-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('045fdfaa-7f5f-4270-9ca9-4f0b8cf2ffe7', 'b1efc4a8-3ddb-4d5b-8c6a-b324715e2e42', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Maida Flour", "quantity": 52.1, "unitPrice": 140.0, "unit": "kg"}]', 7364.0, 'received', '2026-01-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('045fdfaa-7f5f-4270-9ca9-4f0b8cf2ffe7', '[{"materialName": "Maida Flour", "quantity": 52.6, "unitPrice": 140.0, "unit": "kg"}]', 7364.0, false, '2026-01-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b080d8bb-03f3-417e-88de-32720cc87742', '81b028b5-23ba-4d05-8931-f0821042f19d', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Eggs", "quantity": 21.1, "unitPrice": 319.0, "unit": "dozen"}]', 6730.9, 'received', '2026-01-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b080d8bb-03f3-417e-88de-32720cc87742', '[{"materialName": "Eggs", "quantity": 21.1, "unitPrice": 319.0, "unit": "dozen"}]', 6730.9, false, '2026-01-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('46361042-dae9-4e91-81e9-ad45e6d3056e', '74c646c6-21b8-4556-b28f-687169355d5b', '0e8b49ea-0562-47ac-89bc-45a280fe70db', '[{"materialName": "Dalda Ghee", "quantity": 58.2, "unitPrice": 490.2, "unit": "kg"}]', 28480.6, 'received', '2026-01-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('46361042-dae9-4e91-81e9-ad45e6d3056e', '[{"materialName": "Dalda Ghee", "quantity": 58.1, "unitPrice": 490.2, "unit": "kg"}]', 28480.6, false, '2026-01-29 10:00:00');


INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2789.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-11-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 414.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 1679.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-11-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 8657.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 8426.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 1554.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-11-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2796.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-11-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2838.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 2739.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1713.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-11-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2886.0, 'rejected', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2789.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', true, '2025-11-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 539.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2522.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-11-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 1420.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 1554.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', true, '2025-11-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1317.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 837.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 7574.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-11-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 6557.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-11-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 5250.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 802.0, 'rejected', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 7228.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 840.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 687.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-11-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 2375.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1987.0, 'rejected', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 12631.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 5681.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 12254.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 7098.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 2549.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-11-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 4755.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 10615.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-11-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 7050.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-11-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2103.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 6664.0, 'rejected', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-11-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 1094.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1671.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 971.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 1389.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 6041.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 680.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-11-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 5155.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-11-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 5294.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 10598.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1236.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 593.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-11-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1541.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-11-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 3207.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 2240.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 336.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-11-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 920.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-11-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 314.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-11-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 6431.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-11-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 902.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 4762.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 3474.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2094.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2544.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 13029.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2814.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 4871.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 5553.0, 'rejected', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-12-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 7734.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 6367.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-12-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 8488.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1655.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 490.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1183.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 1725.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 6805.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 7496.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2376.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 3073.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2179.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1879.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1570.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-12-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1005.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1146.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 2727.0, 'rejected', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 3313.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 11557.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 8138.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2137.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-12-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 11259.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 968.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-12-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1237.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 3562.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-12-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1032.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 5304.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 1775.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 5723.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1111.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-12-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1570.0, 'rejected', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', true, '2025-12-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2529.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2467.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-12-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 4563.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 6653.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 3799.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 7748.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-12-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 966.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-12-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 629.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 14376.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-12-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 2023.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-12-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2354.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1455.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 1368.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1181.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 421.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-12-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1135.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 6970.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2025-12-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 622.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2025-12-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2206.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2025-12-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 13396.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2025-12-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2479.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2025-12-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1227.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2025-12-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 9251.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2025-12-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 11530.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2025-12-31 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2017.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 11742.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 14253.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 13711.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2026-01-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1911.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 7048.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 978.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 5071.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 6060.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 703.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 661.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2050.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 11451.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2026-01-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 13078.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 2970.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2026-01-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1473.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 4953.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1435.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 8943.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1491.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2026-01-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2187.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2026-01-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 12229.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1309.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2026-01-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 3512.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 13517.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2026-01-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1874.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2026-01-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 10935.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2026-01-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 4915.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Maintenance', 3884.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2026-01-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 14040.0, 'approved', 'c49efc15-2d74-4002-8586-c827c6c854a7', false, '2026-01-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 1740.0, 'approved', '428f50c9-a808-41fa-8758-16a654b3d052', false, '2026-01-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1352.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 4307.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 1517.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2026-01-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Equipment Repair', 8313.0, 'approved', 'a7bdd850-0208-4352-85df-2c7e9a7ad816', false, '2026-01-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 14990.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Electricity Bill', 13517.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', true, '2026-01-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 455.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1023.0, 'approved', 'e75cbee0-44a6-4055-8131-4fe0df62c35b', false, '2026-01-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 501.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Miscellaneous', 1697.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1142.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2026-01-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Packaging Refill', 2403.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 1029.0, 'approved', '21cb3b25-4852-496d-9011-aa755c8f3881', false, '2026-01-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2349.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 978.0, 'rejected', '67d0433a-75d3-4866-8a54-248a5b857ec0', true, '2026-01-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Cleaning Supplies', 1313.0, 'approved', '67d0433a-75d3-4866-8a54-248a5b857ec0', false, '2026-01-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Transport/Fuel', 2349.0, 'approved', 'a37994aa-e13d-4952-b957-0e80d8503493', false, '2026-01-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db', 'Gas Bill', 8998.0, 'approved', '4281bb68-5135-443b-a7f8-997b2b8db4cd', false, '2026-01-29 11:00:00');

INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Baking Powder', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 401.08, 'kg', 401.08 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Butter', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 285.55, 'kg', 285.55 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Cocoa Powder', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 243.85, 'kg', 243.85 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Dalda Ghee', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 137.24, 'kg', 137.24 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Eggs', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 428.79, 'dozen', 428.79 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Maida Flour', '0e8b49ea-0562-47ac-89bc-45a280fe70db', -3168.27, 'kg', -3168.27 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Milk Powder', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 364.05, 'kg', 364.05 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Packaging', '0e8b49ea-0562-47ac-89bc-45a280fe70db', -4164.54, 'unit', -4164.54 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Salt', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 275.17, 'kg', 275.17 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Sugar', '0e8b49ea-0562-47ac-89bc-45a280fe70db', -4.37, 'kg', -4.37 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Vanilla Essence', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 116.06, 'litre', 116.06 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Yeast', '0e8b49ea-0562-47ac-89bc-45a280fe70db', 306.81, 'kg', 306.81 * 0.15);


INSERT INTO business_health_config (branch_id) VALUES ('0e8b49ea-0562-47ac-89bc-45a280fe70db');
