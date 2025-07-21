---What was the maximum number of burgers delivered in a single order?

SELECT TOP 1 c.order_id, COUNT(*) AS burger_count
FROM customer_orders c
JOIN runner_orders r ON c.order_id = r.order_id
WHERE r.cancellation IS NULL
GROUP BY c.order_id
ORDER BY burger_count DESC;
