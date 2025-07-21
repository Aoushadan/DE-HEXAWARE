---What was the average distance travelled for each customer?

SELECT c.customer_id,
       AVG(CAST(REPLACE(r.distance, 'km', '') AS FLOAT)) AS avg_distance_km
FROM customer_orders c
JOIN runner_orders r ON c.order_id = r.order_id
WHERE r.cancellation IS NULL
GROUP BY c.customer_id;
