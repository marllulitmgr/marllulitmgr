-- Crear un indice en el campo name de la tabla users para mejorar el rendimiento de las consultas que buscan por ese campo.
CREATE INDEX idx_name ON users(name);

--  Crear indice en el campo name para que sea unico, lo que significa que no se permitirán valores duplicados en esa columna.
CREATE UNIQUE INDEX idx_name ON users(name);

-- Crear un indice unico en los campos name y surname de la tabla users para garantizar que no haya combinaciones duplicadas de esos campos.
CREATE UNIQUE INDEX idx_name_surname ON users(name, sur name); 

-- Borrar el indice creado en el campo name de la tabla users.
DROP INDEX idx_name ON users;