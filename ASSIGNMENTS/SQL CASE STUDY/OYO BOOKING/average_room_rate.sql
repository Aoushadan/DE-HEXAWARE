SELECT
  h.city,
  AVG(b.amount * 1.0 / b.no_of_rooms) AS avg_room_rate,
  COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN hotels h
  ON b.hotel_id = h.hotel_id
WHERE b.status = 'Stayed'
GROUP BY h.city
ORDER BY avg_room_rate DESC;

