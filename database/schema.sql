

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS timescaledb;



CREATE TABLE branches (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(150) NOT NULL,
    address TEXT,
    owner_id UUID, -- FK added after users table is created
    is_active BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);



CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(150) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL CHECK (role IN ('owner', 'manager', 'staff', 'auditor')),
    branch_id UUID REFERENCES branches(id) ON DELETE SET NULL,
    is_active BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_users_branch ON users(branch_id);
CREATE INDEX idx_users_role ON users(role);

ALTER TABLE branches ADD CONSTRAINT fk_branches_owner
    FOREIGN KEY (owner_id) REFERENCES users(id) ON DELETE CASCADE;

CREATE INDEX idx_branches_owner ON branches(owner_id);


CREATE TABLE recipes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    product_name VARCHAR(150) NOT NULL,
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    ingredients JSONB NOT NULL DEFAULT '[]',
    flour_qty_kg NUMERIC(10,2) NOT NULL,
    expected_units_per_batch INTEGER NOT NULL,
    tolerance_percent NUMERIC(5,2) NOT NULL DEFAULT 2.0,
    cost_per_unit NUMERIC(10,2) NOT NULL DEFAULT 0,
    version INTEGER NOT NULL DEFAULT 1,
    is_active BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_recipes_branch ON recipes(branch_id);
CREATE INDEX idx_recipes_product_active ON recipes(product_name, branch_id, is_active);


