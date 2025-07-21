-- NET REVENUE TO THE COMPANY
SELECT SUM(amount - discount) AS net_revenue
FROM bookings
WHERE status = 'Stayed';