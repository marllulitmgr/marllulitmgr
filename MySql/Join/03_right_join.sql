--
-- Right Join Example: Retrieve all records from the 'dni' table
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;


--- Right Join with specific fields
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

--- Right Join with three tables
SELECT users.name, languages.name
From users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.languages_id = languages.languages_id;

