--- Inner Join Examples

SELECT * FROM users
INNER JOIN dni

--Inner Join donde traigo los dni de un usuario en particular
WHERE users.user_id = 5;
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

---Inner Join usando la sintaxis JOIN ... ON
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

---Inner Join con filtro y ordenamiento
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;

---Me traigo el campo name y dni_number de los usuarios con su dni
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;

---Inner Join con dos tablas
SELECT * FROM users
JOIN companies
ON users.companies_id = companies.companies_id;

--  Inner Join para traer el nombre de la compañia junto con el nombre del usuario
SELECT companies.name, users.name FROM companies
JOIN users
ON companies.companies_id = users.companies_id;

--- Inner Join con tres tablas
SELECT users.name, languages.name
From users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.languages_id = languages.languages_id;

