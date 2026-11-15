

DO $$
DECLARE
    i INTEGER;
    sale_date TIMESTAMPTZ;
    kara_units INTEGER;
    naan_units INTEGER;
BEGIN
    FOR i IN 1..60 LOOP
        sale_date := NOW() - (i || ' days')::interval;

        -- Kara Biscuit: base ~150 units/day with weekly seasonality + noise
        kara_units := 150 + (20 * sin(i * 0.9))::integer + (random() * 20 - 10)::integer;
        IF kara_units < 0 THEN kara_units := 50; END IF;

        -- Naan: base ~60 units/day with some noise
        naan_units := 60 + (random() * 20 - 10)::integer;
        IF naan_units < 0 THEN naan_units := 20; END IF;

        INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
        VALUES (
            '11111111-1111-1111-1111-111111111111',
            '44444444-4444-4444-4444-444444444444',
            'morning',
            'cash',
            'Kara Biscuit',
            kara_units,
            kara_units * 8.5,
            sale_date
        );

        INSERT INTO sales (branch_id, staff_id, shift, payment_type, product_name, units_sold, amount, created_at)
        VALUES (
            '11111111-1111-1111-1111-111111111111',
            '44444444-4444-4444-4444-444444444444',
            'morning',
            'digital',
            'Naan',
            naan_units,
            naan_units * 15.0,
            sale_date
        );
    END LOOP;
END $$;