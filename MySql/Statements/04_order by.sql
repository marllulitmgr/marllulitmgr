-- Ordenar los registros por edad
SELECT * FROM users ORDER BY age;

-- Ordenar los registros por edad ASCENDENTE
SELECT * FROM users ORDER BY age ASC;

-- Ordenar los registros por edad DESCENDENTE
SELECT * FROM users ORDER BY age DESC;

-- Ordenar los registros por EL mismo email en forma dece DESCENDENTE
SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

-- Ordenar los registros por nombre donde tengan el mismo email en forma dece DESCENDENTE
SELECT name FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;