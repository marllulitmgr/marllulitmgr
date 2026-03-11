--- Create a stored procedure to retrieve all users from the 'users' table
DELIMITER //

CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END//

DELIMITER ;

--- Call the stored procedure to see the results
CALL p_all_users();

--  Drop the stored procedure after use
DELIMITER //

CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
    SELECT * FROM users WHERE age = age_param;
END//

DELIMITER ;

--  Call the stored procedure with a specific age to see the results
CALL p_age_users(30);

--  Drop the stored procedure after use       
DROP PROCEDURE p_age_users;

