---For each customer, how many delivered burgers had at least 1 change and 
---how many had no changes?

SELECT c.customer_id,
       SUM(CASE WHEN (exclusions IS NOT NULL OR extras IS NOT NULL) THEN 1 ELSE 0 END) AS changed_burgers,
       SUM(CASE WHEN (exclusions IS NULL AND extras IS NULL) THEN 1 ELSE 0 END) AS no_change_burgers
FROM customer_orders c
JOIN runner_orders r ON c.order_id = r.order_id
WHERE r.cancellation IS NULL
GROUP BY c.customer_id;
