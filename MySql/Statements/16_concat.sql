--  - SQL query to concatenate name and surname into a full name
SELECT CONCAT(name, surname) AS 'Nombre Completo' FROM users; 

--  - SQL query to concatenate labels with name and surname
SELECT CONCAT('Nombre: ', name, '  ', 'Apellido: ', surname) FROM users; 

--  - SQL query to concatenate labels with name and surname with an alias
SELECT CONCAT('Nombre: ', name, '  ', 'Apellido: ', surname) AS 'Nombre Completo'FROM users; 




