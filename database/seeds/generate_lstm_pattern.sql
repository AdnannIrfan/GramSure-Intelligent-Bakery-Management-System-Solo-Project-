DO $$
DECLARE
    i INTEGER;
    batch_date TIMESTAMPTZ;
    flour_used NUMERIC := 5.0;
    expected INTEGER := 200;
    actual INTEGER;
    variance NUMERIC;
BEGIN
    FOR i IN 1..10 LOOP
        batch_date := NOW() - (i || ' hours')::interval;

        
        variance := -(1.0 + random() * 0.9);
        actual := expected + ROUND(expected * variance / 100);

        INSERT INTO production_batches
            (branch_id, recipe_id, product_name, staff_id, shift, flour_used_kg,
             expected_units, actual_units, variance_percent, fraud_flag, created_at)
        VALUES (
            '11111111-1111-1111-1111-111111111111',
            '66666666-6666-6666-6666-666666666666',
            'Kara Biscuit',
            '44444444-4444-4444-4444-444444444444',  -- Waseem Akram (different staff, clean test)
            'afternoon',
            flour_used,
            expected,
            actual,
            variance,
            false,  
            batch_date
        );
    END LOOP;
END $$;