CREATE TABLE suppliers (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(150) NOT NULL,
    contact_phone VARCHAR(20),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    notes TEXT,
    scorecard_accuracy NUMERIC(5,2) NOT NULL DEFAULT 100.0,
    scorecard_price NUMERIC(5,2) NOT NULL DEFAULT 100.0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_suppliers_branch ON suppliers(branch_id);

CREATE TABLE purchase_orders (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    supplier_id UUID NOT NULL REFERENCES suppliers(id) ON DELETE CASCADE,
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    items JSONB NOT NULL DEFAULT '[]',
    expected_total NUMERIC(12,2) NOT NULL DEFAULT 0,
    status VARCHAR(20) NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'received', 'discrepancy')),
    created_by UUID REFERENCES users(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_po_branch ON purchase_orders(branch_id);
CREATE INDEX idx_po_status ON purchase_orders(status);

CREATE TABLE deliveries (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    purchase_order_id UUID NOT NULL REFERENCES purchase_orders(id) ON DELETE CASCADE,
    actual_items JSONB NOT NULL DEFAULT '[]',
    actual_total NUMERIC(12,2) NOT NULL DEFAULT 0,
    discrepancy_flag BOOLEAN NOT NULL DEFAULT false,
    recorded_by UUID REFERENCES users(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_deliveries_po ON deliveries(purchase_order_id);



CREATE TABLE stock_items (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    material_name VARCHAR(150) NOT NULL,
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    quantity NUMERIC(12,3) NOT NULL DEFAULT 0,
    unit VARCHAR(20) NOT NULL DEFAULT 'kg',
    low_stock_threshold NUMERIC(12,3) NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (material_name, branch_id)
);

CREATE INDEX idx_stock_items_branch ON stock_items(branch_id);

CREATE TABLE stock_movements (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    stock_item_id UUID NOT NULL REFERENCES stock_items(id) ON DELETE CASCADE,
    movement_type VARCHAR(10) NOT NULL CHECK (movement_type IN ('in', 'out')),
    quantity NUMERIC(12,3) NOT NULL,
    unit_cost NUMERIC(10,2),
    reference_type VARCHAR(50),
    reference_id UUID,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_stock_movements_item ON stock_movements(stock_item_id);
CREATE INDEX idx_stock_movements_created ON stock_movements(created_at);


CREATE TABLE production_batches (
    id UUID DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    recipe_id UUID REFERENCES recipes(id) ON DELETE SET NULL,
    product_name VARCHAR(150) NOT NULL,
    staff_id UUID REFERENCES users(id) ON DELETE SET NULL,
    shift VARCHAR(20),
    flour_used_kg NUMERIC(10,2) NOT NULL,
    expected_units INTEGER NOT NULL,
    actual_units INTEGER NOT NULL,
    variance_percent NUMERIC(6,2) NOT NULL,
    fraud_flag BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE production_batches ADD PRIMARY KEY (id, created_at);
SELECT create_hypertable('production_batches', 'created_at');

CREATE INDEX idx_batches_branch ON production_batches(branch_id);
CREATE INDEX idx_batches_staff ON production_batches(staff_id);
CREATE INDEX idx_batches_fraud ON production_batches(fraud_flag);
CREATE INDEX idx_batches_created ON production_batches(created_at);


CREATE TABLE sales (
    id UUID DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    staff_id UUID REFERENCES users(id) ON DELETE SET NULL,
    shift VARCHAR(20),
    payment_type VARCHAR(10) NOT NULL CHECK (payment_type IN ('cash', 'credit', 'digital')),
    product_name VARCHAR(150) NOT NULL,
    units_sold INTEGER NOT NULL,
    amount NUMERIC(12,2) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE sales ADD PRIMARY KEY (id, created_at);
SELECT create_hypertable('sales', 'created_at');

CREATE INDEX idx_sales_branch ON sales(branch_id);
CREATE INDEX idx_sales_created ON sales(created_at);
CREATE INDEX idx_sales_product ON sales(product_name);

CREATE TABLE shift_reconciliations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    staff_id UUID REFERENCES users(id) ON DELETE SET NULL,
    shift VARCHAR(20),
    units_produced INTEGER NOT NULL,
    closing_stock INTEGER NOT NULL,
    expected_units_sold INTEGER NOT NULL,
    cash_collected NUMERIC(12,2) NOT NULL,
    discrepancy_amount NUMERIC(12,2) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_reconciliations_branch ON shift_reconciliations(branch_id);
CREATE INDEX idx_reconciliations_staff ON shift_reconciliations(staff_id);


CREATE TABLE expenses (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    category VARCHAR(100) NOT NULL,
    amount NUMERIC(12,2) NOT NULL,
    receipt_url TEXT,
    receipt_hash VARCHAR(64),
    status VARCHAR(20) NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected')),
    submitted_by UUID REFERENCES users(id) ON DELETE SET NULL,
    approved_by UUID REFERENCES users(id) ON DELETE SET NULL,
    duplicate_flag BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_expenses_branch ON expenses(branch_id);
CREATE INDEX idx_expenses_status ON expenses(status);
CREATE INDEX idx_expenses_receipt_hash ON expenses(receipt_hash);


CREATE TABLE budgets (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    category VARCHAR(100) NOT NULL,
    month INTEGER NOT NULL CHECK (month BETWEEN 1 AND 12),
    year INTEGER NOT NULL,
    budgeted_amount NUMERIC(12,2) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (branch_id, category, month, year)
);

CREATE INDEX idx_budgets_branch_period ON budgets(branch_id, month, year);


CREATE TABLE staff_profiles (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    position VARCHAR(100) NOT NULL,
    salary_rate NUMERIC(10,2) NOT NULL,
    salary_type VARCHAR(10) NOT NULL DEFAULT 'daily' CHECK (salary_type IN ('daily', 'monthly')),
    face_encoding JSONB,
    shift_schedule JSONB NOT NULL DEFAULT '{}',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_staff_profiles_branch ON staff_profiles(branch_id);

CREATE TABLE attendance_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    staff_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    check_in_time TIMESTAMPTZ NOT NULL,
    check_out_time TIMESTAMPTZ,
    check_in_method VARCHAR(10) NOT NULL CHECK (check_in_method IN ('pin', 'selfie')),
    face_match_score NUMERIC(5,4),
    shift VARCHAR(20),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_attendance_staff ON attendance_logs(staff_id);
CREATE INDEX idx_attendance_branch ON attendance_logs(branch_id);
CREATE INDEX idx_attendance_checkin ON attendance_logs(check_in_time);


CREATE TABLE fraud_alerts (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    staff_id UUID REFERENCES users(id) ON DELETE SET NULL,
    alert_type VARCHAR(50) NOT NULL,
    reference_type VARCHAR(50),
    reference_id UUID,
    risk_score NUMERIC(5,2) NOT NULL,
    details TEXT,
    status VARCHAR(20) NOT NULL DEFAULT 'open' CHECK (status IN ('open', 'reviewed', 'dismissed')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_fraud_alerts_branch ON fraud_alerts(branch_id);
CREATE INDEX idx_fraud_alerts_status ON fraud_alerts(status);
CREATE INDEX idx_fraud_alerts_staff ON fraud_alerts(staff_id);


CREATE TABLE staff_suspicion_index (
    staff_id UUID PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
    score NUMERIC(5,2) NOT NULL DEFAULT 0,
    batch_count INTEGER NOT NULL DEFAULT 0,
    flagged_count INTEGER NOT NULL DEFAULT 0,
    last_updated TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


CREATE TABLE demand_forecasts (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    product_name VARCHAR(150) NOT NULL,
    forecast_date DATE NOT NULL,
    recommended_quantity INTEGER NOT NULL,
    confidence VARCHAR(10) NOT NULL DEFAULT 'medium' CHECK (confidence IN ('low', 'medium', 'high')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_forecasts_branch_date ON demand_forecasts(branch_id, forecast_date);


CREATE TABLE notifications (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    type VARCHAR(20) NOT NULL CHECK (type IN ('fraud', 'expense', 'stock', 'summary', 'forecast', 'other')),
    title VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    reference_type VARCHAR(50),
    reference_id UUID,
    is_read BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_notifications_branch ON notifications(branch_id);
CREATE INDEX idx_notifications_read ON notifications(is_read);


CREATE TABLE business_health_config (
    branch_id UUID PRIMARY KEY REFERENCES branches(id) ON DELETE CASCADE,
    weight_profitability NUMERIC(3,2) NOT NULL DEFAULT 0.35,
    weight_yield NUMERIC(3,2) NOT NULL DEFAULT 0.25,
    weight_fraud NUMERIC(3,2) NOT NULL DEFAULT 0.25,
    weight_cash_accuracy NUMERIC(3,2) NOT NULL DEFAULT 0.15,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


CREATE TABLE stock_transfers (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    from_branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    to_branch_id UUID NOT NULL REFERENCES branches(id) ON DELETE CASCADE,
    material_name VARCHAR(150) NOT NULL,
    quantity NUMERIC(12,3) NOT NULL,
    unit VARCHAR(20) NOT NULL DEFAULT 'kg',
    status VARCHAR(20) NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'in_transit', 'completed', 'cancelled')),
    initiated_by UUID REFERENCES users(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_stock_transfers_from ON stock_transfers(from_branch_id);
CREATE INDEX idx_stock_transfers_to ON stock_transfers(to_branch_id);


CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DO $$
DECLARE
    t TEXT;
BEGIN
    FOR t IN
        SELECT table_name FROM information_schema.columns
        WHERE column_name = 'updated_at' AND table_schema = 'public'
    LOOP
        EXECUTE format(
            'CREATE TRIGGER trg_set_updated_at BEFORE UPDATE ON %I FOR EACH ROW EXECUTE FUNCTION set_updated_at();',
            t
        );
    END LOOP;
END $$;