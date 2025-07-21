---How many of each type of burger was delivered?

SELECT b.burger_name, COUNT(*) AS burgers_delivered
FROM customer_orders c
JOIN runner_orders r ON c.order_id = r.order_id
JOIN burger_names b ON c.burger_id = b.burger_id
WHERE r.cancellation IS NULL
GROUP BY b.burger_name;