-- FREQUENCY OF EARLY BOOKINGS
SELECT DATEDIFF(day, b.date_of_booking, b.check_in) AS lead_time_days,
       COUNT(*) AS booking_count
FROM bookings b
GROUP BY DATEDIFF(day, b.date_of_booking, b.check_in)
ORDER BY lead_time_days;