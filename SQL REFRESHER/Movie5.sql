
SELECT * FROM Screen
ORDER BY screen_id DESC;

SELECT * FROM Seat
WHERE seat_id = 6;


SELECT * FROM Seat
ORDER BY seat_number DESC
OFFSET 3 ROWS
FETCH NEXT 3 ROWS ONLY;

SELECT TOP 2 * FROM Seat
ORDER BY seat_number ASC;

SELECT * FROM Screen;
SELECT * FROM Seat;
SELECT * FROM Movie;
SELECT * FROM MovieCast;
SELECT * FROM Review;
SELECT * FROM Show;
SELECT * FROM ShowSeat;
SELECT * FROM [User];
SELECT * FROM Membership;
SELECT * FROM Booking;

SELECT * FROM Ticket;


SELECT * FROM PaymentGateway;


SELECT * FROM Payment;


SELECT * FROM FoodItem;


SELECT * FROM FoodItemSize;


SELECT * FROM FoodOrder;

SELECT * FROM FoodOrderItem;

SELECT * FROM PointsTransaction;



SELECT show_id AS "Show_ID",is_available AS "Available" FROM ShowSeat;

SELECT COUNT(*) AS id_cards FROM Membership;

SELECT * FROM Seat Where seat_id IN ('5','7');

SELECT * FROM Seat Where seat_id NOT IN ('5','7');

SELECT * FROM Seat Where seat_id BETWEEN 6 AND 9;

SELECT * FROM Seat Where seat_id IS NULL;

SELECT * FROM Seat Where seat_id IS NOT NULL;

SELECT seat_id,seat_number FROM Seat;

SELECT * FROM Seat WHERE screen_id = '2';

SELECT seat_id, COUNT(*) FROM Seat GROUP by seat_id;

SELECT seat_id, COUNT(*) FROM Seat GROUP by seat_id HAVING COUNT(*) >= 1;

SELECT * FROM Seat ORDER BY screen_id ASC,seat_id DESC;

SELECT DISTINCT screen_id FROM Seat;

WITH CTE AS (SELECT seat_number FROM Seat) 
SELECT * FROM CTE;

--ARITHMETIC OPERATOR HEXA

--ADDITION

SELECT seat_id + screen_id AS sum_result FROM Seat;

--SUBTRACTION

SELECT seat_id - screen_id AS difference FROM Seat;

--MULTIPLICATION

SELECT seat_id * screen_id AS product FROM Seat;

--DIVISION

SELECT seat_id / screen_id AS quotient FROM Seat;

--MODULUS

SELECT seat_id % screen_id AS remainder FROM Seat;


--COMPARISION OPERATOR HEXA

--EQUAL TO

SELECT * FROM Seat WHERE seat_id = 5;

--NOT EQUAL TO

SELECT * FROM Seat WHERE seat_id <> 5;

--NOT EQUAL TO(second method)

SELECT * FROM Seat WHERE seat_id != 6;

--GREATER THAN

SELECT * FROM Seat WHERE seat_id > 8;

--LESS THAN

SELECT * FROM Seat WHERE seat_id < 5;

--GREATER THAN OR EQUAL TO

SELECT * FROM Seat WHERE seat_id >= 7;

--LESS THAN OR EQUAL TO

SELECT * FROM Seat WHERE seat_id <= 5;


--LOGICAL OPERATOR HEXA

--AND

SELECT * FROM Seat WHERE seat_id > 5 AND screen_id < 3;

--OR

SELECT * FROM Seat WHERE seat_id = 7 OR screen_id = 3;

--NOT

SELECT * FROM Seat WHERE seat_id = 9;

--WILDCARD OPERATOR HEXA

SELECT * FROM Screen WHERE class_type LIKE 'I%';

--_

SELECT * FROM Screen WHERE class_type LIKE '___ver';


--GRANT,REVOKE


/*CREATE TABLE Ticket (
    ticket_id INT PRIMARY KEY NOT NULL,
    qr_code VARCHAR(100) NOT NULL,
    delivery_method VARCHAR(50) NOT NULL,
    scanned_at DATETIME
);*/



SELECT name FROM sys.server_principals WHERE name = 'Job Aoushadan';
CREATE LOGIN User1 WITH PASSWORD = 'StrongPassword@123';
USE HIMOVIES;
CREATE USER User1 FOR LOGIN User1;
GRANT SELECT, INSERT, UPDATE ON Ticket TO User1;
SELECT * FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES WHERE GRANTEE = 'Job Aoushadan';
USE HIMOVIES;
DROP USER User1;

DROP LOGIN User1;



SELECT * FROM Review
WHERE review_date = '2025-06-11 14:00:00.000'

SELECT s.name AS screen_name,
AVG(s.capacity) AS avg_capacity
FROM Screen s
JOIN Seat sc ON s.screen_id = s.screen_id
GROUP BY s.name


SELECT s.name AS screen_name,
SUM(s.capacity) AS avg_capacity
FROM Screen s
JOIN Seat sc ON s.screen_id = s.screen_id
GROUP BY s.name

SELECT m.title AS Movie_Title,
AVG(m.rating) AS average_rating
FROM Movie m
JOIN MovieCast mc ON m.movie_id = mc.cast_id
GROUP BY m.title


SELECT movie_id,title 
FROM Movie
WHERE genre IN
(SELECT genre FROM Movie WHERE rating = 8.4);

SELECT title 
FROM Movie
WHERE movie_id IN
(SELECT movie_id FROM Movie WHERE rating = 8.4);

SELECT movie_id,title 
FROM Movie
WHERE movie_id IN
(SELECT movie_id FROM Movie WHERE status = 'released');

SELECT movie_id AS m_id,title AS tit 
FROM Movie
WHERE movie_id IN
(SELECT movie_id FROM Movie WHERE status = 'released');

SELECT * FROM Movie
WHERE movie_id BETWEEN 3 AND 7;

SELECT * FROM Movie
WHERE title LIKE 'a%';

SELECT MIN(rating) AS Minimum_rating
FROM Movie;

SELECT title, MAX(rating) AS Maximum_rating
FROM Movie
GROUP BY title

SELECT MAX(rating) AS Maximum_rating
FROM Movie
WHERE title = 'The Lion King'
GROUP BY title

SELECT MAX(rating) AS Maximum_rating,movie_id
FROM Movie
WHERE title = 'The Lion King'
GROUP BY movie_id
HAVING MAX(rating) > 5
ORDER BY MAX(rating) DESC;

SELECT MAX(rating) AS Maximum_rating,movie_id
FROM Movie
WHERE title = 'The Lion King'
GROUP BY movie_id
HAVING MAX(rating) > 5
ORDER BY movie_id DESC;

