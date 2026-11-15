DO $$
DECLARE
    i INTEGER;
    batch_date TIMESTAMPTZ;
    flour_used NUMERIC;
    expected INTEGER;
    actual INTEGER;
    variance NUMERIC;
    is_fraud BOOLEAN;
BEGIN
    FOR i IN 1..60 LOOP
        batch_date := NOW() - (i || ' days')::interval;
        flour_used := 5.0;
        expected := 200;

        
        IF random() < 0.10 THEN
            actual := expected - (expected * (0.03 + random() * 0.07))::integer;
            is_fraud := true;
        ELSE
            
            actual := expected + (expected * (random() * 0.04 - 0.02))::integer;
            is_fraud := false;
        END IF;

        variance := ((actual - expected)::numeric / expected) * 100;

        INSERT INTO production_batches
            (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg,
             expected_units, actual_units, variance_percent, fraud_flag, created_at)
        VALUES (
            '11111111-1111-1111-1111-111111111111',
            '66666666-6666-6666-6666-666666666666',
            'Kara Biscuit',
            '33333333-3333-3333-3333-333333333333',
            CASE WHEN random() < 0.5 THEN 'morning' ELSE 'afternoon' END,
            flour_used,
            expected,
            actual,
            variance,
            (ABS(variance) > 2.0),
            batch_date
        );
    END LOOP;
END $$;