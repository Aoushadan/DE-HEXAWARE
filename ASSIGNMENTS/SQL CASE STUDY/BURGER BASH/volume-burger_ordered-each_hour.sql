---What was the total volume of burgers ordered for each hour of the day?

SELECT DATEPART(HOUR, order_time) AS order_hour,
       COUNT(*) AS total_burgers
FROM customer_orders
GROUP BY DATEPART(HOUR, order_time)
ORDER BY order_hour;
