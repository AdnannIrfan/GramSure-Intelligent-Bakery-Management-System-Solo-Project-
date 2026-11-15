DO $$
DECLARE
  days_offset INTEGER;
BEGIN
  SELECT (CURRENT_DATE - 1) - MAX(created_at)::date INTO days_offset
  FROM production_batches WHERE branch_id = '0e8b49ea-0562-47ac-89bc-45a280fe70db';

  UPDATE production_batches SET created_at = created_at + (days_offset || ' days')::interval
  WHERE branch_id = '0e8b49ea-0562-47ac-89bc-45a280fe70db';

  UPDATE sales SET created_at = created_at + (days_offset || ' days')::interval
  WHERE branch_id = '0e8b49ea-0562-47ac-89bc-45a280fe70db';

  UPDATE purchase_orders SET created_at = created_at + (days_offset || ' days')::interval
  WHERE branch_id = '0e8b49ea-0562-47ac-89bc-45a280fe70db';

  UPDATE deliveries SET created_at = created_at + (days_offset || ' days')::interval
  WHERE purchase_order_id IN (SELECT id FROM purchase_orders WHERE branch_id = '0e8b49ea-0562-47ac-89bc-45a280fe70db');

  UPDATE expenses SET created_at = created_at + (days_offset || ' days')::interval
  WHERE branch_id = '0e8b49ea-0562-47ac-89bc-45a280fe70db';

  RAISE NOTICE 'Shifted all dates by % days', days_offset;
END $$;