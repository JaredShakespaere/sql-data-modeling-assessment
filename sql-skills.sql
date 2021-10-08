-- Q.1
INSERT INTO artist
(name)
VALUES
('Beyonce'),
('Drake'),
('Rihanna'),
('Beenine Man'),
('Shaggy');
-- Q.2
SELECT name
FROM artist
ORDER BY name ASC LIMIT 5;
-- Q.3
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';
-- Q.4
SELECT employee_id
FROM employee
WHERE last_name = 'Edwards';

SELECT *
FROM employee
WHERE reports_to = 2;
-- Q.5
SELECT COUNT(*) first_name
FROM employee
WHERE city = 'Lethbridge';
-- Q.6
SELECT COUNT(*) invoice_id
FROM invoice
WHERE billing_country = 'USA';
-- Q.7
SELECT total
FROM invoice
ORDER BY total DESC LIMIT 1;
-- Q.8
 SELECT total
FROM invoice
ORDER BY total ASC LIMIT 1;
-- Q.9
SELECT *
FROM invoice_line
WHERE unit_price * quantity >  5;
-- Q.10
SELECT *
FROM invoice_line
WHERE unit_price * quantity <  5;
-- Q.11
SELECT SUM(unit_price)
FROM invoice_line;
-- Q.12
SELECT il.unit_price
FROM invoice_line il
JOIN invoice i ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;
-- Q.13
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;
-- Q.14
SELECT c.first_name "Customer First Name", c.last_name "Customer Last Name", e.first_name "Employee First Name", e.last_name "Employee Last Name"
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;
-- Q.15
SELECT a.title "album title", ar.name "artist name"
FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id;
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
---------------EXTRA CREDIT-----------------

-- Q.1
SELECT name
FROM artist
ORDER BY name DESC LIMIT 10;
-- Q.2
SELECT *
FROM artist 
WHERE name LIKE 'Black%';
-- Q.3
SELECT *
FROM artist 
WHERE name LIKE '%Black%';
-- Q.4
SELECT birth_date 
FROM employee
ORDER BY birth_date DESC LIMIT 1;
-- Q.5
SELECT birth_date 
FROM employee
ORDER BY birth_date ASC LIMIT 1;
-- Q.6
SELECT COUNT(*) 
FROM invoice
WHERE billing_state IN('CA','TX','AZ');
-- Q.7
SELECT AVG(total)
FROM invoice;
-- Q.8
SELECT pt.track_id, p.name
FROM Playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE name = 'Music';
-- Q.9
SELECT t.name, pt.playlist_id
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE playlist_id = 5;
-- Q.10
SELECT t.name "track name" , p.name "playlist name"
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;
-- Q.11
SELECT t.name, a.title, g.name
FROM track t 
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name IN('Alternative','Punk');
