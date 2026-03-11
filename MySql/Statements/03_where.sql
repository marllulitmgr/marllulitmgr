-- Consultar usuarios con edad igual a 15

SELECT * FROM users WHERE age = 15;

-- Consultar solo los nombres con edad igual a 15

SELECT name FROM users WHERE age = 15;

-- Consultar solo las edades distintos a los de la edad de 15

SELECT DISTINCT age FROM users WHERE age = 15;

