

INSERT INTO branches (id, name, address, owner_id, is_active)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Melody Bakery - Extended Dataset', 'Extended dataset import, Rawalpindi', '22222222-2222-2222-2222-222222222222', true);

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('af6524c9-b953-4eb1-9609-391429d99936', 'Imtiaz Ahmed', '+923009900001', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('af6524c9-b953-4eb1-9609-391429d99936', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Baker', 32000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('0656428b-e973-4039-ab6d-ca0fb84fca54', 'Waseem Akram', '+923009900002', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('0656428b-e973-4039-ab6d-ca0fb84fca54', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cashier', 25000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('e858374c-8efe-4092-bce8-95699a2c4cd6', 'Ali Raza', '+923009900003', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('e858374c-8efe-4092-bce8-95699a2c4cd6', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Baker', 32000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('2d86a733-2c4e-4995-bd40-c927cb362c9b', 'Bilal Hussain', '+923009900004', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('2d86a733-2c4e-4995-bd40-c927cb362c9b', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Helper', 20000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('e35ed668-bb17-4a9d-9608-80826d8ea90c', 'Farhan Sheikh', '+923009900005', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('e35ed668-bb17-4a9d-9608-80826d8ea90c', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cashier', 25000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'Nasir Iqbal', '+923009900006', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Baker', 32000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('86d09da8-1eb7-405f-b69a-5d292752ea51', 'Kiran Fatima', '+923009900007', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('86d09da8-1eb7-405f-b69a-5d292752ea51', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packer', 22000, 'monthly');

INSERT INTO users (id, name, phone, password_hash, role, branch_id)
VALUES ('b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'Sana Bibi', '+923009900008', '$2a$10$ZTRrS6/ximcSB4RzvJrO2uyjApH/K2dHxHUYGfag1HdzpGRn5nvLW', 'staff', '1ae447cb-1d0f-475b-adae-11e8e1082720');
INSERT INTO staff_profiles (user_id, branch_id, position, salary_rate, salary_type)
VALUES ('b478d66e-fc93-4d5b-96ae-375f2c7ed2af', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cashier', 25000, 'monthly');

INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 200, 2.0, 8);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 180, 2.0, 9);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 20, 2.0, 180);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 24, 2.0, 140);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 6.0}]', 6.0, 150, 2.0, 10);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 6.0}]', 6.0, 120, 2.0, 12);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 6.0}]', 6.0, 100, 2.0, 18);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 90, 2.0, 35);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 5.0}]', 5.0, 220, 2.0, 7);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 18, 2.0, 220);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 80, 2.0, 22);
INSERT INTO recipes (id, product_name, branch_id, ingredients, flour_qty_kg, expected_units_per_batch, tolerance_percent, cost_per_unit)
VALUES ('9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"name": "Maida Flour", "quantity": 4.0}]', 4.0, 160, 2.0, 15);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('b6eda212-5c79-40c9-a040-1376759e7ec2', 'Al-Fateh Flour Mills', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Rawalpindi - Maida Flour', 84.0, 84.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('090ff47d-69b8-4f77-85fb-a920fc32218b', 'Bismillah Sugar Traders', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Rawalpindi - Sugar', 90.0, 90.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', 'Al-Noor Ghee & Oil', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Islamabad - Dalda Ghee', 74.0, 74.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('8712f420-59c4-4f89-86a6-f2a091d9aee6', 'Punjab Dairy Suppliers', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Rawalpindi - Milk Powder', 80.0, 80.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('b51bdac0-ede7-4f72-a911-e78629238bb3', 'National Foods Distributors', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Islamabad - Baking Powder', 92.0, 92.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('d16b2e76-ca50-40a4-92a4-fe6b80271fb8', 'Rawalpindi Packaging Co', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Rawalpindi - Packaging', 82.0, 82.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('fc454368-94f3-4011-8b5d-27e41f39e219', 'Sadiq Egg Traders', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Rawalpindi - Eggs', 86.0, 86.0);
INSERT INTO suppliers (id, name, contact_phone, branch_id, notes, scorecard_accuracy, scorecard_price)
VALUES ('f69ded5f-187a-416a-8eec-23d973a0f972', 'Metro Cash & Carry', '+923001112233', '1ae447cb-1d0f-475b-adae-11e8e1082720', 'Islamabad - Cocoa Powder', 88.0, 88.0);

INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.19, 21, 21, 0.0, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.26, 125, 125, 0.0, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.15, 123, 122, -0.81, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.2, 155, 154, -0.65, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.16, 21, 21, 0.0, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.79, 192, 190, -1.04, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.94, 198, 198, 0.0, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.99, 150, 149, -0.67, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.2, 155, 154, -0.65, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.87, 19, 19, 0.0, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.28, 157, 156, -0.64, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 161, 159, -1.24, false, '2026-06-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.88, 78, 79, 1.28, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.06, 182, 183, 0.55, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.14, 153, 155, 1.31, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.03, 151, 153, 1.32, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.06, 152, 152, 0.0, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.78, 116, 115, -0.86, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.09, 204, 201, -1.47, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.79, 116, 118, 1.72, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.1, 164, 163, -0.61, false, '2026-06-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.01, 120, 120, 0.0, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.0, 80, 80, 0.0, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.16, 21, 21, 0.0, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.12, 25, 25, 0.0, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.18, 93, 94, 1.08, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.78, 86, 86, 0.0, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.71, 95, 96, 1.05, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.15, 83, 83, 0.0, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.92, 148, 147, -0.68, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.01, 90, 91, 1.11, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.09, 183, 182, -0.55, false, '2026-06-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.92, 197, 194, -1.52, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.22, 94, 95, 1.06, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.17, 207, 204, -1.45, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.11, 225, 226, 0.44, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.88, 118, 118, 0.0, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.75, 171, 173, 1.17, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.79, 172, 174, 1.16, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.73, 115, 115, 0.0, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 166, 165, -0.6, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.95, 89, 89, 0.0, false, '2026-06-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.84, 97, 98, 1.03, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.83, 146, 147, 0.68, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.11, 204, 204, 0.0, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.05, 24, 24, 0.0, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.11, 184, 186, 1.09, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.04, 121, 123, 1.65, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.89, 88, 87, -1.14, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.16, 186, 185, -0.54, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.91, 196, 188, -4.08, true, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.09, 18, 18, 0.0, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.17, 93, 88, -5.38, true, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.79, 211, 213, 0.95, false, '2026-06-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 20, 20, 0.0, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.2, 187, 189, 1.07, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.23, 94, 95, 1.06, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.03, 18, 18, 0.0, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.7, 95, 96, 1.05, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.28, 157, 159, 1.27, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.9, 216, 218, 0.93, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.2, 168, 168, 0.0, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.0, 100, 100, 0.0, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.07, 183, 180, -1.64, false, '2026-06-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.03, 181, 182, 0.55, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.08, 224, 227, 1.34, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.15, 206, 203, -1.46, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.82, 212, 214, 0.94, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.19, 168, 169, 0.6, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.82, 116, 115, -0.86, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.07, 20, 20, 0.0, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.86, 146, 144, -1.37, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.25, 156, 157, 0.64, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.81, 17, 17, 0.0, false, '2026-06-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.86, 117, 118, 0.85, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.01, 18, 18, 0.0, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.91, 156, 154, -1.28, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.85, 154, 149, -3.25, true, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.81, 212, 209, -1.42, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.91, 148, 147, -0.68, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.94, 217, 206, -5.07, true, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.02, 24, 24, 0.0, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.13, 83, 82, -1.2, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.79, 116, 117, 0.86, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.05, 182, 180, -1.1, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.82, 153, 155, 1.31, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.02, 150, 151, 0.67, false, '2026-06-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.92, 118, 117, -0.85, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.16, 19, 19, 0.0, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.86, 19, 19, 0.0, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.06, 162, 164, 1.23, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.87, 117, 118, 0.85, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.09, 224, 227, 1.34, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.05, 24, 24, 0.0, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.9, 176, 175, -0.57, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.07, 18, 18, 0.0, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.16, 123, 122, -0.81, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.87, 19, 19, 0.0, false, '2026-06-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.14, 166, 167, 0.6, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.96, 79, 78, -1.27, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.18, 25, 25, 0.0, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.01, 18, 18, 0.0, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.05, 182, 183, 0.55, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.81, 17, 17, 0.0, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.1, 184, 186, 1.09, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.13, 185, 185, 0.0, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.9, 23, 23, 0.0, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.18, 84, 85, 1.19, false, '2026-07-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.17, 227, 226, -0.44, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.89, 156, 155, -0.64, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.87, 155, 156, 0.65, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.96, 119, 114, -4.2, true, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.16, 19, 19, 0.0, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.25, 189, 183, -3.17, true, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.07, 203, 200, -1.48, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 21, 21, 0.0, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.25, 189, 189, 0.0, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.08, 183, 181, -1.09, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.84, 23, 23, 0.0, false, '2026-07-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.72, 143, 145, 1.4, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.23, 230, 230, 0.0, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.97, 20, 20, 0.0, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.97, 159, 161, 1.26, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.95, 149, 149, 0.0, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.85, 175, 173, -1.14, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 20, 19, -5.0, true, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.83, 77, 77, 0.0, false, '2026-07-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.16, 93, 90, -3.23, true, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.93, 89, 89, 0.0, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.02, 201, 201, 0.0, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.94, 149, 149, 0.0, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.78, 210, 211, 0.48, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.86, 87, 86, -1.15, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 21, 21, 0.0, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.89, 156, 157, 0.64, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.16, 154, 156, 1.3, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.13, 153, 152, -0.65, false, '2026-07-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.94, 119, 120, 0.84, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.05, 121, 119, -1.65, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 18, 18, 0.0, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.88, 215, 215, 0.0, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.05, 202, 203, 0.5, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.04, 151, 152, 0.66, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.95, 20, 20, 0.0, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.84, 87, 88, 1.15, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.78, 96, 96, 0.0, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.15, 185, 184, -0.54, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.1, 122, 121, -0.82, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.11, 204, 207, 1.47, false, '2026-07-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.94, 198, 200, 1.01, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.95, 24, 23, -4.17, true, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.15, 93, 94, 1.08, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.84, 97, 98, 1.03, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.02, 221, 221, 0.0, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.13, 153, 152, -0.65, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.18, 21, 21, 0.0, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.83, 213, 212, -0.47, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.16, 93, 92, -1.08, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.22, 94, 95, 1.06, false, '2026-07-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.87, 175, 173, -1.14, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.92, 157, 156, -0.64, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.22, 209, 211, 0.96, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.74, 144, 143, -0.69, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.09, 224, 221, -1.34, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.27, 104, 105, 0.96, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.82, 97, 98, 1.03, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.25, 94, 95, 1.06, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.24, 231, 231, 0.0, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.8, 192, 195, 1.56, false, '2026-07-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.81, 145, 144, -0.69, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.95, 198, 196, -1.01, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.12, 225, 225, 0.0, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.28, 126, 124, -1.59, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.74, 115, 116, 0.87, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.05, 20, 20, 0.0, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.1, 184, 184, 0.0, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.1, 224, 223, -0.45, false, '2026-07-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 81, 82, 1.23, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.98, 18, 18, 0.0, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 21, 21, 0.0, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.94, 178, 179, 0.56, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.17, 25, 25, 0.0, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.96, 18, 18, 0.0, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.29, 126, 124, -1.59, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.9, 118, 117, -0.85, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.97, 219, 219, 0.0, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.97, 219, 217, -0.91, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.06, 81, 82, 1.23, false, '2026-07-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.23, 156, 154, -1.28, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.86, 194, 193, -0.52, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.93, 89, 88, -1.12, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.09, 204, 207, 1.47, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 19, 19, 0.0, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.85, 87, 88, 1.15, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.24, 94, 95, 1.06, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.21, 208, 208, 0.0, false, '2026-07-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.95, 158, 159, 0.63, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.14, 93, 94, 1.08, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 82, 82, 0.0, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.86, 154, 154, 0.0, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.17, 123, 122, -0.81, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.0, 120, 120, 0.0, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.88, 23, 23, 0.0, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.09, 122, 121, -0.82, false, '2026-07-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.17, 154, 155, 0.65, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.13, 21, 21, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.7, 142, 142, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.01, 18, 18, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 25, 25, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.27, 104, 104, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.91, 18, 18, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.79, 211, 210, -0.47, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.18, 228, 230, 0.88, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.98, 100, 99, -1.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.83, 213, 211, -0.94, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.89, 23, 23, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.18, 93, 94, 1.08, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.02, 120, 120, 0.0, false, '2026-07-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.9, 20, 20, 0.0, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.85, 23, 23, 0.0, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.73, 96, 95, -1.04, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.03, 161, 161, 0.0, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.96, 198, 199, 0.51, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.87, 17, 17, 0.0, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.05, 121, 118, -2.48, true, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.0, 200, 200, 0.0, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.1, 92, 92, 0.0, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.09, 204, 207, 1.47, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.76, 190, 188, -1.05, false, '2026-07-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.02, 20, 20, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.15, 166, 167, 0.6, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.17, 93, 94, 1.08, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.85, 19, 19, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.13, 21, 21, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.83, 77, 78, 1.3, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.91, 20, 20, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.93, 119, 121, 1.68, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.02, 161, 161, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.96, 119, 119, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.89, 19, 19, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 82, 82, 0.0, false, '2026-07-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.94, 18, 18, 0.0, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.08, 183, 180, -1.64, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.84, 154, 152, -1.3, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.11, 25, 25, 0.0, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.11, 102, 101, -0.98, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.05, 20, 20, 0.0, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.92, 216, 214, -0.93, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.06, 101, 102, 0.99, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 18, 18, 0.0, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.97, 18, 18, 0.0, false, '2026-07-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.87, 214, 214, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.09, 164, 164, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.08, 18, 18, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.23, 188, 188, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.88, 215, 216, 0.47, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.01, 200, 200, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 81, 81, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.98, 24, 24, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.08, 18, 18, 0.0, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.98, 199, 198, -0.5, false, '2026-07-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.08, 152, 153, 0.66, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.2, 229, 228, -0.44, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.3, 105, 106, 0.95, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.13, 83, 84, 1.2, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.2, 84, 85, 1.19, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.8, 17, 17, 0.0, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.23, 209, 211, 0.96, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.04, 121, 122, 0.83, false, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.81, 19, 18, -5.26, true, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.13, 205, 199, -2.93, true, '2026-07-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.03, 18, 17, -5.56, true, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.94, 149, 147, -1.34, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.98, 20, 19, -5.0, true, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 81, 82, 1.23, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.17, 83, 83, 0.0, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.99, 80, 80, 0.0, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.18, 124, 124, 0.0, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 84, 84, 0.0, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.92, 118, 117, -0.85, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.73, 143, 145, 1.4, false, '2026-07-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.79, 116, 116, 0.0, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.1, 92, 92, 0.0, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.76, 171, 172, 0.58, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.98, 80, 80, 0.0, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.02, 120, 116, -3.33, true, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.04, 181, 174, -3.87, true, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.83, 23, 23, 0.0, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.82, 76, 73, -3.95, true, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.87, 88, 86, -2.27, true, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 25, 25, 0.0, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.0, 100, 101, 1.0, false, '2026-07-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.18, 154, 152, -1.3, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.81, 19, 19, 0.0, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.07, 101, 102, 0.99, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.94, 24, 24, 0.0, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.18, 207, 202, -2.42, true, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.02, 20, 19, -5.0, true, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.83, 97, 97, 0.0, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.27, 125, 125, 0.0, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.19, 25, 25, 0.0, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.75, 86, 85, -1.16, false, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.86, 87, 83, -4.6, true, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.9, 18, 17, -5.56, true, '2026-07-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.88, 23, 23, 0.0, false, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.22, 124, 119, -4.03, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.76, 96, 93, -3.12, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.03, 81, 79, -2.47, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.99, 150, 149, -0.67, false, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.06, 91, 87, -4.4, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.75, 96, 95, -1.04, false, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.11, 225, 216, -4.0, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.98, 179, 179, 0.0, false, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.2, 21, 20, -4.76, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.93, 18, 18, 0.0, false, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.13, 205, 200, -2.44, true, '2026-07-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.01, 80, 80, 0.0, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.99, 160, 159, -0.62, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.12, 21, 20, -4.76, true, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.97, 100, 99, -1.0, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.16, 206, 199, -3.4, true, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.01, 220, 219, -0.45, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.02, 161, 162, 0.62, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.78, 116, 115, -0.86, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.89, 19, 19, 0.0, false, '2026-07-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.28, 126, 125, -0.79, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 21, 21, 0.0, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.14, 83, 82, -1.2, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.76, 209, 200, -4.31, true, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.22, 156, 155, -0.64, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.12, 19, 19, 0.0, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.86, 117, 116, -0.85, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.99, 90, 88, -2.22, true, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.87, 98, 97, -1.02, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 81, 78, -3.7, true, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.99, 100, 96, -4.0, true, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.1, 204, 203, -0.49, false, '2026-07-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.81, 76, 76, 0.0, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.86, 87, 87, 0.0, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.0, 160, 158, -1.25, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.18, 207, 210, 1.45, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.81, 152, 151, -0.66, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.09, 164, 165, 0.61, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.21, 94, 94, 0.0, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.96, 18, 18, 0.0, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.86, 194, 196, 1.03, false, '2026-07-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.71, 114, 114, 0.0, false, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.89, 215, 206, -4.19, true, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.77, 86, 86, 0.0, false, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.05, 20, 19, -5.0, true, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.11, 122, 117, -4.1, true, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.06, 182, 182, 0.0, false, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.87, 117, 119, 1.71, false, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.07, 24, 23, -4.17, true, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.05, 24, 24, 0.0, false, '2026-07-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.91, 88, 87, -1.14, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.02, 90, 91, 1.11, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.21, 188, 186, -1.06, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.05, 91, 92, 1.1, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.21, 229, 226, -1.31, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.1, 122, 123, 0.82, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.87, 17, 16, -5.88, true, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.1, 20, 20, 0.0, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 166, 167, 0.6, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.23, 104, 105, 0.96, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.88, 98, 98, 0.0, false, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.84, 174, 167, -4.02, true, '2026-07-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.13, 25, 24, -4.0, true, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.81, 192, 195, 1.56, false, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.09, 25, 24, -4.0, true, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.81, 87, 84, -3.45, true, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.77, 191, 188, -1.57, false, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.17, 83, 83, 0.0, false, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.12, 102, 98, -3.92, true, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.93, 18, 17, -5.56, true, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.76, 144, 143, -0.69, false, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.19, 84, 83, -1.19, false, '2026-07-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.1, 204, 196, -3.92, true, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.01, 80, 79, -1.25, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.1, 82, 81, -1.22, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.19, 168, 160, -4.76, true, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.97, 18, 18, 0.0, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.81, 23, 23, 0.0, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.07, 152, 152, 0.0, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.24, 125, 123, -1.6, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.94, 20, 20, 0.0, false, '2026-07-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.83, 117, 117, 0.0, false, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.04, 121, 115, -4.96, true, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.15, 93, 90, -3.23, true, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.11, 82, 81, -1.22, false, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.85, 154, 155, 0.65, false, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.05, 222, 215, -3.15, true, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.96, 18, 17, -5.56, true, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.24, 189, 190, 0.53, false, '2026-07-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.95, 99, 94, -5.05, true, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.11, 21, 20, -4.76, true, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.94, 20, 20, 0.0, false, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.13, 165, 158, -4.24, true, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.2, 208, 208, 0.0, false, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.97, 24, 24, 0.0, false, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.02, 24, 23, -4.17, true, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.97, 24, 24, 0.0, false, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.89, 19, 19, 0.0, false, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.91, 216, 213, -1.39, false, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.17, 167, 160, -4.19, true, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.89, 215, 204, -5.12, true, '2026-07-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.09, 183, 175, -4.37, true, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.98, 159, 160, 0.63, false, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.27, 125, 119, -4.8, true, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.95, 158, 157, -0.63, false, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.87, 175, 167, -4.57, true, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.9, 216, 215, -0.46, false, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.02, 80, 81, 1.25, false, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.93, 24, 24, 0.0, false, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.19, 124, 118, -4.84, true, '2026-07-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.95, 24, 24, 0.0, false, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.81, 17, 16, -5.88, true, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.98, 100, 95, -5.0, true, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.18, 84, 84, 0.0, false, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.88, 147, 147, 0.0, false, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.85, 154, 147, -4.55, true, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.15, 227, 228, 0.44, false, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.18, 103, 97, -5.83, true, '2026-08-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.93, 24, 24, 0.0, false, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.2, 155, 149, -3.87, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.86, 98, 97, -1.02, false, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.96, 218, 206, -5.5, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.97, 79, 77, -2.53, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.03, 81, 78, -3.7, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 18, 18, 0.0, false, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.78, 172, 172, 0.0, false, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.2, 94, 94, 0.0, false, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.8, 86, 82, -4.65, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.12, 82, 78, -4.88, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.88, 88, 83, -5.68, true, '2026-08-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.98, 24, 23, -4.17, true, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.91, 156, 155, -0.64, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.73, 96, 91, -5.21, true, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.14, 153, 146, -4.58, true, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.86, 23, 23, 0.0, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.16, 83, 84, 1.2, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.96, 24, 24, 0.0, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.72, 114, 115, 0.88, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.06, 81, 82, 1.23, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.92, 24, 23, -4.17, true, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.96, 20, 20, 0.0, false, '2026-08-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.07, 24, 23, -4.17, true, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.77, 172, 172, 0.0, false, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.1, 122, 116, -4.92, true, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.77, 172, 172, 0.0, false, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.19, 25, 24, -4.0, true, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 20, 20, 0.0, false, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.16, 154, 146, -5.19, true, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.97, 18, 17, -5.56, true, '2026-08-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.26, 104, 105, 0.96, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.76, 96, 96, 0.0, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.82, 153, 155, 1.31, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.08, 203, 205, 0.99, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.15, 19, 19, 0.0, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.8, 86, 85, -1.16, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.07, 20, 20, 0.0, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.04, 181, 180, -0.55, false, '2026-08-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.08, 18, 18, 0.0, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.08, 224, 225, 0.45, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.77, 115, 110, -4.35, true, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.09, 82, 82, 0.0, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.96, 179, 176, -1.68, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.83, 17, 17, 0.0, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.11, 164, 165, 0.61, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.88, 118, 120, 1.69, false, '2026-08-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 162, 160, -1.23, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.74, 144, 135, -6.25, true, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.81, 173, 165, -4.62, true, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.96, 18, 18, 0.0, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.09, 25, 24, -4.0, true, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 24, 24, 0.0, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.18, 25, 24, -4.0, true, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.83, 77, 74, -3.9, true, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.08, 152, 150, -1.32, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.11, 122, 123, 0.82, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.78, 96, 97, 1.04, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.25, 125, 124, -0.8, false, '2026-08-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.14, 102, 101, -0.98, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.76, 190, 190, 0.0, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.76, 115, 116, 0.87, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.03, 24, 24, 0.0, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.94, 217, 220, 1.38, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.9, 78, 78, 0.0, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.75, 96, 97, 1.04, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.01, 80, 81, 1.25, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.12, 21, 21, 0.0, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.99, 200, 201, 0.5, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.95, 20, 20, 0.0, false, '2026-08-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.03, 161, 162, 0.62, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.0, 20, 20, 0.0, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.11, 164, 155, -5.49, true, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.18, 154, 153, -0.65, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.23, 94, 94, 0.0, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.91, 78, 78, 0.0, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.29, 105, 104, -0.95, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.06, 81, 80, -1.23, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.91, 78, 78, 0.0, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.06, 202, 193, -4.46, true, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.02, 90, 85, -5.56, true, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.79, 86, 87, 1.16, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 163, 162, -0.61, false, '2026-08-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.71, 143, 141, -1.4, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.17, 227, 230, 1.32, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.96, 24, 23, -4.17, true, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.96, 18, 18, 0.0, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.89, 98, 98, 0.0, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.78, 210, 210, 0.0, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.06, 20, 20, 0.0, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.96, 24, 24, 0.0, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.8, 19, 18, -5.26, true, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.97, 149, 147, -1.34, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.95, 99, 98, -1.01, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.83, 193, 182, -5.7, true, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.02, 100, 101, 1.0, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.81, 192, 190, -1.04, false, '2026-08-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.88, 23, 23, 0.0, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.19, 187, 186, -0.53, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.92, 20, 20, 0.0, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.95, 218, 216, -0.92, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.97, 79, 78, -1.27, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.99, 18, 18, 0.0, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.99, 120, 121, 0.83, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.9, 176, 177, 0.57, false, '2026-08-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.19, 19, 19, 0.0, false, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.15, 93, 93, 0.0, false, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.71, 143, 141, -1.4, false, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.18, 167, 163, -2.4, true, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.71, 143, 143, 0.0, false, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.96, 149, 148, -0.67, false, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.78, 116, 109, -6.03, true, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.94, 178, 167, -6.18, true, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.17, 207, 207, 0.0, false, '2026-08-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.88, 176, 174, -1.14, false, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.16, 186, 176, -5.38, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.97, 219, 204, -6.85, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.18, 84, 79, -5.95, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.97, 159, 148, -6.92, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.04, 202, 189, -6.44, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.06, 152, 144, -5.26, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.89, 78, 77, -1.28, false, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.87, 77, 76, -1.3, false, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.82, 19, 18, -5.26, true, '2026-08-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.15, 21, 21, 0.0, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.8, 23, 22, -4.35, true, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.15, 21, 21, 0.0, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.21, 229, 231, 0.87, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.02, 120, 113, -5.83, true, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.92, 197, 197, 0.0, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.79, 192, 190, -1.04, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.1, 18, 18, 0.0, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.29, 105, 106, 0.95, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.21, 188, 187, -0.53, false, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.8, 76, 72, -5.26, true, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.93, 20, 19, -5.0, true, '2026-08-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.08, 91, 86, -5.49, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.87, 23, 21, -8.7, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.19, 21, 20, -4.76, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.91, 88, 83, -5.68, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.76, 144, 135, -6.25, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.09, 183, 172, -6.01, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.92, 177, 168, -5.08, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.06, 182, 172, -5.49, true, '2026-08-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.93, 20, 19, -5.0, true, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.14, 123, 123, 0.0, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.19, 84, 78, -7.14, true, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.82, 116, 115, -0.86, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.03, 161, 162, 0.62, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.23, 209, 210, 0.48, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.02, 90, 90, 0.0, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.74, 115, 116, 0.87, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.83, 87, 88, 1.15, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.81, 87, 87, 0.0, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.07, 20, 20, 0.0, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.94, 79, 79, 0.0, false, '2026-08-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.88, 155, 153, -1.29, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.99, 18, 17, -5.56, true, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.08, 82, 83, 1.22, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.01, 18, 18, 0.0, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.9, 23, 23, 0.0, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.84, 213, 212, -0.47, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.91, 78, 77, -1.28, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.22, 188, 188, 0.0, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.77, 86, 86, 0.0, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.01, 90, 89, -1.11, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.18, 207, 209, 0.97, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.06, 182, 183, 0.55, false, '2026-08-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.04, 222, 207, -6.76, true, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.84, 174, 173, -0.57, false, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.03, 221, 221, 0.0, false, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.79, 211, 196, -7.11, true, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.11, 18, 18, 0.0, false, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.95, 89, 88, -1.12, false, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.08, 91, 92, 1.1, false, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.02, 20, 20, 0.0, false, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.19, 187, 177, -5.35, true, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.2, 25, 24, -4.0, true, '2026-08-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.07, 91, 85, -6.59, true, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.82, 212, 197, -7.08, true, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.78, 144, 144, 0.0, false, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.94, 158, 149, -5.7, true, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.13, 226, 211, -6.64, true, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.22, 94, 88, -6.38, true, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.75, 96, 96, 0.0, false, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.16, 154, 156, 1.3, false, '2026-08-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.78, 96, 97, 1.04, false, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.08, 101, 101, 0.0, false, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.97, 20, 20, 0.0, false, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.96, 20, 19, -5.0, true, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.16, 93, 88, -5.38, true, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.16, 166, 164, -1.2, false, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.08, 122, 118, -3.28, true, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.77, 115, 107, -6.96, true, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.04, 162, 162, 0.0, false, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.21, 103, 102, -0.97, false, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.8, 86, 81, -5.81, true, '2026-08-20 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.0, 100, 100, 0.0, false, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.92, 20, 20, 0.0, false, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 21, 21, 0.0, false, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.12, 82, 82, 0.0, false, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.12, 82, 77, -6.1, true, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.09, 92, 93, 1.09, false, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.88, 118, 111, -5.93, true, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.99, 200, 199, -0.5, false, '2026-08-21 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.13, 83, 82, -1.2, false, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 24, 24, 0.0, false, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.29, 157, 148, -5.73, true, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.14, 21, 21, 0.0, false, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.9, 196, 197, 0.51, false, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.23, 125, 122, -2.4, true, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.07, 183, 182, -0.55, false, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.82, 212, 213, 0.47, false, '2026-08-22 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.86, 194, 193, -0.52, false, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.84, 213, 197, -7.51, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.23, 104, 104, 0.0, false, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.74, 115, 107, -6.96, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.79, 172, 172, 0.0, false, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.97, 24, 24, 0.0, false, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.07, 183, 170, -7.1, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.89, 196, 191, -2.55, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.89, 98, 99, 1.02, false, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.86, 146, 139, -4.79, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.82, 146, 145, -0.68, false, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.03, 221, 206, -6.79, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.15, 123, 114, -7.32, true, '2026-08-23 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.11, 204, 204, 0.0, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.9, 88, 87, -1.14, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.05, 81, 76, -6.17, true, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.12, 225, 222, -1.33, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.78, 172, 159, -7.56, true, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.06, 91, 84, -7.69, true, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.9, 118, 119, 0.85, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.15, 19, 19, 0.0, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.01, 18, 17, -5.56, true, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.24, 189, 177, -6.35, true, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.17, 123, 123, 0.0, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.8, 173, 172, -0.58, false, '2026-08-24 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 167, 165, -1.2, false, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.13, 25, 24, -4.0, true, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.82, 193, 191, -1.04, false, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.03, 121, 121, 0.0, false, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.29, 126, 127, 0.79, false, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.84, 17, 16, -5.88, true, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.9, 176, 175, -0.57, false, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.17, 227, 213, -6.17, true, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.05, 20, 20, 0.0, false, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.1, 20, 19, -5.0, true, '2026-08-25 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.23, 209, 193, -7.66, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.78, 144, 144, 0.0, false, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.0, 18, 17, -5.56, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.0, 18, 17, -5.56, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.82, 97, 90, -7.22, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.94, 178, 178, 0.0, false, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.06, 101, 94, -6.93, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.91, 177, 165, -6.78, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.09, 122, 113, -7.38, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.83, 193, 180, -6.74, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.18, 124, 115, -7.26, true, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.77, 191, 194, 1.57, false, '2026-08-26 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.94, 79, 75, -5.06, true, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 84, 85, 1.19, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.0, 200, 200, 0.0, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.11, 18, 18, 0.0, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.22, 209, 211, 0.96, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.21, 188, 188, 0.0, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.05, 24, 24, 0.0, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.09, 183, 182, -0.55, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.85, 194, 193, -0.52, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 162, 161, -0.62, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.09, 82, 82, 0.0, false, '2026-08-27 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.94, 178, 165, -7.3, true, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.09, 224, 216, -3.57, true, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.18, 207, 193, -6.76, true, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.83, 77, 77, 0.0, false, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.02, 90, 83, -7.78, true, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.75, 209, 207, -0.96, false, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.92, 216, 216, 0.0, false, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.11, 92, 92, 0.0, false, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.79, 86, 87, 1.16, false, '2026-08-28 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.06, 152, 154, 1.32, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 25, 25, 0.0, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.82, 76, 76, 0.0, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.89, 156, 158, 1.28, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.1, 224, 225, 0.45, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.81, 145, 145, 0.0, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.1, 164, 163, -0.61, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.12, 82, 83, 1.22, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.18, 25, 25, 0.0, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.17, 93, 92, -1.08, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.83, 17, 17, 0.0, false, '2026-08-29 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.08, 122, 112, -8.2, true, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.86, 214, 215, 0.47, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.12, 205, 190, -7.32, true, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.19, 21, 21, 0.0, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.99, 160, 160, 0.0, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.09, 92, 85, -7.61, true, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.82, 146, 137, -6.16, true, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.93, 217, 216, -0.46, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.1, 164, 166, 1.22, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.14, 102, 95, -6.86, true, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.97, 24, 24, 0.0, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.0, 120, 110, -8.33, true, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.91, 177, 178, 0.56, false, '2026-08-30 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.99, 90, 90, 0.0, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.14, 83, 83, 0.0, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.81, 145, 144, -0.69, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.17, 103, 102, -0.97, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.83, 117, 111, -5.13, true, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 82, 83, 1.22, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.27, 104, 105, 0.96, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.84, 154, 155, 0.65, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.81, 192, 192, 0.0, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.82, 153, 141, -7.84, true, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.94, 178, 165, -7.3, true, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 24, 24, 0.0, false, '2026-08-31 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.84, 174, 174, 0.0, false, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.05, 222, 205, -7.66, true, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.89, 88, 89, 1.14, false, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.18, 154, 152, -1.3, false, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.0, 160, 161, 0.62, false, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.03, 121, 111, -8.26, true, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.24, 104, 103, -0.96, false, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.09, 18, 17, -5.56, true, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.14, 166, 152, -8.43, true, '2026-09-01 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.1, 20, 20, 0.0, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.92, 89, 82, -7.87, true, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.87, 214, 214, 0.0, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.13, 92, 93, 1.09, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.88, 17, 17, 0.0, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 18, 18, 0.0, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.97, 24, 24, 0.0, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.96, 99, 98, -1.01, false, '2026-09-02 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.72, 143, 143, 0.0, false, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.09, 122, 122, 0.0, false, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.89, 156, 144, -7.69, true, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.23, 209, 211, 0.96, false, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.01, 90, 84, -6.67, true, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.98, 179, 165, -7.82, true, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.86, 98, 90, -8.16, true, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.17, 167, 167, 0.0, false, '2026-09-03 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.8, 145, 144, -0.69, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.14, 21, 21, 0.0, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.16, 166, 166, 0.0, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.06, 152, 139, -8.55, true, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.94, 149, 148, -0.67, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.05, 101, 101, 0.0, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.02, 150, 151, 0.67, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.82, 212, 210, -0.94, false, '2026-09-04 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.92, 20, 20, 0.0, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.85, 194, 197, 1.55, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.9, 98, 90, -8.16, true, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.24, 210, 192, -8.57, true, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.27, 104, 106, 1.92, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.03, 91, 83, -8.79, true, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.75, 209, 208, -0.48, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.79, 192, 194, 1.04, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.07, 121, 110, -9.09, true, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.22, 188, 190, 1.06, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.95, 18, 18, 0.0, false, '2026-09-05 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.12, 102, 103, 0.98, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.81, 17, 17, 0.0, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.9, 20, 20, 0.0, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.77, 172, 172, 0.0, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.15, 185, 187, 1.08, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.12, 184, 185, 0.54, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.13, 185, 186, 0.54, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.12, 184, 182, -1.09, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.87, 147, 148, 0.68, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.95, 198, 198, 0.0, false, '2026-09-06 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.79, 116, 117, 0.86, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.75, 115, 115, 0.0, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.7, 95, 95, 0.0, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.91, 88, 89, 1.14, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.11, 204, 206, 0.98, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.98, 80, 80, 0.0, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.1, 25, 23, -8.0, true, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.18, 186, 171, -8.06, true, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.81, 192, 185, -3.65, true, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.88, 155, 143, -7.74, true, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.74, 144, 143, -0.69, false, '2026-09-07 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.98, 199, 198, -0.5, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.84, 174, 175, 0.57, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.99, 20, 20, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.95, 24, 24, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.93, 18, 18, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 18, 18, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.81, 87, 87, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.75, 144, 135, -6.25, true, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 24, 24, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.02, 24, 24, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.01, 80, 80, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.25, 125, 125, 0.0, false, '2026-09-08 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.22, 94, 85, -9.57, true, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.87, 117, 116, -0.85, false, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.91, 177, 164, -7.34, true, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.96, 20, 20, 0.0, false, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.94, 149, 150, 0.67, false, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.74, 115, 104, -9.57, true, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.83, 153, 155, 1.31, false, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.94, 99, 90, -9.09, true, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.2, 208, 188, -9.62, true, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.22, 188, 188, 0.0, false, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.18, 19, 19, 0.0, false, '2026-09-09 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.1, 25, 25, 0.0, false, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.02, 120, 110, -8.33, true, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.84, 23, 23, 0.0, false, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.14, 166, 165, -0.6, false, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.1, 92, 84, -8.7, true, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.08, 224, 203, -9.38, true, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.16, 93, 90, -3.23, true, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.9, 156, 148, -5.13, true, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 20, 20, 0.0, false, '2026-09-10 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.83, 146, 145, -0.68, false, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.87, 77, 77, 0.0, false, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.08, 82, 83, 1.22, false, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.18, 186, 170, -8.6, true, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.94, 178, 161, -9.55, true, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.86, 117, 118, 0.85, false, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.23, 94, 93, -1.06, false, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.08, 163, 150, -7.98, true, '2026-09-11 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.93, 157, 143, -8.92, true, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.86, 117, 116, -0.85, false, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.73, 96, 96, 0.0, false, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.77, 210, 194, -7.62, true, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.88, 155, 141, -9.03, true, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.01, 160, 147, -8.12, true, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.19, 168, 153, -8.93, true, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.11, 225, 222, -1.33, false, '2026-09-12 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.0, 120, 111, -7.5, true, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.88, 19, 17, -10.53, true, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.21, 124, 113, -8.87, true, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.18, 21, 21, 0.0, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.99, 160, 159, -0.62, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.81, 173, 172, -0.58, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.16, 123, 121, -1.63, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.86, 19, 19, 0.0, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.12, 21, 19, -9.52, true, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.11, 92, 91, -1.09, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.14, 226, 228, 0.88, false, '2026-09-13 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.11, 122, 120, -1.64, false, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.25, 231, 229, -0.87, false, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.08, 163, 162, -0.61, false, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.22, 104, 106, 1.92, false, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.12, 153, 152, -0.65, false, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.04, 151, 138, -8.61, true, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.86, 17, 16, -5.88, true, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.99, 20, 18, -10.0, true, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.09, 82, 74, -9.76, true, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.05, 18, 18, 0.0, false, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.98, 80, 73, -8.75, true, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.81, 116, 106, -8.62, true, '2026-09-14 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.88, 176, 160, -9.09, true, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.88, 98, 89, -9.18, true, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.12, 122, 123, 0.82, false, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.2, 187, 171, -8.56, true, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.82, 153, 139, -9.15, true, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.07, 203, 185, -8.87, true, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.72, 143, 141, -1.4, false, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.92, 20, 20, 0.0, false, '2026-09-15 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.86, 175, 175, 0.0, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.19, 187, 187, 0.0, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.16, 83, 82, -1.2, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.05, 24, 24, 0.0, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.89, 78, 71, -8.97, true, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.78, 144, 131, -9.03, true, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.04, 162, 163, 0.62, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.09, 20, 20, 0.0, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.97, 20, 20, 0.0, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.06, 24, 24, 0.0, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.17, 207, 210, 1.45, false, '2026-09-16 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.13, 25, 23, -8.0, true, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.01, 200, 199, -0.5, false, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.21, 208, 189, -9.13, true, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.89, 19, 19, 0.0, false, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.82, 17, 17, 0.0, false, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 3.91, 18, 18, 0.0, false, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.25, 125, 126, 0.8, false, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.07, 18, 16, -11.11, true, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 5.88, 118, 117, -0.85, false, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.84, 77, 69, -10.39, true, '2026-09-17 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.09, 25, 25, 0.0, false, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5d4bce03-13b2-49d6-88f0-80b588112e81', 'Donuts', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 3.83, 77, 70, -9.09, true, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 6.0, 120, 119, -0.83, false, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '60cc7659-b9ed-4d5f-972f-48087874737a', 'Khari Biscuit', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.19, 228, 206, -9.65, true, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.1, 152, 151, -0.66, false, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '8b3305e5-d65c-4c57-a81d-02ea069aadbf', 'Plain Bun', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 6.19, 124, 113, -8.87, true, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.01, 24, 22, -8.33, true, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.92, 177, 161, -9.04, true, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '97fc6daa-641e-489c-95b5-89ac8c34a60f', 'Chocolate Cake', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 4.1, 18, 16, -11.11, true, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '5e7e48b2-8f19-4ee0-85da-c9351e397f08', 'Dry Cake', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 3.88, 23, 23, 0.0, false, '2026-09-18 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.81, 87, 86, -1.15, false, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '1896fd47-ff12-4c95-a352-6fb987c077fb', 'Bread Rusk', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.9, 148, 148, 0.0, false, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'bce6277b-cb32-4868-9c53-907729fac272', 'Chicken Patties', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 5.23, 94, 93, -1.06, false, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '9ed785de-c837-4966-a1d1-28c9c94f0959', 'Chocolate Chip Cookies', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.03, 161, 162, 0.62, false, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '4294454c-5679-4ad8-bb01-021663fb967b', 'Cream Bun', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 6.11, 102, 103, 0.98, false, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '27fb35cf-1237-4932-9388-f20d90d28c79', 'Naan Khatai', 'af6524c9-b953-4eb1-9609-391429d99936', 'morning', 5.09, 183, 168, -8.2, true, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '280614e3-bce2-4301-ae04-41bad3df0e86', 'Kara Biscuit', 'e858374c-8efe-4092-bce8-95699a2c4cd6', 'evening', 4.79, 192, 191, -0.52, false, '2026-09-19 08:00:00');
INSERT INTO production_batches (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg, expected_units, actual_units, variance_percent, fraud_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '594da9d1-03db-44e9-b8e6-a73caeff8751', 'Fruit Cake', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', 'morning', 4.04, 20, 20, 0.0, false, '2026-09-19 08:00:00');

-- ---- Sales Transactions (dates shifted) ----
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 315, 4711.0, '2026-06-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 54, 18886.0, '2026-06-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 492, 9697.0, '2026-06-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 206, 5133.0, '2026-06-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 144, 4258.0, '2026-06-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 220, 3296.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 153, 2409.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Fruit Cake', 7, 2426.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Bread Rusk', 514, 10266.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 227, 5590.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Donuts', 75, 3327.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 156, 4035.0, '2026-06-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 52, 771.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 178, 3189.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 19, 6597.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 23, 6399.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 190, 3749.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 146, 3635.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 86, 2969.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 224, 13264.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 140, 6226.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 18, 533.0, '2026-06-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 349, 5197.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 332, 5917.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 2, 697.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 2, 559.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Bread Rusk', 20, 399.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 223, 5532.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 8, 276.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 222, 13311.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 205, 2847.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 23, 966.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 144, 4299.0, '2026-06-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 389, 5756.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 403, 7252.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 20, 4995.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 125, 2463.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 125, 3110.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 81, 2825.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 178, 10530.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 208, 2539.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 15, 5733.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 4, 180.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 20, 561.0, '2026-06-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 50, 748.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 329, 5876.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 18, 6298.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 4, 1112.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 166, 3285.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 26, 649.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Cream Bun', 186, 6499.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 93, 5517.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 202, 2812.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 19, 7893.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 149, 4415.0, '2026-06-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 197, 2953.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 220, 3940.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 18, 6271.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 290, 5751.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 98, 2441.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 24, 838.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 8, 476.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 415, 5761.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Cake', 17, 7097.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 155, 4618.0, '2026-06-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 9, 133.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 183, 3266.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Fruit Cake', 3, 1048.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 19, 5298.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 267, 5277.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 240, 5952.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 5, 175.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 399, 5580.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 17, 7065.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 72, 3237.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 407, 12032.0, '2026-06-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 1, 15.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 167, 3004.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 33, 11460.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 23, 6383.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 54, 1064.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 312, 7745.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 291, 4065.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 32, 13280.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 9, 400.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 215, 5484.0, '2026-06-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 502, 9033.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 6, 2069.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 49, 13699.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 6, 104.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 53, 1306.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 18, 251.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 36, 15078.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 146, 6486.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 170, 5067.0, '2026-07-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 193, 2863.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 608, 10868.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 18, 6207.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Dry Cake', 25, 6931.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 1, 20.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 99, 2466.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 195, 2723.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 25, 9337.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 16, 716.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 279, 7431.0, '2026-07-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 6, 90.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 177, 3177.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Fruit Cake', 36, 10757.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 3, 828.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 240, 4729.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 21, 523.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 223, 3090.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 1, 416.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 64, 2849.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 187, 5564.0, '2026-07-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 182, 2692.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 15, 267.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 24, 8374.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 479, 9444.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 1, 25.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 253, 15090.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 225, 3139.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 14, 622.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 165, 4941.0, '2026-07-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 350, 5195.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 159, 2666.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 19, 6623.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 168, 3322.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 306, 7618.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 92, 3194.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 92, 5452.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 210, 2710.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 16, 6643.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 1, 45.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 27, 695.0, '2026-07-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 246, 3237.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 23, 408.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 24, 8383.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 21, 5240.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 140, 2766.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 49, 1219.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 96, 3336.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 279, 16675.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 431, 5952.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 2, 840.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 5, 132.0, '2026-07-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 403, 5973.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 172, 3072.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 1, 349.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 2, 553.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 156, 3087.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 4, 99.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 168, 5870.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 90, 5360.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 397, 5495.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 135, 3995.0, '2026-07-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 190, 2812.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 183, 2919.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 19, 6560.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Bread Rusk', 144, 2837.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 214, 4672.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Cream Bun', 36, 1247.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 14, 836.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 514, 7099.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 20, 591.0, '2026-07-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 37, 550.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 160, 2839.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 21, 6722.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 22, 6068.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 13, 260.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 231, 5722.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 4, 123.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 1, 56.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 374, 5228.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 31, 12847.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 132, 5911.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 2, 60.0, '2026-07-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 539, 8073.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 24, 428.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 1, 348.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Dry Cake', 3, 838.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 145, 2884.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 35, 869.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 1, 35.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 237, 14037.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 75, 1036.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 22, 9235.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 31, 1389.0, '2026-07-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 69, 1025.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 1, 18.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 19, 5285.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 9, 179.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 347, 8608.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 109, 6475.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 8, 110.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 2, 832.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 72, 3224.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 287, 8512.0, '2026-07-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 5, 68.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Fruit Cake', 17, 5929.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 47, 12983.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Bread Rusk', 271, 5404.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 131, 3246.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 172, 5946.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 93, 5561.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 571, 7989.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Cake', 31, 12866.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 10, 447.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 22, 658.0, '2026-07-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 704, 10411.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 22, 7607.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 26, 7249.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 27, 532.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 104, 2588.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 120, 4183.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 108, 5616.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 74, 1032.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 18, 7497.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Donuts', 1, 45.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 144, 4307.0, '2026-07-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 88, 1313.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 81, 28101.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 2, 553.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 1, 18.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 243, 6051.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 5, 175.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 84, 4972.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 6, 83.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 4, 1661.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 130, 5816.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 302, 9054.0, '2026-07-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 3, 45.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 164, 2762.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 36, 12492.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 23, 6057.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 16, 394.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 171, 5983.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 13, 779.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 198, 2745.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 52, 21584.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 28, 1251.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 185, 5519.0, '2026-07-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 369, 5504.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 177, 3185.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 3, 1047.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 22, 6074.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 2, 50.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 29, 1002.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 1, 60.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 360, 5014.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 34, 14126.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 79, 3067.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 145, 4326.0, '2026-07-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 367, 5483.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 24, 430.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 18, 6275.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 3, 838.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 125, 2471.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 116, 2878.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 101, 3533.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 270, 3779.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 19, 7889.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 160, 7144.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 28, 774.0, '2026-07-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 58, 750.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 3, 54.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 17, 5934.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 1, 279.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 281, 5550.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 239, 5891.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 9, 313.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 43, 598.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 16, 6692.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 288, 12835.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 5, 149.0, '2026-07-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 13, 192.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 330, 5891.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 3, 1038.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 42, 10209.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 36, 711.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 217, 5348.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 90, 3131.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 148, 8788.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Khari Biscuit', 2, 28.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 3, 1153.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 181, 8090.0, '2026-07-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 195, 2884.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 14, 229.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 32, 11133.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 45, 12461.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 129, 2576.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 123, 3049.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 183, 6365.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chicken Patties', 163, 9643.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 15, 6239.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 23, 1032.0, '2026-07-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Kara Biscuit', 169, 2512.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 153, 2739.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 21, 7303.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 29, 8105.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 148, 2949.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 128, 3177.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 183, 6329.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 114, 6780.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 183, 2542.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 17, 7074.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 66, 2754.0, '2026-07-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 225, 3365.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 24, 427.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 39, 13535.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 3, 785.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 23, 456.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 125, 3113.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 118, 4117.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 7, 417.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 202, 2803.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 3, 1254.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 91, 4061.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 299, 8921.0, '2026-07-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 200, 2995.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 4, 72.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 21, 7297.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 1, 277.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 152, 3016.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 223, 5542.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 199, 6917.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 79, 4712.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 212, 2946.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 15, 6282.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 132, 5879.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 18, 536.0, '2026-07-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 357, 5307.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 5, 1739.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 6, 118.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 22, 544.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 7, 242.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 156, 9301.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Khari Biscuit', 33, 461.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 21, 8762.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 89, 3948.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 448, 13341.0, '2026-07-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Kara Biscuit', 58, 865.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 170, 3049.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 16, 5521.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 39, 10914.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 1, 20.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 338, 8369.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 99, 5877.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 190, 2649.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 1, 419.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Donuts', 18, 803.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 26, 773.0, '2026-07-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 6, 89.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 338, 6083.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Fruit Cake', 20, 6919.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 8, 2214.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 126, 3118.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 168, 5815.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 270, 16039.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 210, 2917.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 14, 5854.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 2, 89.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 162, 4787.0, '2026-07-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 314, 4699.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 25, 446.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 3, 1036.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 45, 12511.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 131, 2614.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 10, 248.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Cream Bun', 125, 4334.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chicken Patties', 86, 5087.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 34, 472.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 17, 7090.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 156, 7006.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 9, 270.0, '2026-07-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 242, 3596.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 2, 36.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 18, 5951.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 21, 5842.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 152, 3008.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 111, 2734.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 7, 245.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 18, 1080.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 3, 42.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 18, 7547.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 148, 6589.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Chip Cookies', 142, 4216.0, '2026-07-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 23, 344.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 174, 3125.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 2, 690.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 5, 1397.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 10, 198.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 202, 5013.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 1, 35.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 87, 5145.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 185, 2584.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 16, 6635.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 89, 3972.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 163, 4834.0, '2026-07-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 181, 2689.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 14, 250.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 48, 16718.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 57, 15761.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 2, 38.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 35, 874.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Cream Bun', 87, 3013.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 5, 296.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 404, 5571.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 3, 1246.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 12, 539.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 271, 8113.0, '2026-07-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 25, 372.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 330, 5858.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 10, 3455.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 36, 9975.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 207, 5133.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 6, 209.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 227, 3131.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 73, 3258.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 324, 8335.0, '2026-07-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 2, 30.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 12, 215.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 1, 349.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 21, 5815.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 129, 2553.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 34, 844.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 156, 5460.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 240, 3332.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Cake', 14, 5820.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Donuts', 86, 3828.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Chip Cookies', 168, 5040.0, '2026-08-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 1, 15.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 155, 2789.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 24, 6630.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 138, 2731.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 3, 75.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 125, 4361.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 211, 12615.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 198, 2738.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 19, 7923.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 193, 8674.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Chip Cookies', 28, 837.0, '2026-08-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 17, 304.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 16, 5568.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 93, 25680.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 160, 3163.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 109, 2708.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 85, 2963.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chicken Patties', 44, 2603.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 24, 333.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 1, 367.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 204, 9090.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 134, 3966.0, '2026-08-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 315, 5624.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 21, 7255.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 46, 12778.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 133, 2630.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 101, 2516.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 14, 485.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 4, 237.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 3, 42.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 16, 6649.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 9, 404.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 21, 629.0, '2026-08-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 166, 2485.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 173, 3072.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 18, 6257.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 5, 1399.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 26, 517.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 20, 493.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 171, 5928.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 78, 4093.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 19, 7102.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 1, 41.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 129, 3838.0, '2026-08-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 37, 552.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 180, 3239.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 5, 1745.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 1, 276.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 2, 40.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 190, 4498.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Cream Bun', 28, 972.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 7, 414.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 214, 2975.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Cake', 34, 14265.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Donuts', 73, 3253.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 171, 5058.0, '2026-08-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 2, 30.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 171, 3069.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 61, 16920.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 231, 4059.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 251, 5684.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 84, 2896.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 11, 152.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 19, 7888.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Donuts', 72, 3202.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 168, 5014.0, '2026-08-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 319, 4755.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 23, 390.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Fruit Cake', 38, 13139.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 29, 8099.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 47, 928.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 139, 3458.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 191, 6649.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 182, 2513.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 1, 418.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 143, 6365.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 11, 289.0, '2026-08-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 251, 3738.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 5, 89.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 20, 6923.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 5, 1234.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 142, 2831.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 13, 323.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 121, 3876.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 216, 12801.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 34, 474.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 216, 9577.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 409, 12201.0, '2026-08-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 340, 5062.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 36, 12505.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 39, 10771.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 263, 5222.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 2, 50.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 252, 8703.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 44, 2336.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 397, 5519.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 15, 6289.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 39, 1591.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 68, 2025.0, '2026-08-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Kara Biscuit', 37, 477.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 318, 5720.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Fruit Cake', 24, 8295.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 27, 7548.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 39, 774.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 103, 2574.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Cream Bun', 44, 1540.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chicken Patties', 5, 296.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Khari Biscuit', 235, 3282.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 19, 7895.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 73, 3237.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 4, 120.0, '2026-08-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 193, 2852.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 172, 3083.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 1, 346.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 5, 1398.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 412, 8137.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 106, 2630.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 7, 243.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 80, 4785.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 26, 314.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 17, 6430.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 12, 535.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 151, 4515.0, '2026-08-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Kara Biscuit', 196, 2925.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 374, 6711.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 15, 5238.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 142, 2814.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 17, 422.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chicken Patties', 11, 652.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 194, 2687.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 4, 1674.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 205, 7895.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 131, 3905.0, '2026-08-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 381, 5651.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 181, 2908.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 52, 18099.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 19, 5267.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 22, 434.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 106, 2622.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 89, 3112.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 3, 179.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 224, 3121.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 16, 6642.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 90, 4047.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Chip Cookies', 27, 810.0, '2026-08-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Kara Biscuit', 21, 311.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 455, 8089.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Fruit Cake', 27, 9438.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Dry Cake', 23, 6418.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 130, 2573.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 10, 248.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Cream Bun', 15, 518.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 163, 8629.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 18, 250.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 2, 829.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 8, 355.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 2, 60.0, '2026-08-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 202, 2989.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 71, 1276.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 36, 12478.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 1, 276.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 8, 159.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 338, 8395.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 2, 66.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 224, 13385.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 1, 14.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 147, 6599.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 151, 4474.0, '2026-08-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Kara Biscuit', 211, 3142.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 337, 6002.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 8, 2498.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 21, 5836.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 1, 20.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 15, 370.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 200, 11843.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 200, 2796.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 32, 13259.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Donuts', 154, 6898.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 141, 4167.0, '2026-08-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 6, 89.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 343, 5506.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 16, 5574.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 24, 6110.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 2, 50.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 163, 9695.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Khari Biscuit', 559, 7730.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Cake', 18, 7485.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 16, 717.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 19, 567.0, '2026-08-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 1, 15.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 40, 618.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 4, 1398.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 2, 560.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 269, 5067.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Cream Bun', 92, 3214.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 189, 11313.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 416, 5778.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Cake', 3, 1245.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 2, 90.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 147, 4363.0, '2026-08-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 8, 142.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 37, 12888.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 26, 520.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 216, 5051.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 278, 9611.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 180, 10712.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 59, 826.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 294, 8799.0, '2026-08-20 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 173, 2575.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 1, 18.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 39, 13460.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 5, 100.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 113, 2790.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 109, 3781.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 99, 5329.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 8, 112.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Donuts', 140, 6228.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Chip Cookies', 31, 926.0, '2026-08-21 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 187, 2799.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 174, 3091.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 21, 7332.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 20, 5564.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 135, 2695.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 110, 2709.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 15, 520.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 5, 297.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 200, 2772.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 96, 4256.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 6, 178.0, '2026-08-22 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 389, 5756.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 314, 5609.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 3, 1049.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 25, 6982.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 241, 4783.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 232, 5748.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Cream Bun', 178, 6167.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 1, 60.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 356, 4931.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 4, 179.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 1, 30.0, '2026-08-23 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 212, 3169.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 479, 8576.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 1, 345.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 3, 829.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 46, 908.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 214, 5348.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 24, 768.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 163, 9640.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 258, 3569.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 34, 14273.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 72, 3224.0, '2026-08-24 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 177, 2618.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 224, 4027.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Fruit Cake', 38, 13149.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 22, 5247.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 8, 158.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 256, 6326.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 3, 103.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 8, 476.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Khari Biscuit', 202, 2812.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 16, 6650.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 4, 178.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 136, 4075.0, '2026-08-25 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 541, 8110.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 303, 5396.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Fruit Cake', 1, 347.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 2, 555.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 137, 2703.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 207, 5163.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 164, 5680.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 31, 429.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 31, 12940.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 1, 44.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 27, 799.0, '2026-08-26 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 576, 8613.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 402, 7157.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 21, 5317.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 9, 178.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 46, 1137.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 18, 622.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 6, 84.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 20, 7440.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 229, 10169.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 141, 4226.0, '2026-08-27 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 228, 3381.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 158, 2812.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 3, 828.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 3, 75.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 2, 70.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 244, 14616.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 569, 7896.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 3, 1246.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 76, 3397.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 19, 569.0, '2026-08-28 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 52, 770.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 29, 520.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Dry Cake', 48, 13422.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 261, 5157.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 101, 5280.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 260, 3626.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 16, 6679.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Donuts', 167, 7479.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 261, 7752.0, '2026-08-29 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 164, 2454.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 160, 2861.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 20, 6433.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 24, 6707.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 152, 2720.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 182, 4535.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 80, 2766.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 77, 4600.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 442, 6107.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 1, 417.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 6, 270.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 312, 9333.0, '2026-08-30 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 215, 3208.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 156, 2794.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 1, 328.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 25, 6926.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 140, 2772.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 134, 3310.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 190, 6228.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 88, 4831.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 22, 306.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 133, 5979.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 324, 9687.0, '2026-08-31 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 7, 104.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 190, 3419.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 1, 277.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Bread Rusk', 164, 3279.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 123, 3066.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 114, 3951.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 97, 5818.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 180, 2315.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 15, 5706.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 32, 1421.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 290, 8612.0, '2026-09-01 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 12, 214.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 17, 5864.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 22, 6142.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 13, 257.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 4, 99.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 102, 3528.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 164, 9698.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 217, 3020.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 35, 12766.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 1, 45.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 60, 1685.0, '2026-09-02 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 175, 2595.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 153, 2746.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 2, 699.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 2, 555.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 135, 2663.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 116, 2893.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 98, 3389.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 93, 5539.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 20, 278.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 2, 837.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 292, 8758.0, '2026-09-03 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 34, 509.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 11, 187.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 18, 6257.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 495, 9856.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 7, 163.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 90, 3122.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 11, 656.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 177, 2347.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 187, 4919.0, '2026-09-04 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Kara Biscuit', 478, 7109.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 181, 3233.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Fruit Cake', 23, 7971.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 85, 1700.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 95, 2340.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Cream Bun', 199, 6929.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 80, 4760.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Khari Biscuit', 216, 3010.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 16, 6666.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 8, 238.0, '2026-09-05 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 262, 3890.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 749, 13393.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 19, 6579.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 154, 3069.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 14, 330.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Cream Bun', 103, 3566.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chicken Patties', 4, 238.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 27, 374.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 18, 7454.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chocolate Chip Cookies', 2, 60.0, '2026-09-06 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 403, 6035.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 286, 5100.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 2, 699.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 21, 5176.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 141, 2779.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Plain Bun', 188, 4648.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Cream Bun', 98, 3144.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 82, 4306.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 2, 25.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 1, 415.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Donuts', 76, 3401.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 137, 4105.0, '2026-09-07 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Kara Biscuit', 191, 2831.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 214, 3838.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 18, 6296.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Dry Cake', 63, 17537.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 117, 2306.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 138, 3436.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 12, 419.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 82, 4882.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 31, 12832.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 78, 3007.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 6, 180.0, '2026-09-08 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 214, 3176.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 325, 5774.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 21, 7301.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 11, 3065.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 164, 2998.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 241, 6015.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 87, 3002.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chicken Patties', 85, 5044.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Cake', 20, 8374.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 5, 223.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 138, 4102.0, '2026-09-09 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 12, 164.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 42, 746.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Fruit Cake', 18, 6296.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Dry Cake', 44, 12159.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Bread Rusk', 11, 219.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 114, 2812.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 5, 173.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 181, 10789.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 172, 2128.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Cake', 4, 1672.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 1, 41.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 275, 8244.0, '2026-09-10 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Naan Khatai', 279, 4630.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 3, 1039.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 3, 785.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Bread Rusk', 119, 2345.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Plain Bun', 103, 2566.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Chicken Patties', 88, 5212.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 28, 390.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 153, 6789.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 178, 5260.0, '2026-09-11 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 53, 951.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Dry Cake', 1, 276.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 22, 436.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Plain Bun', 124, 3072.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 89, 3092.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 9, 539.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'digital', 'Khari Biscuit', 405, 5656.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 6, 267.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 537, 15926.0, '2026-09-12 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Naan Khatai', 157, 2825.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 68, 23781.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 5, 99.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 313, 7772.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Cream Bun', 6, 210.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chicken Patties', 81, 4835.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Khari Biscuit', 233, 3238.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Donuts', 1, 45.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 202, 6056.0, '2026-09-13 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 18, 319.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 25, 8745.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Bread Rusk', 240, 4775.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 221, 5460.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 96, 3311.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chicken Patties', 11, 656.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Khari Biscuit', 207, 2894.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 33, 13835.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 135, 6022.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 165, 4921.0, '2026-09-14 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 149, 2228.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Naan Khatai', 282, 5000.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 17, 5898.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 164, 3262.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Plain Bun', 158, 3935.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 95, 3309.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 1, 60.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 29, 404.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 1, 414.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 11, 494.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Chocolate Chip Cookies', 153, 4571.0, '2026-09-15 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 232, 3460.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 345, 6156.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 41, 14345.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Dry Cake', 42, 11663.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Bread Rusk', 138, 2731.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 14, 307.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Cream Bun', 5, 174.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Khari Biscuit', 2, 28.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 128, 5745.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Chip Cookies', 148, 4399.0, '2026-09-16 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Kara Biscuit', 350, 5229.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Naan Khatai', 63, 1121.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Fruit Cake', 20, 6902.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Dry Cake', 24, 6673.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 19, 375.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 225, 5569.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Cake', 43, 17998.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Donuts', 89, 3964.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chocolate Chip Cookies', 25, 744.0, '2026-09-17 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Kara Biscuit', 43, 637.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Naan Khatai', 142, 2537.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Fruit Cake', 2, 690.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Dry Cake', 66, 18247.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Bread Rusk', 134, 2646.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Plain Bun', 234, 5430.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 170, 2366.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Cake', 19, 7935.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Donuts', 62, 2761.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Chocolate Chip Cookies', 3, 89.0, '2026-09-18 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Kara Biscuit', 193, 2858.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Naan Khatai', 165, 2949.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Fruit Cake', 18, 6211.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Dry Cake', 7, 1954.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'digital', 'Bread Rusk', 142, 2810.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Plain Bun', 17, 421.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Cream Bun', 92, 3172.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', 'morning', 'cash', 'Chicken Patties', 147, 8712.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Khari Biscuit', 35, 483.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'digital', 'Chocolate Cake', 4, 1658.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', '0656428b-e973-4039-ab6d-ca0fb84fca54', 'morning', 'cash', 'Donuts', 12, 540.0, '2026-09-19 14:00:00');
INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', 'morning', 'cash', 'Chocolate Chip Cookies', 147, 3989.0, '2026-09-19 14:00:00');


INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('274e12e0-a25d-49e9-b137-52211b6b913d', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 32.8, "unitPrice": 173.2, "unit": "kg"}]', 5594.4, 'received', '2026-06-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('274e12e0-a25d-49e9-b137-52211b6b913d', '[{"materialName": "Sugar", "quantity": 32.3, "unitPrice": 173.2, "unit": "kg"}]', 5594.4, false, '2026-06-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5fdf7aff-e153-41cc-9f7a-340bbf907971', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 39.2, "unitPrice": 15.5, "unit": "unit"}]', 599.9, 'received', '2026-06-23 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5fdf7aff-e153-41cc-9f7a-340bbf907971', '[{"materialName": "Packaging", "quantity": 38.7, "unitPrice": 15.5, "unit": "unit"}]', 599.9, false, '2026-06-23 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('29ef1cde-c946-4378-9ba2-5837be701e5b', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 51.9, "unitPrice": 142.8, "unit": "kg"}]', 7439.9, 'received', '2026-06-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('29ef1cde-c946-4378-9ba2-5837be701e5b', '[{"materialName": "Maida Flour", "quantity": 52.1, "unitPrice": 142.8, "unit": "kg"}]', 7439.9, false, '2026-06-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b364c926-bcbc-4fe1-b729-104a28864556', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 50.3, "unitPrice": 1061.1, "unit": "kg"}]', 47537.3, 'discrepancy', '2026-06-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b364c926-bcbc-4fe1-b729-104a28864556', '[{"materialName": "Milk Powder", "quantity": 44.8, "unitPrice": 1061.1, "unit": "kg"}]', 47537.3, true, '2026-06-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e18daedb-bb94-4960-b43b-b15952ddff3a', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Vanilla Essence", "quantity": 26.3, "unitPrice": 2445.4, "unit": "litre"}]', 63824.9, 'received', '2026-06-25 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e18daedb-bb94-4960-b43b-b15952ddff3a', '[{"materialName": "Vanilla Essence", "quantity": 26.1, "unitPrice": 2445.4, "unit": "litre"}]', 63824.9, false, '2026-06-25 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('05d0caca-c910-4193-bbb9-3f850e627b9a', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 13.2, "unitPrice": 327.9, "unit": "dozen"}]', 4295.5, 'received', '2026-06-25 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('05d0caca-c910-4193-bbb9-3f850e627b9a', '[{"materialName": "Eggs", "quantity": 13.1, "unitPrice": 327.9, "unit": "dozen"}]', 4295.5, false, '2026-06-25 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8af4611d-5694-4624-a54c-70d355f784cb', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 44.2, "unitPrice": 926.5, "unit": "kg"}]', 40395.4, 'received', '2026-06-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8af4611d-5694-4624-a54c-70d355f784cb', '[{"materialName": "Butter", "quantity": 43.6, "unitPrice": 926.5, "unit": "kg"}]', 40395.4, false, '2026-06-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b5f46a62-7518-4d86-9815-f0e4d1054889', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 22.3, "unitPrice": 144.3, "unit": "kg"}]', 3217.9, 'received', '2026-06-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b5f46a62-7518-4d86-9815-f0e4d1054889', '[{"materialName": "Maida Flour", "quantity": 22.3, "unitPrice": 144.3, "unit": "kg"}]', 3217.9, false, '2026-06-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('af78bc50-dafc-4dc9-b73a-2622c84ecd5c', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Salt", "quantity": 49.2, "unitPrice": 62.9, "unit": "kg"}]', 3063.2, 'received', '2026-06-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('af78bc50-dafc-4dc9-b73a-2622c84ecd5c', '[{"materialName": "Salt", "quantity": 48.7, "unitPrice": 62.9, "unit": "kg"}]', 3063.2, false, '2026-06-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8c592144-1c5d-4109-84e6-a467115a1873', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 53.8, "unitPrice": 470.8, "unit": "kg"}]', 24999.5, 'received', '2026-06-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8c592144-1c5d-4109-84e6-a467115a1873', '[{"materialName": "Dalda Ghee", "quantity": 53.1, "unitPrice": 470.8, "unit": "kg"}]', 24999.5, false, '2026-06-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('fc864bad-9576-41ec-ad53-fc3177d87cdf', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 48.4, "unitPrice": 164.8, "unit": "kg"}]', 7926.9, 'received', '2026-06-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('fc864bad-9576-41ec-ad53-fc3177d87cdf', '[{"materialName": "Sugar", "quantity": 48.1, "unitPrice": 164.8, "unit": "kg"}]', 7926.9, false, '2026-06-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ef3e269a-ff3f-4570-b2d6-8dbe9eeb5c1f', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 49.4, "unitPrice": 586.6, "unit": "kg"}]', 28743.4, 'received', '2026-06-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ef3e269a-ff3f-4570-b2d6-8dbe9eeb5c1f', '[{"materialName": "Baking Powder", "quantity": 49.0, "unitPrice": 586.6, "unit": "kg"}]', 28743.4, false, '2026-06-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2aafc0a9-a2c4-4a6d-8942-fe1f9676fac4', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 18.0, "unitPrice": 321.7, "unit": "dozen"}]', 5726.3, 'received', '2026-06-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2aafc0a9-a2c4-4a6d-8942-fe1f9676fac4', '[{"materialName": "Eggs", "quantity": 17.8, "unitPrice": 321.7, "unit": "dozen"}]', 5726.3, false, '2026-06-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('170aece0-438d-47e1-b8b4-cca1ff381caa', 'f69ded5f-187a-416a-8eec-23d973a0f972', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Cocoa Powder", "quantity": 21.5, "unitPrice": 1889.1, "unit": "kg"}]', 40804.6, 'received', '2026-07-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('170aece0-438d-47e1-b8b4-cca1ff381caa', '[{"materialName": "Cocoa Powder", "quantity": 21.6, "unitPrice": 1889.1, "unit": "kg"}]', 40804.6, false, '2026-07-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f1eb0adf-5485-42f8-8e6b-39af2c4a2a64', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 48.9, "unitPrice": 148.3, "unit": "kg"}]', 7148.1, 'received', '2026-07-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f1eb0adf-5485-42f8-8e6b-39af2c4a2a64', '[{"materialName": "Maida Flour", "quantity": 48.2, "unitPrice": 148.3, "unit": "kg"}]', 7148.1, false, '2026-07-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('1756c167-e7cd-420d-8fa6-8dcf0b068bcc', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 13.5, "unitPrice": 15.3, "unit": "unit"}]', 208.1, 'received', '2026-07-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('1756c167-e7cd-420d-8fa6-8dcf0b068bcc', '[{"materialName": "Packaging", "quantity": 13.6, "unitPrice": 15.3, "unit": "unit"}]', 208.1, false, '2026-07-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('afb7eacb-5039-44e0-b85a-df00571fc983', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 19.3, "unitPrice": 312.4, "unit": "dozen"}]', 6029.3, 'received', '2026-07-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('afb7eacb-5039-44e0-b85a-df00571fc983', '[{"materialName": "Eggs", "quantity": 19.3, "unitPrice": 312.4, "unit": "dozen"}]', 6029.3, false, '2026-07-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('72450083-4e5e-4c71-8c72-0029915ac5dd', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 59.2, "unitPrice": 1140.0, "unit": "kg"}]', 66462.0, 'received', '2026-07-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('72450083-4e5e-4c71-8c72-0029915ac5dd', '[{"materialName": "Milk Powder", "quantity": 58.3, "unitPrice": 1140.0, "unit": "kg"}]', 66462.0, false, '2026-07-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c89cc789-37c9-4487-8a99-15d08b3fc4b8', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 41.0, "unitPrice": 143.0, "unit": "kg"}]', 5820.1, 'received', '2026-07-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c89cc789-37c9-4487-8a99-15d08b3fc4b8', '[{"materialName": "Maida Flour", "quantity": 40.7, "unitPrice": 143.0, "unit": "kg"}]', 5820.1, false, '2026-07-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c70d3689-a46b-4d8e-9d79-0ec6149d5959', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Yeast", "quantity": 57.3, "unitPrice": 1197.5, "unit": "kg"}]', 67898.2, 'received', '2026-07-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c70d3689-a46b-4d8e-9d79-0ec6149d5959', '[{"materialName": "Yeast", "quantity": 56.7, "unitPrice": 1197.5, "unit": "kg"}]', 67898.2, false, '2026-07-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('88f2684a-5a22-40a5-92fc-4c42193d9e0d', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 38.2, "unitPrice": 336.6, "unit": "dozen"}]', 12858.1, 'received', '2026-07-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('88f2684a-5a22-40a5-92fc-4c42193d9e0d', '[{"materialName": "Eggs", "quantity": 38.2, "unitPrice": 336.6, "unit": "dozen"}]', 12858.1, false, '2026-07-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('254a7abc-2e37-4fc9-8fcc-faadf862b25d', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 25.6, "unitPrice": 496.4, "unit": "kg"}]', 12807.1, 'received', '2026-07-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('254a7abc-2e37-4fc9-8fcc-faadf862b25d', '[{"materialName": "Dalda Ghee", "quantity": 25.8, "unitPrice": 496.4, "unit": "kg"}]', 12807.1, false, '2026-07-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5dde2677-03da-4fd4-bffe-c12578f934cd', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 57.5, "unitPrice": 165.1, "unit": "kg"}]', 9427.2, 'received', '2026-07-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5dde2677-03da-4fd4-bffe-c12578f934cd', '[{"materialName": "Sugar", "quantity": 57.1, "unitPrice": 165.1, "unit": "kg"}]', 9427.2, false, '2026-07-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d8a876b3-fcf3-46ca-a3aa-e8cf67b4284c', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 27.5, "unitPrice": 997.2, "unit": "kg"}]', 27123.8, 'received', '2026-07-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d8a876b3-fcf3-46ca-a3aa-e8cf67b4284c', '[{"materialName": "Butter", "quantity": 27.2, "unitPrice": 997.2, "unit": "kg"}]', 27123.8, false, '2026-07-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f571f552-36a0-4a64-a55c-d1e8cd91d46f', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 38.2, "unitPrice": 141.6, "unit": "kg"}]', 5352.5, 'received', '2026-07-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f571f552-36a0-4a64-a55c-d1e8cd91d46f', '[{"materialName": "Maida Flour", "quantity": 37.8, "unitPrice": 141.6, "unit": "kg"}]', 5352.5, false, '2026-07-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('70ebb45a-2b54-4eca-a71d-d39bee7ef8c4', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 36.0, "unitPrice": 319.2, "unit": "dozen"}]', 10150.6, 'discrepancy', '2026-07-09 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('70ebb45a-2b54-4eca-a71d-d39bee7ef8c4', '[{"materialName": "Eggs", "quantity": 31.8, "unitPrice": 319.2, "unit": "dozen"}]', 10150.6, true, '2026-07-09 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('af071bf6-c143-480a-aa11-b6e6713e4506', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 22.8, "unitPrice": 15.7, "unit": "unit"}]', 356.4, 'received', '2026-07-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('af071bf6-c143-480a-aa11-b6e6713e4506', '[{"materialName": "Packaging", "quantity": 22.7, "unitPrice": 15.7, "unit": "unit"}]', 356.4, false, '2026-07-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('81d8a27d-b3cc-4d8f-b377-852537057a97', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 47.8, "unitPrice": 179.9, "unit": "kg"}]', 8509.3, 'received', '2026-07-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('81d8a27d-b3cc-4d8f-b377-852537057a97', '[{"materialName": "Sugar", "quantity": 47.3, "unitPrice": 179.9, "unit": "kg"}]', 8509.3, false, '2026-07-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a8adffc1-a94c-4266-ba50-ef9a923b2b42', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 59.6, "unitPrice": 622.6, "unit": "kg"}]', 36920.2, 'received', '2026-07-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a8adffc1-a94c-4266-ba50-ef9a923b2b42', '[{"materialName": "Baking Powder", "quantity": 59.3, "unitPrice": 622.6, "unit": "kg"}]', 36920.2, false, '2026-07-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c2ce6f86-34b7-4275-a3e2-5949eac81e05', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 54.4, "unitPrice": 134.6, "unit": "kg"}]', 7295.3, 'received', '2026-07-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c2ce6f86-34b7-4275-a3e2-5949eac81e05', '[{"materialName": "Maida Flour", "quantity": 54.2, "unitPrice": 134.6, "unit": "kg"}]', 7295.3, false, '2026-07-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('cb662a56-92f3-449e-8b1b-25d786253dae', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 38.6, "unitPrice": 1160.4, "unit": "kg"}]', 44211.2, 'received', '2026-07-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('cb662a56-92f3-449e-8b1b-25d786253dae', '[{"materialName": "Milk Powder", "quantity": 38.1, "unitPrice": 1160.4, "unit": "kg"}]', 44211.2, false, '2026-07-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b8c80dd9-d339-499a-8697-161739029416', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Vanilla Essence", "quantity": 16.8, "unitPrice": 2553.7, "unit": "litre"}]', 42646.8, 'received', '2026-07-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b8c80dd9-d339-499a-8697-161739029416', '[{"materialName": "Vanilla Essence", "quantity": 16.7, "unitPrice": 2553.7, "unit": "litre"}]', 42646.8, false, '2026-07-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2c761fde-4766-4f15-91b5-b9b6cdb0e4d1', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 14.5, "unitPrice": 338.2, "unit": "dozen"}]', 4870.1, 'received', '2026-07-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2c761fde-4766-4f15-91b5-b9b6cdb0e4d1', '[{"materialName": "Eggs", "quantity": 14.4, "unitPrice": 338.2, "unit": "dozen"}]', 4870.1, false, '2026-07-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0b6d61f9-366e-4e8e-a6d0-b8bd1677ef9a', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 48.4, "unitPrice": 480.9, "unit": "kg"}]', 23083.2, 'received', '2026-07-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0b6d61f9-366e-4e8e-a6d0-b8bd1677ef9a', '[{"materialName": "Dalda Ghee", "quantity": 48.0, "unitPrice": 480.9, "unit": "kg"}]', 23083.2, false, '2026-07-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('07a3d86f-2757-462d-b2a6-1bc4cb043151', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 52.3, "unitPrice": 144.0, "unit": "kg"}]', 7430.4, 'received', '2026-07-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('07a3d86f-2757-462d-b2a6-1bc4cb043151', '[{"materialName": "Maida Flour", "quantity": 51.6, "unitPrice": 144.0, "unit": "kg"}]', 7430.4, false, '2026-07-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('1cf1ec12-121b-4878-be41-c81c28bbe555', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 20.7, "unitPrice": 997.2, "unit": "kg"}]', 20841.5, 'received', '2026-07-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('1cf1ec12-121b-4878-be41-c81c28bbe555', '[{"materialName": "Butter", "quantity": 20.9, "unitPrice": 997.2, "unit": "kg"}]', 20841.5, false, '2026-07-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('967aa74f-3c08-4a27-bd5a-51f5decdc14e', 'f69ded5f-187a-416a-8eec-23d973a0f972', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Cocoa Powder", "quantity": 21.2, "unitPrice": 1799.5, "unit": "kg"}]', 37969.5, 'received', '2026-07-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('967aa74f-3c08-4a27-bd5a-51f5decdc14e', '[{"materialName": "Cocoa Powder", "quantity": 21.1, "unitPrice": 1799.5, "unit": "kg"}]', 37969.5, false, '2026-07-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7c588382-94bc-4f22-a0f4-63bfaa26c26d', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 29.7, "unitPrice": 178.5, "unit": "kg"}]', 5337.1, 'received', '2026-07-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7c588382-94bc-4f22-a0f4-63bfaa26c26d', '[{"materialName": "Sugar", "quantity": 29.9, "unitPrice": 178.5, "unit": "kg"}]', 5337.1, false, '2026-07-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('99d5b413-0ac8-43e6-bb6f-5d303ecf9a3b', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 11.9, "unitPrice": 307.6, "unit": "dozen"}]', 3260.6, 'discrepancy', '2026-07-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('99d5b413-0ac8-43e6-bb6f-5d303ecf9a3b', '[{"materialName": "Eggs", "quantity": 10.6, "unitPrice": 307.6, "unit": "dozen"}]', 3260.6, true, '2026-07-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('13edde1c-c921-4c90-a530-44daa6173d79', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Salt", "quantity": 55.8, "unitPrice": 59.5, "unit": "kg"}]', 3284.4, 'received', '2026-07-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('13edde1c-c921-4c90-a530-44daa6173d79', '[{"materialName": "Salt", "quantity": 55.2, "unitPrice": 59.5, "unit": "kg"}]', 3284.4, false, '2026-07-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d511cb60-a1e2-4b45-bf37-e9a7b7d90aa9', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 12.5, "unitPrice": 15.0, "unit": "unit"}]', 186.0, 'received', '2026-07-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d511cb60-a1e2-4b45-bf37-e9a7b7d90aa9', '[{"materialName": "Packaging", "quantity": 12.4, "unitPrice": 15.0, "unit": "unit"}]', 186.0, false, '2026-07-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bbaa931a-aafb-440e-b3a6-f8ed33758836', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 44.4, "unitPrice": 139.9, "unit": "kg"}]', 6141.6, 'received', '2026-07-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bbaa931a-aafb-440e-b3a6-f8ed33758836', '[{"materialName": "Maida Flour", "quantity": 43.9, "unitPrice": 139.9, "unit": "kg"}]', 6141.6, false, '2026-07-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('64993246-709a-4932-acd8-8fa467c5ef1e', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 23.3, "unitPrice": 470.1, "unit": "kg"}]', 10248.2, 'discrepancy', '2026-07-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('64993246-709a-4932-acd8-8fa467c5ef1e', '[{"materialName": "Dalda Ghee", "quantity": 21.8, "unitPrice": 470.1, "unit": "kg"}]', 10248.2, true, '2026-07-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ba193f50-b2a0-4d74-9473-a7c2439e41d2', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Yeast", "quantity": 21.9, "unitPrice": 1242.1, "unit": "kg"}]', 27326.2, 'received', '2026-07-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ba193f50-b2a0-4d74-9473-a7c2439e41d2', '[{"materialName": "Yeast", "quantity": 22.0, "unitPrice": 1242.1, "unit": "kg"}]', 27326.2, false, '2026-07-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('238e66f1-8591-4d16-967e-a6fb39474ca2', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 26.0, "unitPrice": 325.9, "unit": "dozen"}]', 8538.6, 'received', '2026-07-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('238e66f1-8591-4d16-967e-a6fb39474ca2', '[{"materialName": "Eggs", "quantity": 26.2, "unitPrice": 325.9, "unit": "dozen"}]', 8538.6, false, '2026-07-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('93574d2f-4052-4846-b6fb-aec234267cda', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 37.0, "unitPrice": 134.8, "unit": "kg"}]', 4987.6, 'received', '2026-07-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('93574d2f-4052-4846-b6fb-aec234267cda', '[{"materialName": "Maida Flour", "quantity": 37.0, "unitPrice": 134.8, "unit": "kg"}]', 4987.6, false, '2026-07-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c7a02f08-6216-4940-8e20-ee865c504c84', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 31.2, "unitPrice": 177.8, "unit": "kg"}]', 5582.9, 'received', '2026-07-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c7a02f08-6216-4940-8e20-ee865c504c84', '[{"materialName": "Sugar", "quantity": 31.4, "unitPrice": 177.8, "unit": "kg"}]', 5582.9, false, '2026-07-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8b339ab8-7189-4049-ae28-f8e300e9ec98', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 35.5, "unitPrice": 311.3, "unit": "dozen"}]', 11020.0, 'received', '2026-07-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8b339ab8-7189-4049-ae28-f8e300e9ec98', '[{"materialName": "Eggs", "quantity": 35.4, "unitPrice": 311.3, "unit": "dozen"}]', 11020.0, false, '2026-07-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7bf2bc77-1b06-49df-93a9-c3f8f91e8208', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 42.5, "unitPrice": 620.4, "unit": "kg"}]', 26429.0, 'received', '2026-07-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7bf2bc77-1b06-49df-93a9-c3f8f91e8208', '[{"materialName": "Baking Powder", "quantity": 42.6, "unitPrice": 620.4, "unit": "kg"}]', 26429.0, false, '2026-07-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('13790726-00fe-4810-91cf-5fdfce43b541', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 20.6, "unitPrice": 1115.3, "unit": "kg"}]', 22863.6, 'received', '2026-07-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('13790726-00fe-4810-91cf-5fdfce43b541', '[{"materialName": "Milk Powder", "quantity": 20.5, "unitPrice": 1115.3, "unit": "kg"}]', 22863.6, false, '2026-07-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('015c2349-8766-40a4-8e6e-3e09c9dae526', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 35.8, "unitPrice": 139.0, "unit": "kg"}]', 4990.1, 'received', '2026-07-25 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('015c2349-8766-40a4-8e6e-3e09c9dae526', '[{"materialName": "Maida Flour", "quantity": 35.9, "unitPrice": 139.0, "unit": "kg"}]', 4990.1, false, '2026-07-25 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('5b26d0d9-ec37-4e5b-8b62-87d12b33937d', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 54.6, "unitPrice": 928.2, "unit": "kg"}]', 50215.6, 'received', '2026-07-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('5b26d0d9-ec37-4e5b-8b62-87d12b33937d', '[{"materialName": "Butter", "quantity": 54.1, "unitPrice": 928.2, "unit": "kg"}]', 50215.6, false, '2026-07-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0002805f-44fd-4257-8fff-c7c88b3024f1', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 16.2, "unitPrice": 308.7, "unit": "dozen"}]', 5031.8, 'received', '2026-07-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0002805f-44fd-4257-8fff-c7c88b3024f1', '[{"materialName": "Eggs", "quantity": 16.3, "unitPrice": 308.7, "unit": "dozen"}]', 5031.8, false, '2026-07-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('87bcca16-1d65-4195-b917-560716bd3864', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 51.8, "unitPrice": 478.8, "unit": "kg"}]', 24658.2, 'received', '2026-07-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('87bcca16-1d65-4195-b917-560716bd3864', '[{"materialName": "Dalda Ghee", "quantity": 51.5, "unitPrice": 478.8, "unit": "kg"}]', 24658.2, false, '2026-07-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a69865d8-e7e9-4e8a-aab5-9c8af8c68db4', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 45.7, "unitPrice": 178.5, "unit": "kg"}]', 8068.2, 'received', '2026-07-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a69865d8-e7e9-4e8a-aab5-9c8af8c68db4', '[{"materialName": "Sugar", "quantity": 45.2, "unitPrice": 178.5, "unit": "kg"}]', 8068.2, false, '2026-07-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6d5ddc27-7fe0-43d9-b2cd-e5b2fc7246cb', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 58.4, "unitPrice": 142.0, "unit": "kg"}]', 8321.2, 'received', '2026-07-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6d5ddc27-7fe0-43d9-b2cd-e5b2fc7246cb', '[{"materialName": "Maida Flour", "quantity": 58.6, "unitPrice": 142.0, "unit": "kg"}]', 8321.2, false, '2026-07-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2a455d67-1a51-4a26-acbb-7439ab1b1934', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 37.2, "unitPrice": 15.5, "unit": "unit"}]', 573.5, 'received', '2026-07-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2a455d67-1a51-4a26-acbb-7439ab1b1934', '[{"materialName": "Packaging", "quantity": 37.0, "unitPrice": 15.5, "unit": "unit"}]', 573.5, false, '2026-07-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a914aee9-581b-4768-9628-8ded81b5bbbc', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 31.2, "unitPrice": 145.6, "unit": "kg"}]', 4484.5, 'received', '2026-07-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a914aee9-581b-4768-9628-8ded81b5bbbc', '[{"materialName": "Maida Flour", "quantity": 30.8, "unitPrice": 145.6, "unit": "kg"}]', 4484.5, false, '2026-07-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('28ad891c-1506-496e-b3c5-b870fa4bab2b', 'f69ded5f-187a-416a-8eec-23d973a0f972', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Cocoa Powder", "quantity": 35.1, "unitPrice": 1766.1, "unit": "kg"}]', 56338.6, 'discrepancy', '2026-07-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('28ad891c-1506-496e-b3c5-b870fa4bab2b', '[{"materialName": "Cocoa Powder", "quantity": 31.9, "unitPrice": 1766.1, "unit": "kg"}]', 56338.6, true, '2026-07-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('336d8ded-16a0-41cb-9060-633c7e671746', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Vanilla Essence", "quantity": 13.0, "unitPrice": 2548.2, "unit": "litre"}]', 33126.6, 'received', '2026-07-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('336d8ded-16a0-41cb-9060-633c7e671746', '[{"materialName": "Vanilla Essence", "quantity": 13.0, "unitPrice": 2548.2, "unit": "litre"}]', 33126.6, false, '2026-07-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c47b9bb7-265a-490f-a7ad-4bf4b1cf26ab', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 30.1, "unitPrice": 323.8, "unit": "dozen"}]', 9778.8, 'received', '2026-08-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c47b9bb7-265a-490f-a7ad-4bf4b1cf26ab', '[{"materialName": "Eggs", "quantity": 30.2, "unitPrice": 323.8, "unit": "dozen"}]', 9778.8, false, '2026-08-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f890613b-a531-4b11-9fc3-d918cfe75b78', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 36.9, "unitPrice": 134.6, "unit": "kg"}]', 4926.4, 'received', '2026-08-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f890613b-a531-4b11-9fc3-d918cfe75b78', '[{"materialName": "Maida Flour", "quantity": 36.6, "unitPrice": 134.6, "unit": "kg"}]', 4926.4, false, '2026-08-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('073241ea-479f-482e-85d4-b66717204180', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 34.9, "unitPrice": 168.0, "unit": "kg"}]', 5913.6, 'received', '2026-08-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('073241ea-479f-482e-85d4-b66717204180', '[{"materialName": "Sugar", "quantity": 35.2, "unitPrice": 168.0, "unit": "kg"}]', 5913.6, false, '2026-08-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8e4e10f6-f266-4d73-934c-89b1da34c7cb', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 48.7, "unitPrice": 991.7, "unit": "kg"}]', 48097.5, 'received', '2026-08-03 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8e4e10f6-f266-4d73-934c-89b1da34c7cb', '[{"materialName": "Butter", "quantity": 48.5, "unitPrice": 991.7, "unit": "kg"}]', 48097.5, false, '2026-08-03 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('dee78a48-74c2-4455-8993-7325afcd854c', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 31.2, "unitPrice": 15.1, "unit": "unit"}]', 468.1, 'received', '2026-08-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('dee78a48-74c2-4455-8993-7325afcd854c', '[{"materialName": "Packaging", "quantity": 31.0, "unitPrice": 15.1, "unit": "unit"}]', 468.1, false, '2026-08-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('1cbe3c95-38fb-42df-8ef7-aacb313df523', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 57.8, "unitPrice": 1144.1, "unit": "kg"}]', 66243.4, 'received', '2026-08-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('1cbe3c95-38fb-42df-8ef7-aacb313df523', '[{"materialName": "Milk Powder", "quantity": 57.9, "unitPrice": 1144.1, "unit": "kg"}]', 66243.4, false, '2026-08-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('1e7acca5-f195-4330-8b80-10e2d41f0f8a', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 46.9, "unitPrice": 507.9, "unit": "kg"}]', 23566.6, 'received', '2026-08-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('1e7acca5-f195-4330-8b80-10e2d41f0f8a', '[{"materialName": "Dalda Ghee", "quantity": 46.4, "unitPrice": 507.9, "unit": "kg"}]', 23566.6, false, '2026-08-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('92c78e1e-341c-42c9-ad5c-15a34cbc3621', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 39.0, "unitPrice": 326.1, "unit": "dozen"}]', 12783.1, 'received', '2026-08-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('92c78e1e-341c-42c9-ad5c-15a34cbc3621', '[{"materialName": "Eggs", "quantity": 39.2, "unitPrice": 326.1, "unit": "dozen"}]', 12783.1, false, '2026-08-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c08e6d8c-71bb-4f3d-8d13-4325344e7f4e', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Yeast", "quantity": 26.6, "unitPrice": 1214.8, "unit": "kg"}]', 32313.7, 'received', '2026-08-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c08e6d8c-71bb-4f3d-8d13-4325344e7f4e', '[{"materialName": "Yeast", "quantity": 26.6, "unitPrice": 1214.8, "unit": "kg"}]', 32313.7, false, '2026-08-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('70a6c60f-80e4-4cfc-bc11-86a00e01af7b', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 56.1, "unitPrice": 595.2, "unit": "kg"}]', 33569.3, 'received', '2026-08-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('70a6c60f-80e4-4cfc-bc11-86a00e01af7b', '[{"materialName": "Baking Powder", "quantity": 56.4, "unitPrice": 595.2, "unit": "kg"}]', 33569.3, false, '2026-08-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f80a427d-737a-4edc-9fd6-41090ec1dc17', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 51.6, "unitPrice": 143.5, "unit": "kg"}]', 7462.0, 'received', '2026-08-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f80a427d-737a-4edc-9fd6-41090ec1dc17', '[{"materialName": "Maida Flour", "quantity": 52.0, "unitPrice": 143.5, "unit": "kg"}]', 7462.0, false, '2026-08-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a03b4037-f0e2-4dbb-8f09-a2354a6919e2', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Salt", "quantity": 25.7, "unitPrice": 60.6, "unit": "kg"}]', 1563.5, 'received', '2026-08-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a03b4037-f0e2-4dbb-8f09-a2354a6919e2', '[{"materialName": "Salt", "quantity": 25.8, "unitPrice": 60.6, "unit": "kg"}]', 1563.5, false, '2026-08-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ad217ef5-3b77-433d-a26d-99829a277f15', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 44.9, "unitPrice": 138.8, "unit": "kg"}]', 6148.8, 'received', '2026-08-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ad217ef5-3b77-433d-a26d-99829a277f15', '[{"materialName": "Maida Flour", "quantity": 44.3, "unitPrice": 138.8, "unit": "kg"}]', 6148.8, false, '2026-08-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c92004b3-8eb9-477a-99ea-7d28fd3766cd', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 47.7, "unitPrice": 175.3, "unit": "kg"}]', 8291.7, 'received', '2026-08-09 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c92004b3-8eb9-477a-99ea-7d28fd3766cd', '[{"materialName": "Sugar", "quantity": 47.3, "unitPrice": 175.3, "unit": "kg"}]', 8291.7, false, '2026-08-09 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e15b1ec2-d3bb-4df8-ac7f-2771a28b064f', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 32.7, "unitPrice": 314.0, "unit": "dozen"}]', 10299.2, 'received', '2026-08-10 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e15b1ec2-d3bb-4df8-ac7f-2771a28b064f', '[{"materialName": "Eggs", "quantity": 32.8, "unitPrice": 314.0, "unit": "dozen"}]', 10299.2, false, '2026-08-10 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a69aa7e8-5928-45c3-a694-8a5e8cc35276', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 21.2, "unitPrice": 478.1, "unit": "kg"}]', 9657.6, 'discrepancy', '2026-08-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a69aa7e8-5928-45c3-a694-8a5e8cc35276', '[{"materialName": "Dalda Ghee", "quantity": 20.2, "unitPrice": 478.1, "unit": "kg"}]', 9657.6, true, '2026-08-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a38af8e3-2ba0-4aeb-b038-d8cd562b53fd', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 32.9, "unitPrice": 935.0, "unit": "kg"}]', 30668.0, 'received', '2026-08-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a38af8e3-2ba0-4aeb-b038-d8cd562b53fd', '[{"materialName": "Butter", "quantity": 32.8, "unitPrice": 935.0, "unit": "kg"}]', 30668.0, false, '2026-08-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('62a071e3-39c5-4911-912a-c12392f316c1', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 24.1, "unitPrice": 14.6, "unit": "unit"}]', 313.9, 'discrepancy', '2026-08-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('62a071e3-39c5-4911-912a-c12392f316c1', '[{"materialName": "Packaging", "quantity": 21.5, "unitPrice": 14.6, "unit": "unit"}]', 313.9, true, '2026-08-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('67338d99-7908-4d6d-913e-f9b073a9732c', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 43.7, "unitPrice": 139.8, "unit": "kg"}]', 6109.3, 'received', '2026-08-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('67338d99-7908-4d6d-913e-f9b073a9732c', '[{"materialName": "Maida Flour", "quantity": 43.7, "unitPrice": 139.8, "unit": "kg"}]', 6109.3, false, '2026-08-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('c13e39b3-3145-4cb2-a1a2-a6bf98deba4d', 'f69ded5f-187a-416a-8eec-23d973a0f972', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Cocoa Powder", "quantity": 55.6, "unitPrice": 1870.1, "unit": "kg"}]', 104164.6, 'received', '2026-08-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('c13e39b3-3145-4cb2-a1a2-a6bf98deba4d', '[{"materialName": "Cocoa Powder", "quantity": 55.7, "unitPrice": 1870.1, "unit": "kg"}]', 104164.6, false, '2026-08-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('be40590e-b67a-4768-92bd-ea674573cf5d', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 20.5, "unitPrice": 321.2, "unit": "dozen"}]', 6552.5, 'received', '2026-08-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('be40590e-b67a-4768-92bd-ea674573cf5d', '[{"materialName": "Eggs", "quantity": 20.4, "unitPrice": 321.2, "unit": "dozen"}]', 6552.5, false, '2026-08-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('3cf11326-f838-4912-91f2-7638b2dbc1e7', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 27.2, "unitPrice": 175.5, "unit": "kg"}]', 4791.2, 'received', '2026-08-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('3cf11326-f838-4912-91f2-7638b2dbc1e7', '[{"materialName": "Sugar", "quantity": 27.3, "unitPrice": 175.5, "unit": "kg"}]', 4791.2, false, '2026-08-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ef93f6bd-0f82-49ee-854d-9351fd2130fc', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 45.7, "unitPrice": 1159.6, "unit": "kg"}]', 52877.8, 'received', '2026-08-15 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ef93f6bd-0f82-49ee-854d-9351fd2130fc', '[{"materialName": "Milk Powder", "quantity": 45.6, "unitPrice": 1159.6, "unit": "kg"}]', 52877.8, false, '2026-08-15 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('fbea9035-9830-4917-b396-2222aaa33b63', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 22.1, "unitPrice": 597.3, "unit": "kg"}]', 13260.1, 'received', '2026-08-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('fbea9035-9830-4917-b396-2222aaa33b63', '[{"materialName": "Baking Powder", "quantity": 22.2, "unitPrice": 597.3, "unit": "kg"}]', 13260.1, false, '2026-08-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('72fdd3ff-f77c-4bf4-8e8a-a131bfed3c1d', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 50.4, "unitPrice": 141.3, "unit": "kg"}]', 7149.8, 'received', '2026-08-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('72fdd3ff-f77c-4bf4-8e8a-a131bfed3c1d', '[{"materialName": "Maida Flour", "quantity": 50.6, "unitPrice": 141.3, "unit": "kg"}]', 7149.8, false, '2026-08-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('8d0b35d0-d11c-44b3-a06b-de238918ba54', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 25.4, "unitPrice": 327.1, "unit": "dozen"}]', 8275.6, 'received', '2026-08-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('8d0b35d0-d11c-44b3-a06b-de238918ba54', '[{"materialName": "Eggs", "quantity": 25.3, "unitPrice": 327.1, "unit": "dozen"}]', 8275.6, false, '2026-08-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b182ffcd-2a2e-4266-a5e5-8d9fa428abe5', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 53.1, "unitPrice": 482.7, "unit": "kg"}]', 25872.7, 'received', '2026-08-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b182ffcd-2a2e-4266-a5e5-8d9fa428abe5', '[{"materialName": "Dalda Ghee", "quantity": 53.6, "unitPrice": 482.7, "unit": "kg"}]', 25872.7, false, '2026-08-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('29c7c1d5-255c-4ff2-b7b3-a12a29f353ae', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Vanilla Essence", "quantity": 37.7, "unitPrice": 2544.1, "unit": "litre"}]', 94894.9, 'received', '2026-08-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('29c7c1d5-255c-4ff2-b7b3-a12a29f353ae', '[{"materialName": "Vanilla Essence", "quantity": 37.3, "unitPrice": 2544.1, "unit": "litre"}]', 94894.9, false, '2026-08-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('50830f54-9edd-46ec-90eb-917126cfa107', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Yeast", "quantity": 43.5, "unitPrice": 1237.7, "unit": "kg"}]', 53592.4, 'received', '2026-08-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('50830f54-9edd-46ec-90eb-917126cfa107', '[{"materialName": "Yeast", "quantity": 43.3, "unitPrice": 1237.7, "unit": "kg"}]', 53592.4, false, '2026-08-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('24b36cfb-f3fa-41ee-a832-64b671ccc566', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 30.4, "unitPrice": 15.1, "unit": "unit"}]', 456.0, 'received', '2026-08-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('24b36cfb-f3fa-41ee-a832-64b671ccc566', '[{"materialName": "Packaging", "quantity": 30.2, "unitPrice": 15.1, "unit": "unit"}]', 456.0, false, '2026-08-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('54e89d15-b5ad-45a1-a5bf-6a8084fdf802', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 24.4, "unitPrice": 146.9, "unit": "kg"}]', 3555.0, 'received', '2026-08-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('54e89d15-b5ad-45a1-a5bf-6a8084fdf802', '[{"materialName": "Maida Flour", "quantity": 24.2, "unitPrice": 146.9, "unit": "kg"}]', 3555.0, false, '2026-08-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('f8705f42-c4cd-4c68-bd01-11ae1c359a86', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 33.9, "unitPrice": 331.8, "unit": "dozen"}]', 11314.4, 'received', '2026-08-20 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('f8705f42-c4cd-4c68-bd01-11ae1c359a86', '[{"materialName": "Eggs", "quantity": 34.1, "unitPrice": 331.8, "unit": "dozen"}]', 11314.4, false, '2026-08-20 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a2ed5fe9-060c-4b2d-8ed8-f803f74fd187', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 50.7, "unitPrice": 1000.5, "unit": "kg"}]', 50625.3, 'received', '2026-08-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a2ed5fe9-060c-4b2d-8ed8-f803f74fd187', '[{"materialName": "Butter", "quantity": 50.6, "unitPrice": 1000.5, "unit": "kg"}]', 50625.3, false, '2026-08-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('42580302-be0f-4e45-9525-0b10dd9a9509', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 34.7, "unitPrice": 179.7, "unit": "kg"}]', 6181.7, 'received', '2026-08-21 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('42580302-be0f-4e45-9525-0b10dd9a9509', '[{"materialName": "Sugar", "quantity": 34.4, "unitPrice": 179.7, "unit": "kg"}]', 6181.7, false, '2026-08-21 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0281d108-f352-4920-a173-fae050d7e585', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 40.3, "unitPrice": 140.1, "unit": "kg"}]', 5590.0, 'received', '2026-08-22 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0281d108-f352-4920-a173-fae050d7e585', '[{"materialName": "Maida Flour", "quantity": 39.9, "unitPrice": 140.1, "unit": "kg"}]', 5590.0, false, '2026-08-22 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('43f5c91d-cfe9-4cce-981f-004ed7391d59', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 39.4, "unitPrice": 327.5, "unit": "dozen"}]', 12805.2, 'received', '2026-08-23 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('43f5c91d-cfe9-4cce-981f-004ed7391d59', '[{"materialName": "Eggs", "quantity": 39.1, "unitPrice": 327.5, "unit": "dozen"}]', 12805.2, false, '2026-08-23 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('03de41fc-15ff-41f1-a7c6-f03de839660e', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 23.1, "unitPrice": 147.4, "unit": "kg"}]', 3360.7, 'received', '2026-08-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('03de41fc-15ff-41f1-a7c6-f03de839660e', '[{"materialName": "Maida Flour", "quantity": 22.8, "unitPrice": 147.4, "unit": "kg"}]', 3360.7, false, '2026-08-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('54064fc8-a0a1-409e-8df2-350286eebe8c', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 46.1, "unitPrice": 1079.6, "unit": "kg"}]', 49337.7, 'received', '2026-08-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('54064fc8-a0a1-409e-8df2-350286eebe8c', '[{"materialName": "Milk Powder", "quantity": 45.7, "unitPrice": 1079.6, "unit": "kg"}]', 49337.7, false, '2026-08-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('772f4af0-bc5d-4e6a-bd8b-9ed2142a7af9', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 41.6, "unitPrice": 507.6, "unit": "kg"}]', 21166.9, 'received', '2026-08-24 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('772f4af0-bc5d-4e6a-bd8b-9ed2142a7af9', '[{"materialName": "Dalda Ghee", "quantity": 41.7, "unitPrice": 507.6, "unit": "kg"}]', 21166.9, false, '2026-08-24 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6fd99a86-79ea-444c-a515-3999f677f45c', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 16.7, "unitPrice": 15.9, "unit": "unit"}]', 262.4, 'received', '2026-08-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6fd99a86-79ea-444c-a515-3999f677f45c', '[{"materialName": "Packaging", "quantity": 16.5, "unitPrice": 15.9, "unit": "unit"}]', 262.4, false, '2026-08-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d4c5b9b0-31c3-49a1-8f44-675517de0260', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 24.2, "unitPrice": 140.2, "unit": "kg"}]', 3364.8, 'received', '2026-08-26 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d4c5b9b0-31c3-49a1-8f44-675517de0260', '[{"materialName": "Maida Flour", "quantity": 24.0, "unitPrice": 140.2, "unit": "kg"}]', 3364.8, false, '2026-08-26 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('20c719f7-ee41-4a4f-a039-6e4f09b1f1f0', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 56.2, "unitPrice": 174.2, "unit": "kg"}]', 9720.4, 'received', '2026-08-27 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('20c719f7-ee41-4a4f-a039-6e4f09b1f1f0', '[{"materialName": "Sugar", "quantity": 55.8, "unitPrice": 174.2, "unit": "kg"}]', 9720.4, false, '2026-08-27 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d1cf8769-4dd0-438e-98dc-7836e0f8ac68', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 26.1, "unitPrice": 320.0, "unit": "dozen"}]', 8352.0, 'received', '2026-08-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d1cf8769-4dd0-438e-98dc-7836e0f8ac68', '[{"materialName": "Eggs", "quantity": 26.1, "unitPrice": 320.0, "unit": "dozen"}]', 8352.0, false, '2026-08-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('92422689-5621-4634-b0fb-b8f09ea5f594', 'f69ded5f-187a-416a-8eec-23d973a0f972', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Cocoa Powder", "quantity": 43.4, "unitPrice": 1833.6, "unit": "kg"}]', 79578.2, 'received', '2026-08-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('92422689-5621-4634-b0fb-b8f09ea5f594', '[{"materialName": "Cocoa Powder", "quantity": 43.4, "unitPrice": 1833.6, "unit": "kg"}]', 79578.2, false, '2026-08-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('ef720e1c-d0b3-419c-9986-9b0b8664f4ca', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Salt", "quantity": 52.9, "unitPrice": 58.4, "unit": "kg"}]', 3106.9, 'received', '2026-08-28 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('ef720e1c-d0b3-419c-9986-9b0b8664f4ca', '[{"materialName": "Salt", "quantity": 53.2, "unitPrice": 58.4, "unit": "kg"}]', 3106.9, false, '2026-08-28 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('3df7e185-45d3-4064-aa42-265e08f6dbf4', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 24.9, "unitPrice": 138.2, "unit": "kg"}]', 3468.8, 'received', '2026-08-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('3df7e185-45d3-4064-aa42-265e08f6dbf4', '[{"materialName": "Maida Flour", "quantity": 25.1, "unitPrice": 138.2, "unit": "kg"}]', 3468.8, false, '2026-08-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b3ff8473-68a2-4f4f-a9d2-505592a32549', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 58.0, "unitPrice": 602.9, "unit": "kg"}]', 34968.2, 'received', '2026-08-29 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b3ff8473-68a2-4f4f-a9d2-505592a32549', '[{"materialName": "Baking Powder", "quantity": 58.0, "unitPrice": 602.9, "unit": "kg"}]', 34968.2, false, '2026-08-29 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0686cf77-9c41-4315-bffb-116b61d96851', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 36.9, "unitPrice": 312.7, "unit": "dozen"}]', 11569.9, 'received', '2026-08-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0686cf77-9c41-4315-bffb-116b61d96851', '[{"materialName": "Eggs", "quantity": 37.0, "unitPrice": 312.7, "unit": "dozen"}]', 11569.9, false, '2026-08-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('0c272fad-ec95-430d-9758-4685e19a732d', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 52.7, "unitPrice": 141.6, "unit": "kg"}]', 7349.0, 'received', '2026-08-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('0c272fad-ec95-430d-9758-4685e19a732d', '[{"materialName": "Maida Flour", "quantity": 51.9, "unitPrice": 141.6, "unit": "kg"}]', 7349.0, false, '2026-08-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('3e87917c-9592-4929-aae6-8480f75edacc', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 22.1, "unitPrice": 918.0, "unit": "kg"}]', 20012.4, 'received', '2026-08-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('3e87917c-9592-4929-aae6-8480f75edacc', '[{"materialName": "Butter", "quantity": 21.8, "unitPrice": 918.0, "unit": "kg"}]', 20012.4, false, '2026-08-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('efa19aec-c39e-4108-a891-e6a40f5f01aa', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 21.6, "unitPrice": 496.5, "unit": "kg"}]', 10674.8, 'received', '2026-08-31 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('efa19aec-c39e-4108-a891-e6a40f5f01aa', '[{"materialName": "Dalda Ghee", "quantity": 21.5, "unitPrice": 496.5, "unit": "kg"}]', 10674.8, false, '2026-08-31 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('246fcf2a-6cf3-440e-b23f-775d68b1ca0f', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 27.8, "unitPrice": 163.6, "unit": "kg"}]', 4515.4, 'received', '2026-09-01 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('246fcf2a-6cf3-440e-b23f-775d68b1ca0f', '[{"materialName": "Sugar", "quantity": 27.6, "unitPrice": 163.6, "unit": "kg"}]', 4515.4, false, '2026-09-01 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('a10461a5-879e-465d-9e4c-42507041acc6', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Yeast", "quantity": 32.1, "unitPrice": 1179.9, "unit": "kg"}]', 37756.8, 'received', '2026-09-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('a10461a5-879e-465d-9e4c-42507041acc6', '[{"materialName": "Yeast", "quantity": 32.0, "unitPrice": 1179.9, "unit": "kg"}]', 37756.8, false, '2026-09-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('4b93139c-a929-4244-bacc-77fb7b965c31', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 11.3, "unitPrice": 14.8, "unit": "unit"}]', 168.7, 'received', '2026-09-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('4b93139c-a929-4244-bacc-77fb7b965c31', '[{"materialName": "Packaging", "quantity": 11.4, "unitPrice": 14.8, "unit": "unit"}]', 168.7, false, '2026-09-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('d3835c2d-b45d-4db5-8a00-7183fb9c6f04', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 23.8, "unitPrice": 1091.1, "unit": "kg"}]', 25640.8, 'received', '2026-09-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('d3835c2d-b45d-4db5-8a00-7183fb9c6f04', '[{"materialName": "Milk Powder", "quantity": 23.5, "unitPrice": 1091.1, "unit": "kg"}]', 25640.8, false, '2026-09-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('31cdab6b-7f9b-4629-91e8-66a5a9f0e84a', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 47.7, "unitPrice": 136.8, "unit": "kg"}]', 6470.6, 'received', '2026-09-02 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('31cdab6b-7f9b-4629-91e8-66a5a9f0e84a', '[{"materialName": "Maida Flour", "quantity": 47.3, "unitPrice": 136.8, "unit": "kg"}]', 6470.6, false, '2026-09-02 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('b0a70450-ccdc-4e4b-a84b-11727aa496cc', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 36.2, "unitPrice": 137.9, "unit": "kg"}]', 4950.6, 'received', '2026-09-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('b0a70450-ccdc-4e4b-a84b-11727aa496cc', '[{"materialName": "Maida Flour", "quantity": 35.9, "unitPrice": 137.9, "unit": "kg"}]', 4950.6, false, '2026-09-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('9ec3c5b8-c9e3-438f-b387-0334dad5517f', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Vanilla Essence", "quantity": 12.3, "unitPrice": 2627.7, "unit": "litre"}]', 32583.5, 'received', '2026-09-04 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('9ec3c5b8-c9e3-438f-b387-0334dad5517f', '[{"materialName": "Vanilla Essence", "quantity": 12.4, "unitPrice": 2627.7, "unit": "litre"}]', 32583.5, false, '2026-09-04 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('3c99f568-8168-4efc-b05c-e6d6c6dee29f', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 34.7, "unitPrice": 308.2, "unit": "dozen"}]', 10632.9, 'received', '2026-09-05 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('3c99f568-8168-4efc-b05c-e6d6c6dee29f', '[{"materialName": "Eggs", "quantity": 34.5, "unitPrice": 308.2, "unit": "dozen"}]', 10632.9, false, '2026-09-05 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('49b7d34e-4b05-4a39-9591-241d10145987', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 59.8, "unitPrice": 178.2, "unit": "kg"}]', 10567.3, 'received', '2026-09-06 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('49b7d34e-4b05-4a39-9591-241d10145987', '[{"materialName": "Sugar", "quantity": 59.3, "unitPrice": 178.2, "unit": "kg"}]', 10567.3, false, '2026-09-06 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('fca5507b-520f-4166-9c26-55098fe5d3b9', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 58.5, "unitPrice": 480.4, "unit": "kg"}]', 28151.4, 'received', '2026-09-07 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('fca5507b-520f-4166-9c26-55098fe5d3b9', '[{"materialName": "Dalda Ghee", "quantity": 58.6, "unitPrice": 480.4, "unit": "kg"}]', 28151.4, false, '2026-09-07 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('91e5727a-5281-4185-a7d5-962c7c915c61', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 47.4, "unitPrice": 912.3, "unit": "kg"}]', 42786.9, 'received', '2026-09-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('91e5727a-5281-4185-a7d5-962c7c915c61', '[{"materialName": "Butter", "quantity": 46.9, "unitPrice": 912.3, "unit": "kg"}]', 42786.9, false, '2026-09-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('4cb98ada-3538-4a27-a746-5bff12033793', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 32.0, "unitPrice": 142.9, "unit": "kg"}]', 4501.4, 'received', '2026-09-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('4cb98ada-3538-4a27-a746-5bff12033793', '[{"materialName": "Maida Flour", "quantity": 31.5, "unitPrice": 142.9, "unit": "kg"}]', 4501.4, false, '2026-09-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7b7eec7a-df50-4139-9b2b-2fbc3a3614df', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 23.8, "unitPrice": 323.3, "unit": "dozen"}]', 7662.2, 'received', '2026-09-08 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7b7eec7a-df50-4139-9b2b-2fbc3a3614df', '[{"materialName": "Eggs", "quantity": 23.7, "unitPrice": 323.3, "unit": "dozen"}]', 7662.2, false, '2026-09-08 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('83b6cec8-bf26-483d-8492-12c4e728ec7b', 'b51bdac0-ede7-4f72-a911-e78629238bb3', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Baking Powder", "quantity": 42.1, "unitPrice": 622.9, "unit": "kg"}]', 26473.2, 'received', '2026-09-09 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('83b6cec8-bf26-483d-8492-12c4e728ec7b', '[{"materialName": "Baking Powder", "quantity": 42.5, "unitPrice": 622.9, "unit": "kg"}]', 26473.2, false, '2026-09-09 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e5bbe41c-5baa-4447-94b6-c5613f066037', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 25.7, "unitPrice": 15.1, "unit": "unit"}]', 389.6, 'received', '2026-09-09 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e5bbe41c-5baa-4447-94b6-c5613f066037', '[{"materialName": "Packaging", "quantity": 25.8, "unitPrice": 15.1, "unit": "unit"}]', 389.6, false, '2026-09-09 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7f1f8dbc-c429-4176-a22a-f1437361f540', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 57.1, "unitPrice": 179.6, "unit": "kg"}]', 10345.0, 'received', '2026-09-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7f1f8dbc-c429-4176-a22a-f1437361f540', '[{"materialName": "Sugar", "quantity": 57.6, "unitPrice": 179.6, "unit": "kg"}]', 10345.0, false, '2026-09-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('db3660df-d72f-4824-acbf-25c52cb3aaac', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 21.3, "unitPrice": 143.9, "unit": "kg"}]', 3065.1, 'received', '2026-09-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('db3660df-d72f-4824-acbf-25c52cb3aaac', '[{"materialName": "Maida Flour", "quantity": 21.3, "unitPrice": 143.9, "unit": "kg"}]', 3065.1, false, '2026-09-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('bee3dcdd-ba9b-4c2a-b633-22878e0e0f95', 'f69ded5f-187a-416a-8eec-23d973a0f972', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Cocoa Powder", "quantity": 31.4, "unitPrice": 1830.7, "unit": "kg"}]', 57484.0, 'received', '2026-09-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('bee3dcdd-ba9b-4c2a-b633-22878e0e0f95', '[{"materialName": "Cocoa Powder", "quantity": 31.4, "unitPrice": 1830.7, "unit": "kg"}]', 57484.0, false, '2026-09-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2dd7b133-4f46-4cd2-9cc2-58204b34f03c', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 12.8, "unitPrice": 323.6, "unit": "dozen"}]', 4142.1, 'received', '2026-09-11 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2dd7b133-4f46-4cd2-9cc2-58204b34f03c', '[{"materialName": "Eggs", "quantity": 12.8, "unitPrice": 323.6, "unit": "dozen"}]', 4142.1, false, '2026-09-11 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6d5031fe-7687-4b4b-8b87-825875763620', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Milk Powder", "quantity": 33.6, "unitPrice": 1132.2, "unit": "kg"}]', 37928.7, 'received', '2026-09-12 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6d5031fe-7687-4b4b-8b87-825875763620', '[{"materialName": "Milk Powder", "quantity": 33.5, "unitPrice": 1132.2, "unit": "kg"}]', 37928.7, false, '2026-09-12 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('6cc1c20d-2f11-41c0-a84e-afc05a97ed2b', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 37.7, "unitPrice": 469.6, "unit": "kg"}]', 17469.1, 'received', '2026-09-13 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('6cc1c20d-2f11-41c0-a84e-afc05a97ed2b', '[{"materialName": "Dalda Ghee", "quantity": 37.2, "unitPrice": 469.6, "unit": "kg"}]', 17469.1, false, '2026-09-13 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('99a1cb6d-8d2f-4d76-850d-55ad6b15107a', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 10.1, "unitPrice": 326.3, "unit": "dozen"}]', 3263.0, 'received', '2026-09-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('99a1cb6d-8d2f-4d76-850d-55ad6b15107a', '[{"materialName": "Eggs", "quantity": 10.0, "unitPrice": 326.3, "unit": "dozen"}]', 3263.0, false, '2026-09-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('71fe6554-7ad6-43fb-a421-ab6d5ad9c8d1', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 59.4, "unitPrice": 145.1, "unit": "kg"}]', 8633.4, 'received', '2026-09-14 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('71fe6554-7ad6-43fb-a421-ab6d5ad9c8d1', '[{"materialName": "Maida Flour", "quantity": 59.5, "unitPrice": 145.1, "unit": "kg"}]', 8633.4, false, '2026-09-14 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('67d23847-5dc2-43e5-8f38-b43a7d943dee', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Salt", "quantity": 41.6, "unitPrice": 62.2, "unit": "kg"}]', 2575.1, 'received', '2026-09-16 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('67d23847-5dc2-43e5-8f38-b43a7d943dee', '[{"materialName": "Salt", "quantity": 41.4, "unitPrice": 62.2, "unit": "kg"}]', 2575.1, false, '2026-09-16 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7120da00-3788-49db-8bd1-f4711cfc6062', 'd16b2e76-ca50-40a4-92a4-fe6b80271fb8', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Packaging", "quantity": 21.5, "unitPrice": 15.8, "unit": "unit"}]', 342.9, 'received', '2026-09-17 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7120da00-3788-49db-8bd1-f4711cfc6062', '[{"materialName": "Packaging", "quantity": 21.7, "unitPrice": 15.8, "unit": "unit"}]', 342.9, false, '2026-09-17 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('825b133a-7fcf-41ab-bc31-3d73876cf5af', '8712f420-59c4-4f89-86a6-f2a091d9aee6', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Butter", "quantity": 38.9, "unitPrice": 1000.3, "unit": "kg"}]', 38711.6, 'received', '2026-09-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('825b133a-7fcf-41ab-bc31-3d73876cf5af', '[{"materialName": "Butter", "quantity": 38.7, "unitPrice": 1000.3, "unit": "kg"}]', 38711.6, false, '2026-09-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('e3276377-71d7-417f-91c8-ac981540069d', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Yeast", "quantity": 41.3, "unitPrice": 1217.1, "unit": "kg"}]', 49779.4, 'received', '2026-09-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('e3276377-71d7-417f-91c8-ac981540069d', '[{"materialName": "Yeast", "quantity": 40.9, "unitPrice": 1217.1, "unit": "kg"}]', 49779.4, false, '2026-09-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('2f67fa4a-5515-4961-bddf-7429523e6ea7', '090ff47d-69b8-4f77-85fb-a920fc32218b', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Sugar", "quantity": 32.2, "unitPrice": 171.4, "unit": "kg"}]', 5467.7, 'received', '2026-09-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('2f67fa4a-5515-4961-bddf-7429523e6ea7', '[{"materialName": "Sugar", "quantity": 31.9, "unitPrice": 171.4, "unit": "kg"}]', 5467.7, false, '2026-09-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('7a0bd4d5-ef37-48da-a23d-24ee0a461c80', 'b6eda212-5c79-40c9-a040-1376759e7ec2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Maida Flour", "quantity": 52.1, "unitPrice": 140.0, "unit": "kg"}]', 7364.0, 'received', '2026-09-18 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('7a0bd4d5-ef37-48da-a23d-24ee0a461c80', '[{"materialName": "Maida Flour", "quantity": 52.6, "unitPrice": 140.0, "unit": "kg"}]', 7364.0, false, '2026-09-18 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('296b17de-5f97-4965-9aef-e369dcc8fa9f', 'fc454368-94f3-4011-8b5d-27e41f39e219', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Eggs", "quantity": 21.1, "unitPrice": 319.0, "unit": "dozen"}]', 6730.9, 'received', '2026-09-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('296b17de-5f97-4965-9aef-e369dcc8fa9f', '[{"materialName": "Eggs", "quantity": 21.1, "unitPrice": 319.0, "unit": "dozen"}]', 6730.9, false, '2026-09-19 10:00:00');
INSERT INTO purchase_orders (id, supplier_id, branch_id, items, expected_total, status, created_at)
VALUES ('1d3e2bb1-c10f-4e3d-aa38-a8915c19a0c2', '8d04b89d-6b2b-40ed-8ed9-d0605bfbbcf2', '1ae447cb-1d0f-475b-adae-11e8e1082720', '[{"materialName": "Dalda Ghee", "quantity": 58.2, "unitPrice": 490.2, "unit": "kg"}]', 28480.6, 'received', '2026-09-19 09:00:00');
INSERT INTO deliveries (purchase_order_id, actual_items, actual_total, discrepancy_flag, created_at)
VALUES ('1d3e2bb1-c10f-4e3d-aa38-a8915c19a0c2', '[{"materialName": "Dalda Ghee", "quantity": 58.1, "unitPrice": 490.2, "unit": "kg"}]', 28480.6, false, '2026-09-19 10:00:00');


INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2789.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-06-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 414.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-06-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 1679.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-06-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 8657.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-06-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 8426.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-06-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 1554.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-06-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2796.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-06-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2838.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-06-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 2739.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-06-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1713.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-06-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2886.0, 'rejected', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-06-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2789.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', true, '2026-06-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 539.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-06-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2522.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-06-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 1420.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-06-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 1554.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', true, '2026-06-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1317.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-06-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 837.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 7574.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-07-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 6557.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-07-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 5250.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 802.0, 'rejected', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 7228.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 840.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 687.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-07-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 2375.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1987.0, 'rejected', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 12631.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 5681.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 12254.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 7098.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 2549.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-07-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 4755.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 10615.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 7050.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-07-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2103.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 6664.0, 'rejected', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-07-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 1094.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1671.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 971.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 1389.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 6041.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 680.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-07-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 5155.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-07-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 5294.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 10598.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1236.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 593.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-07-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1541.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 3207.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 2240.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 336.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 920.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 314.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 6431.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 902.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 4762.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 3474.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2094.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2544.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 13029.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2814.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 4871.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 5553.0, 'rejected', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-07-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 7734.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 6367.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-07-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 8488.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1655.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 490.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-07-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1183.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 1725.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 6805.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-07-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 7496.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2376.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 3073.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2179.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-07-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1879.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-07-31 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1570.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-07-31 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1005.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-07-31 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1146.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-08-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 2727.0, 'rejected', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-08-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 3313.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 11557.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 8138.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2137.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-08-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 11259.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 968.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1237.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 3562.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1032.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 5304.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 1775.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 5723.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1111.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-08-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1570.0, 'rejected', 'e858374c-8efe-4092-bce8-95699a2c4cd6', true, '2026-08-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2529.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2467.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 4563.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 6653.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 3799.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 7748.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 966.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-08-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 629.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-08-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 14376.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 2023.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2354.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-08-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1455.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 1368.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-08-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1181.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 421.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1135.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 6970.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 622.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-08-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2206.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 13396.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2479.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-08-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1227.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 9251.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-08-20 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 11530.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-08-21 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2017.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-22 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 11742.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-23 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 14253.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 13711.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-08-24 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1911.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-25 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 7048.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 978.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-08-26 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 5071.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-08-27 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 6060.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-28 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 703.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-08-29 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 661.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-08-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2050.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-08-30 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 11451.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-08-31 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 13078.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-09-01 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 2970.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-09-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1473.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-09-02 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 4953.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-09-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1435.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-09-03 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 8943.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-09-04 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1491.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-09-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2187.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-09-05 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 12229.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-09-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1309.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-09-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 3512.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-09-06 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 13517.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-09-07 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1874.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-09-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 10935.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-09-08 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 4915.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-09-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Maintenance', 3884.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-09-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 14040.0, 'approved', '0656428b-e973-4039-ab6d-ca0fb84fca54', false, '2026-09-09 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 1740.0, 'approved', 'af6524c9-b953-4eb1-9609-391429d99936', false, '2026-09-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1352.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-09-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 4307.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-09-10 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 1517.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-09-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Equipment Repair', 8313.0, 'approved', 'b478d66e-fc93-4d5b-96ae-375f2c7ed2af', false, '2026-09-11 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 14990.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-09-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Electricity Bill', 13517.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', true, '2026-09-12 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 455.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-09-13 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1023.0, 'approved', 'e858374c-8efe-4092-bce8-95699a2c4cd6', false, '2026-09-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 501.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-09-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Miscellaneous', 1697.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-09-14 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1142.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-09-15 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Packaging Refill', 2403.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-09-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 1029.0, 'approved', '2d86a733-2c4e-4995-bd40-c927cb362c9b', false, '2026-09-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2349.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-09-16 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 978.0, 'rejected', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', true, '2026-09-17 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Cleaning Supplies', 1313.0, 'approved', '36ec1b5e-bf0d-4bd3-9cb5-65f763d46674', false, '2026-09-18 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Transport/Fuel', 2349.0, 'approved', 'e35ed668-bb17-4a9d-9608-80826d8ea90c', false, '2026-09-19 11:00:00');
INSERT INTO expenses (branch_id, category, amount, status, submitted_by, duplicate_flag, created_at)
VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720', 'Gas Bill', 8998.0, 'approved', '86d09da8-1eb7-405f-b69a-5d292752ea51', false, '2026-09-19 11:00:00');

INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Baking Powder', '1ae447cb-1d0f-475b-adae-11e8e1082720', 401.08, 'kg', 401.08 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Butter', '1ae447cb-1d0f-475b-adae-11e8e1082720', 285.55, 'kg', 285.55 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Cocoa Powder', '1ae447cb-1d0f-475b-adae-11e8e1082720', 243.85, 'kg', 243.85 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Dalda Ghee', '1ae447cb-1d0f-475b-adae-11e8e1082720', 137.24, 'kg', 137.24 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Eggs', '1ae447cb-1d0f-475b-adae-11e8e1082720', 428.79, 'dozen', 428.79 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Maida Flour', '1ae447cb-1d0f-475b-adae-11e8e1082720', -3168.27, 'kg', -3168.27 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Milk Powder', '1ae447cb-1d0f-475b-adae-11e8e1082720', 364.05, 'kg', 364.05 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Packaging', '1ae447cb-1d0f-475b-adae-11e8e1082720', -4164.54, 'unit', -4164.54 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Salt', '1ae447cb-1d0f-475b-adae-11e8e1082720', 275.17, 'kg', 275.17 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Sugar', '1ae447cb-1d0f-475b-adae-11e8e1082720', -4.37, 'kg', -4.37 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Vanilla Essence', '1ae447cb-1d0f-475b-adae-11e8e1082720', 116.06, 'litre', 116.06 * 0.15);
INSERT INTO stock_items (material_name, branch_id, quantity, unit, low_stock_threshold)
VALUES ('Yeast', '1ae447cb-1d0f-475b-adae-11e8e1082720', 306.81, 'kg', 306.81 * 0.15);


INSERT INTO business_health_config (branch_id) VALUES ('1ae447cb-1d0f-475b-adae-11e8e1082720');

