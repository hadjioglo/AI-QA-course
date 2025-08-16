-- Test data for payment_report_parts table
INSERT INTO payment_report_parts
(id, report_id, merchant_processor_account_id, merchant_outlet_id, rr_start_of_day_count, rr_start_of_day_volume, safeguard_start_of_day_count, safeguard_start_of_day_volume, new_funds_count, new_funds_volume, refund_count, refund_volume, sale_fee_count, sale_fee_volume, refund_fee_count, refund_fee_volume, created_at, updated_at, sale_scheme_fee_volume, refund_scheme_fee_volume, sale_interchange_fee_volume, refund_interchange_fee_volume, sale_reseller_fee_volume, refund_reseller_fee_volume, sale_referrer_fee_volume, refund_referrer_fee_volume, sale_total_processing_fee_volume, refund_total_processing_fee_volume, chargeback_scheme_fee_volume, chargeback_reseller_fee_volume, chargeback_referrer_fee_volume, chargeback_total_fee_volume, dispute_refund_count, dispute_refund_volume, negative_dispute_volume, negative_dispute_count, positive_dispute_volume, positive_dispute_count)
VALUES
(201, 101, 301, 401, 1, 100, 2, 200, 3, 300, 1, 50, 2, 60, 1, 20, '2025-08-10 09:10:00', NULL, 10, 5, 15, 7, 8, 4, 6, 3, 18, 9, 2, 1, 3, 2, 1, 5, 0, 0, 0, NULL),
(202, 102, 302, 402, 2, 200, 3, 300, 4, 400, 2, 100, 3, 120, 2, 40, '2025-08-11 10:20:00', NULL, 20, 10, 30, 14, 16, 8, 12, 6, 36, 18, 4, 2, 6, 4, 2, 10, 0, 0, 0, NULL),
(203, 103, 303, 403, 3, 300, 4, 400, 5, 500, 3, 150, 4, 180, 3, 60, '2025-07-12 08:20:00', NULL, 30, 15, 45, 21, 24, 12, 18, 9, 54, 27, 6, 3, 9, 6, 3, 15, 0, 0, 0, NULL),
(204, 104, 304, 404, 4, 400, 5, 500, 6, 600, 4, 200, 5, 240, 4, 80, '2025-06-15 11:40:00', NULL, 40, 20, 60, 28, 32, 16, 24, 12, 72, 36, 8, 4, 12, 8, 4, 20, 0, 0, 0, NULL),
(205, 105, 305, 405, 5, 500, 6, 600, 7, 700, 5, 250, 6, 300, 5, 100, '2025-05-18 14:55:00', NULL, 50, 25, 75, 35, 40, 20, 30, 15, 90, 45, 10, 5, 15, 10, 5, 25, 0, 0, 0, NULL),
(206, 106, 306, 406, 6, 600, 7, 700, 8, 800, 6, 300, 7, 360, 6, 120, '2025-04-20 16:30:00', NULL, 60, 30, 90, 42, 48, 24, 36, 18, 108, 54, 12, 6, 18, 12, 6, 30, 0, 0, 0, NULL),
(207, 107, 307, 407, 7, 700, 8, 800, 9, 900, 7, 350, 8, 420, 7, 140, '2025-03-22 18:20:00', NULL, 70, 35, 105, 49, 56, 28, 42, 21, 126, 63, 14, 7, 21, 14, 7, 35, 0, 0, 0, NULL);
