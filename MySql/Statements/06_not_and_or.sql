-- Ordenar los registros donde el email no sea el de sara@gmail.com 
SELECT * FROM users WHERE NOT email='sara@gmail.com';

-- Ordenar los registros donde el email no sea el de sara@gmail.com  y que la edad sea 15
SELECT * FROM users WHERE NOT email='sara@gmail.com' AND age=15;