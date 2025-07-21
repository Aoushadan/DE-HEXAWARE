---How many Vegetarian and Meatlovers were ordered by each customer?

SELECT c.customer_id, 
       SUM(CASE WHEN b.burger_name = 'Vegetarian' THEN 1 ELSE 0 END) AS vegetarian_burgers,
       SUM(CASE WHEN b.burger_name = 'Meatlovers' THEN 1 ELSE 0 END) AS meatlovers_burgers
FROM customer_orders c
JOIN burger_names b ON c.burger_id = b.burger_id
GROUP BY c.customer_id;
