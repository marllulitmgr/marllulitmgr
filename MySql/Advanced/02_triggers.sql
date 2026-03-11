
--  MySQL Triggers
CREATE TABLE `hello_mysql`.`email_history` (
  `id_email_history` INT NOT NULL,
  `user_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`id_email_history`),
  UNIQUE INDEX `id_email_history_UNIQUE` (`id_email_history` ASC) VISIBLE);

    
ALTER TABLE `hello_mysql`.`email_history` 
CHANGE COLUMN `id_email_history` `id_email_history` INT NOT NULL AUTO_INCREMENT ;

--  Crear un trigger llamado tg_email que se ejecutará después de cada actualización en la tabla users. El trigger verificará si el campo email ha cambiado y, si es así, insertará un nuevo registro en la tabla email_history con el user_id y el email anterior.

DELIMITER //

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END//

DELIMITER ;


--  Actualizar el email del usuario con user_id 1 para activar el trigger y registrar el cambio en la tabla email_history.      
UPDATE users SET email = 'mouredev@gmail.com' WHERE user_id = 1

-- ELIMINAR EL TRIGGER CREADO          
DROP TRIGGER tg_email