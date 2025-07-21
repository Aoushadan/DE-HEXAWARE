-- NUMBER OF BOOKINGS BY CITY
SELECT h.city,
       MONTH(b.date_of_booking) AS booking_month,
       COUNT(*) AS bookings_count
FROM bookings b
JOIN hotels h ON b.hotel_id = h.hotel_id
WHERE MONTH(b.date_of_booking) IN (1, 2, 3)
GROUP BY h.city, MONTH(b.date_of_booking);