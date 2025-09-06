-- WARNING: This is an intentionally BAD and SLOW query for educational purposes
-- DO NOT run this on a production database!
-- This query demonstrates multiple anti-patterns and inefficient practices

WITH RECURSIVE 
-- Unnecessary recursive CTE that generates numbers
number_generator AS (
    SELECT 1 as num
    UNION ALL
    SELECT num + 1 
    FROM number_generator 
    WHERE num < 10000  -- Generates 10,000 rows unnecessarily
),

-- Cartesian product nightmare - joins everything to everything
cartesian_chaos AS (
    SELECT 
        f1.film_id as film1_id,
        f2.film_id as film2_id,
        f3.film_id as film3_id,
        a1.actor_id as actor1_id,
        a2.actor_id as actor2_id,
        c1.customer_id as customer1_id,
        c2.customer_id as customer2_id
    FROM film f1
    CROSS JOIN film f2  -- Cartesian product: film table joined with itself
    CROSS JOIN film f3  -- Another cartesian product
    CROSS JOIN actor a1
    CROSS JOIN actor a2
    CROSS JOIN customer c1
    CROSS JOIN customer c2
    WHERE f1.film_id != f2.film_id 
      AND f2.film_id != f3.film_id
      AND a1.actor_id != a2.actor_id
      AND c1.customer_id != c2.customer_id
),

-- Inefficient subquery in SELECT
expensive_calculations AS (
    SELECT 
        f.film_id,
        f.title,
        -- Multiple correlated subqueries (very expensive)
        (SELECT COUNT(*) 
         FROM rental r 
         JOIN inventory i ON r.inventory_id = i.inventory_id 
         WHERE i.film_id = f.film_id
         AND EXISTS (
             SELECT 1 FROM payment p 
             WHERE p.rental_id = r.rental_id 
             AND p.amount > (
                 SELECT AVG(p2.amount) * 0.5 
                 FROM payment p2 
                 WHERE p2.customer_id = p.customer_id
             )
         )) as expensive_rental_count,
        
        -- Another expensive correlated subquery
        (SELECT STRING_AGG(DISTINCT a.first_name || ' ' || a.last_name, ', ')
         FROM actor a
         JOIN film_actor fa ON a.actor_id = fa.actor_id
         WHERE fa.film_id = f.film_id
         AND a.actor_id IN (
             SELECT DISTINCT fa2.actor_id
             FROM film_actor fa2
             JOIN film f2 ON fa2.film_id = f2.film_id
             WHERE f2.rating = f.rating
             AND f2.film_id != f.film_id
             AND EXISTS (
                 SELECT 1 FROM rental r
                 JOIN inventory i ON r.inventory_id = i.inventory_id
                 WHERE i.film_id = f2.film_id
             )
         )) as related_actors,
        
        -- Unnecessary calculation using LIKE with wildcards at the beginning
        (SELECT COUNT(*)
         FROM film f_inner
         WHERE f_inner.description LIKE '%' || SUBSTRING(f.description, 1, 3) || '%'
         AND f_inner.film_id != f.film_id) as similar_description_count
    FROM film f
)

-- Main query with more inefficiencies
SELECT DISTINCT
    ng.num,
    ec.film_id,
    ec.title,
    ec.expensive_rental_count,
    ec.related_actors,
    ec.similar_description_count,
    
    -- Function calls in SELECT that could be avoided
    UPPER(REVERSE(LOWER(ec.title))) as reversed_title,
    
    -- Expensive aggregations without proper grouping
    (SELECT MAX(length) FROM film WHERE rating = 'PG-13') as max_pg13_length,
    (SELECT MIN(length) FROM film WHERE rating = 'R') as min_r_length,
    (SELECT AVG(rental_rate) FROM film WHERE release_year = 2006) as avg_2006_rate,
    
    -- Redundant calculations
    CASE 
        WHEN ec.expensive_rental_count > (SELECT AVG(expensive_rental_count) FROM expensive_calculations) THEN 'High'
        WHEN ec.expensive_rental_count > (SELECT AVG(expensive_rental_count) * 0.5 FROM expensive_calculations) THEN 'Medium'
        ELSE 'Low'
    END as rental_category,
    
    -- More correlated subqueries
    (SELECT COUNT(DISTINCT c.customer_id)
     FROM customer c
     JOIN rental r ON c.customer_id = r.customer_id
     JOIN inventory i ON r.inventory_id = i.inventory_id
     WHERE i.film_id = ec.film_id
     AND c.active = 1
     AND EXISTS (
         SELECT 1 FROM address a 
         JOIN city ci ON a.city_id = ci.city_id
         JOIN country co ON ci.country_id = co.country_id
         WHERE a.address_id = c.address_id
         AND co.country = 'United States'
     )) as us_customer_count

FROM number_generator ng
CROSS JOIN expensive_calculations ec
LEFT JOIN cartesian_chaos cc ON cc.film1_id = ec.film_id

-- Inefficient WHERE clause with functions and NOT EXISTS
WHERE ec.title IS NOT NULL
  AND LENGTH(ec.title) > 3
  AND UPPER(ec.title) NOT LIKE '%THE%'
  AND NOT EXISTS (
      SELECT 1 FROM film f_check
      WHERE f_check.film_id != ec.film_id
      AND SOUNDEX(f_check.title) = SOUNDEX(ec.title)
  )
  AND ec.film_id IN (
      SELECT DISTINCT i.film_id
      FROM inventory i
      JOIN rental r ON i.inventory_id = r.inventory_id
      JOIN customer c ON r.customer_id = c.customer_id
      WHERE c.create_date > '2005-01-01'
      AND NOT EXISTS (
          SELECT 1 FROM payment p
          WHERE p.rental_id = r.rental_id
          AND p.amount = 0
      )
  )
  AND ng.num <= ec.expensive_rental_count

-- Inefficient ORDER BY with functions (fixed for SELECT DISTINCT compatibility)
ORDER BY 
    ec.film_id,  -- Changed from RANDOM() to fix SELECT DISTINCT issue
    LENGTH(ec.title) DESC,
    ec.related_actors,  -- Removed UPPER() since it's not in SELECT
    ec.expensive_rental_count * ng.num DESC,
    ng.num DESC

-- LIMIT that doesn't help much with the inefficient query structure
LIMIT 100;
