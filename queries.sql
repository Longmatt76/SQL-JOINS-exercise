-- write your queries here

--query 1--
joins_exercise=# SELECT * FROM owners
LEFT JOIN vehicles
ON owners.id = vehicles.owner_id;

--query 2--
joins_exercise=# SELECT first_name, last_name, COUNT(owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name)
ORDER BY first_name;

--query 3--
joins_exercise=# SELECT first_name, last_name, AVG(price) AS average_price, COUNT(owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name)
HAVING AVG(price) > 10000 AND COUNT(owner_id) > 1
ORDER BY first_name DESC;