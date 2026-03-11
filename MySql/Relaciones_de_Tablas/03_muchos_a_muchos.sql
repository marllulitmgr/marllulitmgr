--- Tabla de idiomas
 CREATE TABLE languages (
	languages_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
   );

-- Tabla intermedia para la relación muchos a muchos entre users y languages
    CREATE TABLE users_languages (
		user_languages_id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT,
        languages_id INT,
        FOREIGN KEY(user_id) REFERENCES users(user_id),
        FOREIGN KEY(languages_id) REFERENCES languages(languages_id),
        UNIQUE(user_id, languages_id )
    );

    