-- Ordenar los registros donde el email contenga 'gmail' 
SELECT * FROM users WHERE email LIKE '%gmail.com';

-- Ordenar los registros donde el email contenga 'sara' 
SELECT * FROM users WHERE email LIKE 'sara%';

-- Ordenar los registros donde el email '@' 
SELECT * FROM users WHERE email LIKE '%@%'; 

-- Ordenar los registros donde el email no sea el de sara@gmail.com  O que la edad sea 15
SELECT * FROM users WHERE NOT email='sara@gmail.com' or age=15;