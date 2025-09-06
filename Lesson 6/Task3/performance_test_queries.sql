-- Performance Testing Queries for Customer Total Payments

-- ========================================
-- Simple DO block with timing
-- ========================================
DO $$
DECLARE
    start_time TIMESTAMP;
    end_time TIMESTAMP;
    execution_time INTERVAL;
    i INTEGER;
    iterations INTEGER := 1000; -- Change this number for more/fewer iterations
BEGIN
    start_time := clock_timestamp();
    
    FOR i IN 1..iterations LOOP
        PERFORM COUNT(*) FROM (
            SELECT 
                c.first_name || ' ' || c.last_name AS customer_name,
                SUM(p.amount) AS total_amount
            FROM customer c
            INNER JOIN payment p ON c.customer_id = p.customer_id
            GROUP BY c.customer_id, c.first_name, c.last_name
            ORDER BY total_amount DESC
        ) subquery;
    END LOOP;
    
    end_time := clock_timestamp();
    execution_time := end_time - start_time;
    
    RAISE NOTICE 'Executed % iterations in %', iterations, execution_time;
    RAISE NOTICE 'Average time per query: %', execution_time / iterations;
END $$;