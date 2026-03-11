--  LEFT JOIN: Devuelve todas las filas de la tabla de la izquierda (users) y las filas coincidentes de la tabla de la derecha (dni). Si no hay coincidencia, se rellenan con NULL.
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--- LEFT JOIN con filtro
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--- LEFT JOIN con tres tablas
SELECT users.name, languages.name
From users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.languages_id = languages.languages_id;
