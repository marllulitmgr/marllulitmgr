--- Example SQL query using IFNULL to handle NULL values
    
SELECT name, surname, IFNULL(age, 0) AS age FROM users

