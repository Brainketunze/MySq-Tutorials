-- Select statements  -----

SELECT first_name, last_name, email
from customer;

select first_name
from customer;

--Using an asterisk (*) in the SELECT statement --
SELECT * FROM customer;

-- used the concatenation operator || operator --
SELECT 
     first_name || ' ' || last_name,
	 email
from 
     customer;
	 
	 
--Introduction to the PostgreSQL column aliases--

SELECT 
    first_name,
	last_name AS surname
FROM 
    customer;

---concatenates one or more strings with expression AS alias_name---.

SELECT
     first_name || ' ' || last_name AS full_name
FROM
    customer;

----The SELECT with ORDER BY statement returned ascending or descending order based on a sort expression--
--Ascending order--
SELECT 
     first_name,
	 last_name
FROM 
     customer
ORDER BY
      first_name ASC;
	  
--descending order statement---

SELECT 
     first_name,
	 last_name
FROM 
     customer
ORDER BY
      last_name DESC;
	  
---The LENGTH() function accepts a string and returns the length of that string.

SELECT 
     first_name,
	 LENGTH(first_name) len
FROM 
     customer
ORDER BY
        len DESC;
	  
--- DISTINCT_DEMO EXAMPLE---- 

CREATE TABLE distinct_demo (
	id serial NOT NULL PRIMARY KEY,
	bcolor VARCHAR,
	fcolor VARCHAR
);

---- Insert some rows into the demo --

INSERT INTO distinct_demo (bcolor, fcolor)
VALUES
	('red', 'red'),
	('red', 'red'),
	('red', NULL),
	(NULL, 'red'),
	('red', 'green'),
	('red', 'blue'),
	('green', 'red'),
	('green', 'blue'),
	('green', 'green'),
	('blue', 'red'),
	('blue', 'green'),
	('blue', 'blue');
	  
--query from distinct_demo ---

SELECT
	id,
	bcolor,
	fcolor
FROM
	distinct_demo ;
	
---PostgreSQL WHERE clause examples---

SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie';

-- Using WHERE clause with the AND operator example--

SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie' AND last_name = 'Rice';

---Using the WHERE clause with the OR operator example

SELECT first_name, last_name
FROM customer
WHERE last_name = 'Rodriguez' OR first_name = 'Adam';

----Using the WHERE clause with the LIKE operator example

select first_name, last_name
from customer
where first_name like 'Ann%';

---This example uses the LIMIT clause to get the first five films sorted by film_id:

SELECT film_id, title, release_year
FROM film
ORDER BY
film_id
LIMIT 5;