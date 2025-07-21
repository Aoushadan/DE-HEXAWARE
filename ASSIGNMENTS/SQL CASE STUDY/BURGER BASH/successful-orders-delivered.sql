---How many successful orders were delivered by each runner?

SELECT runner_id, COUNT(DISTINCT order_id) AS successful_orders
FROM runner_orders
WHERE cancellation IS NULL
GROUP BY runner_id;
