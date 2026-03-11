--Relación de tabla uno a uno entre las tablas users y dni
CREATE TABLE dni (
	dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );

    