-- 1)
SELECT
	c.customer_id 'ID',
	SUM(p.amount) 'Rental_cost'
FROM
	`customer` c
INNER JOIN
	`payment` p
ON
	c.customer_id = p.customer_id
GROUP BY
	c.customer_id;

-- 2)
SELECT
	c.customer_id,
	COUNT(r.customer_id)
FROM
	`customer` c
INNER JOIN
	`rental` r
ON
	c.customer_id = r.customer_id
GROUP BY
	c.customer_id;

-- 3)
SELECT 
	amount
FROM
	`payment` p
ORDER BY
	amount DESC
LIMIT
	1;

-- 4)
SELECT
	amount
FROM
	`payment` p
ORDER BY
	amount
LIMIT
	1;

-- 5)
SELECT 
	CONCAT(c.first_name,' ',c.last_name)Customer,
	SUM(p.amount) Rental_cost
FROM 
	`payment` p
INNER JOIN 
	`customer` c
ON
	c.customer_id = p.customer_id
GROUP BY 
	Customer
HAVING
	Rental_cost > 100
ORDER BY
	Rental_cost;

-- 6)
SELECT 
	CONCAT(c.first_name,' ',c.last_name)Customer,
	COUNT(r.rental_id) Rental_qtd
FROM 
	`rental` r
INNER JOIN 
	`customer` c
ON
	c.customer_id = r.customer_id
GROUP BY 
	Customer
HAVING
	Rental_qtd > 10
ORDER BY
	Rental_qtd;
	
-- 7)
SELECT 
	CONCAT(c.first_name,' ',c.last_name) Customer,
	COUNT(r.rental_id) Rental_qtd,
	CASE
		WHEN COUNT(r.rental_id) > 30 THEN 'Super Cliente'
		WHEN COUNT(r.rental_id) <= 30 AND COUNT(r.rental_id) >= 15 THEN 'Cliente Fiel'
		ELSE 'Cliente Eventual'
	END Class
FROM 
	`rental` r
INNER JOIN 
	`customer` c
ON
	c.customer_id = r.customer_id
GROUP BY 
	Customer
ORDER BY
	Rental_qtd;

-- Customer Count
SELECT
	COUNT(customer_id)
FROM
	`customer`;