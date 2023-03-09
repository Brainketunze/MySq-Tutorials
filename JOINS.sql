---- Joints examples

---INNER JOIN
----customer with address

SELECT c.customer_id,c.first_name, c.last_name,a.address,a.district,a.city_id
FROM customer as c
INNER JOIN address as a
ON c.address_id = a.address_id

SELECT c.customer_id,c.first_name, c.last_name,a.address,a.district,a.city_id
FROM customer as c
INNER JOIN address as a
ON c.address_id = a.address_id

---joining address with city

SELECT a.address, a.district, a.postal_code, c.city, c.country_id
FROM  address as a
INNER JOIN city as c
ON a.city_id = c.city_id


---joining city with country

SELECT  c.country, c1.city
FROM country as c
INNER JOIN city as c1
ON c.country_id = c1.country_id

SELECT c.customer_id,c.first_name, c.last_name,a.address,a.district,c1.city, c2.country
FROM customer as c
INNER JOIN address as a
ON c.address_id = a.address_id INNER JOIN city as c1
ON a.city_id = c1.city_id INNER JOIN country as c2
ON c1.country_id = c2.country_id

-----joining staff with payment

SELECT c.staff_id, c.first_name, c.last_name, c.store_id ,p.amount, p.customer_id, p.rental_id, p.payment_date
FROM staff as c
INNER JOIN payment as p
ON c.staff_id = p.staff_id

---- Joining payment with rental --

SELECT p.customer_id, p.staff_id, p.payment_date, a.rental_date, a.return_date, a.inventory_id
FROM payment as p
INNER JOIN rental as a
ON p.rental_id = a.rental_id

---- Joining rental with inventory--

SELECT t.rental_date, t.last_update, t.staff_id, k.film_id, k.store_id, k.last_update
FROM rental as t
INNER JOIN inventory as k
ON t.inventory_id = k.inventory_id

--- Joing the three table ---

SELECT c.staff_id, c.first_name, c.last_name, c.store_id, c.username, c.email, c.active, c.password,
p.amount, p.customer_id, p.rental_id, p.payment_date, p.staff_id
FROM staff as c
INNER JOIN payment as p
ON c.staff_id = p.staff_id INNER JOIN rental as a
ON p.rental_id = a.rental_id INNER JOIN inventory as k
ON a.inventory_id = k.inventory_id



























