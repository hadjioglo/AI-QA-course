-- SQL Query: Total payment for each customer using GROUP BY
-- This query retrieves the total payment amount for each customer
-- and displays the customer name and total amount

SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,
    SUM(p.amount) AS total_amount
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_amount DESC;
