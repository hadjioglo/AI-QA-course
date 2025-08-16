-- Test data for payment_reports table
INSERT INTO payment_reports
(id, merchant_id, one_off_fee_count, one_off_fee_volume, settlement_fee_count, settlement_fee_volume, settled_volume, created_at, updated_at, report_date, rr_start_of_day_volume, safeguard_start_of_day_volume, report_update_date_time, dispute_reserve_volume, account_transfer_credit_volume, account_transfer_credit_count, account_transfer_debit_volume, account_transfer_debit_count, report_date_time_from, report_date_time_until, immature_sales_volume, mature_sales_volume, calculated_for_settlement_volume, rr_expired_volume, debt_to_operator_volume, debt_to_operator_diff_volume)
VALUES
(101, 201, 2, 1000, 1, 500, 1500, '2025-08-10 09:00:00', NULL, '2025-08-09', 200, 300, NULL, 50, 100, 1, 80, 1, '2025-08-09 00:00:00', '2025-08-10 00:00:00', 1200, 300, 1500, 0, 0, 0),
(102, 202, 3, 2000, 2, 1000, 3000, '2025-08-11 10:00:00', NULL, '2025-08-10', 400, 600, NULL, 100, 200, 2, 160, 2, '2025-08-10 00:00:00', '2025-08-11 00:00:00', 2500, 500, 3000, 0, 0, 0),
(103, 203, 1, 500, 1, 250, 750, '2025-07-12 08:00:00', NULL, '2025-07-11', 100, 150, NULL, 25, 50, 1, 40, 1, '2025-07-11 00:00:00', '2025-07-12 00:00:00', 600, 150, 750, 0, 0, 0),
(104, 204, 2, 1200, 2, 600, 1800, '2025-06-15 11:30:00', NULL, '2025-06-14', 300, 400, NULL, 75, 120, 2, 90, 2, '2025-06-14 00:00:00', '2025-06-15 00:00:00', 1500, 300, 1800, 0, 0, 0),
(105, 205, 4, 3000, 3, 1500, 4500, '2025-05-18 14:45:00', NULL, '2025-05-17', 600, 900, NULL, 150, 300, 3, 240, 3, '2025-05-17 00:00:00', '2025-05-18 00:00:00', 3750, 750, 4500, 0, 0, 0),
(106, 206, 5, 4000, 4, 2000, 6000, '2025-04-20 16:20:00', NULL, '2025-04-19', 800, 1200, NULL, 200, 400, 4, 320, 4, '2025-04-19 00:00:00', '2025-04-20 00:00:00', 5000, 1000, 6000, 0, 0, 0),
(107, 207, 6, 5000, 5, 2500, 7500, '2025-03-22 18:10:00', NULL, '2025-03-21', 1000, 1500, NULL, 250, 500, 5, 400, 5, '2025-03-21 00:00:00', '2025-03-22 00:00:00', 6250, 1250, 7500, 0, 0, 0);
