-- TOTAL NUMBER OF BOOKINGS PER CITY
SELECT h.city, COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN hotels h ON b.hotel_id = h.hotel_id
GROUP BY h.city;

-- TOTAL REVENUE PER CITY(AFTER DISCOUNT)
SELECT h.city, SUM(b.amount - b.discount) AS total_revenue
FROM bookings b
JOIN hotels h ON b.hotel_id = h.hotel_id
WHERE b.status = 'Stayed'
GROUP BY h.city;

-- AVERAGE AMOUNT PAID PER BOOKING(BY CITY)
SELECT h.city, AVG(b.amount - b.discount) AS avg_net_amount
FROM bookings b
JOIN hotels h ON b.hotel_id = h.hotel_id
WHERE b.status = 'Stayed'
GROUP BY h.city;

-- EARLIEST AND LATEST CHECK-IN PER CITY
SELECT h.city, 
			MIN(CONVERT(date,b.check_in, 1)) AS earliest_check_in,
			MAX(CONVERT(date,b.check_in, 1)) AS latest_check_in
FROM bookings b
JOIN hotels h ON b.hotel_id = h.hotel_id
GROUP BY h.city;

-- MIN AND MAX NUMBER OF ROOMS BOOKED PER CITY
SELECT 
	h.city,
	MIN(b.no_of_rooms) AS min_rooms,
	MAX(b.no_of_rooms) AS max_rooms,
	AVG(b.no_of_rooms) AS avg_rooms,
	SUM(b.no_of_rooms) AS total_rooms
FROM bookings b
JOIN hotels h ON b.hotel_id = h.hotel_id
GROUP BY h.city;

-- OVERALL SUMMARY
SELECT 
	COUNT(*) AS total_bookings,
	MIN(amount - discount) AS min_net_amount,
	MAX(amount - discount) AS max_net_amount,
	AVG(amount - discount) AS avg_net_amount,
	SUM(amount - discount) AS total_net_amount
FROM bookings b
WHERE b.status = 'Stayed'

