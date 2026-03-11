-- Create a view to display only adult users (age 18 and above)

CREATE VIEW v_adul_users AS
SELECT name, age
FROM users 
WHERE age >= 18;

-- ELIMINAR LA VISTA CREADA
DROP VIEW v_adul_users;