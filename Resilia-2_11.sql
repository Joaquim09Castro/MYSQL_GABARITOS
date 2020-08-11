-- DISTINCT
SELECT 
	DISTINCT `first_name`
FROM
	`actor`;
	
-- LIMIT
SELECT 
	*
FROM
	`film`
LIMIT 30;

-- ORDER
SELECT
	*
FROM
	`actor`
ORDER BY 
	`first_name` DESC
LIMIT 50;