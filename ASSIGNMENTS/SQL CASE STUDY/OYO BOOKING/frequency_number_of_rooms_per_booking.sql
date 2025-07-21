-- FREQUENCY OF NUMBER OF ROOMS PER BOOKING
SELECT no_of_rooms,
       COUNT(*) AS booking_count
FROM bookings
GROUP BY no_of_rooms
ORDER BY no_of_rooms;