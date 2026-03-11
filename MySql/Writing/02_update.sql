--- 02_update.sql
UPDATE users SET age = '21' WHERE user_id = 11

UPDATE users SET age = 20, init_date = '2023-10-12'  WHERE user_id = 11

--Modificar las columnas user_id y languages_id para que no acepten valores nulos

ALTER TABLE `hello_mysql`.`users_languages` 
DROP FOREIGN KEY `users_languages_ibfk_1`,
DROP FOREIGN KEY `users_languages_ibfk_2`;
ALTER TABLE `hello_mysql`.`users_languages` 
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `languages_id` `languages_id` INT NOT NULL ;
ALTER TABLE `hello_mysql`.`users_languages` 
ADD CONSTRAINT `users_languages_ibfk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `hello_mysql`.`users` (`user_id`),
ADD CONSTRAINT `users_languages_ibfk_2`
  FOREIGN KEY (`languages_id`)
  REFERENCES `hello_mysql`.`languages` (`languages_id`);




