-- NEW CUSTOMERS IN JANUARY
SELECT COUNT(DISTINCT b.customer_id) AS new_customers_in_january
FROM bookings b
WHERE MONTH(b.date_of_booking) = 1 AND YEAR(b.date_of_booking) = 2022
  AND NOT EXISTS (
    SELECT 1
    FROM bookings b2
    WHERE b2.customer_id = b.customer_id
      AND b2.date_of_booking < '2022-01-01'
  );