-- SQL Case Statement Example
-- This query selects all columns from the 'users' table and adds a new column 'agetext'
-- that indicates whether the user is a minor or an adult based on their age.   
SELECT *,
CASE
	WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;


-- Another Example: This query adds a new column that indicates if the user is an adult (TRUE) or not (FALSE).

SELECT *,
CASE
	WHEN age > 17 THEN TRUE
    ELSE FALSE
END AS '¿Es mayor de Edad?'
FROM users;

-- Extended Example: This query adds a new column that provides three different messages based on the user's age.

SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de Edad?'
FROM users;

