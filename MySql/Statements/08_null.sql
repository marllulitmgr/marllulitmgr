-- Ordenar los registros donde el email es NULL
SELECT * FROM users WHERE 	email is NULL;

-- Ordenar los registros donde el email no es NULL
SELECT * FROM users WHERE 	email is NOT NULL;


-- Ordenar los registros donde el email no es NULL y la edad es 15
SELECT * FROM users WHERE 	email is NOT NULL AND age = 15;


