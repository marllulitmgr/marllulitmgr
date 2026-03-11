--- Find the maximum age for each age group in the users table
SELECT MAX(age) FROM users GROUP BY age; 

--  Find the count of users for each age group in the users table
SELECT COUNT(age) FROM users GROUP BY age;

--- Find the count of users for each age group along with the age
SELECT COUNT(age), age FROM users GROUP BY age; 

--  Find the count of users for each age group along with the age, ordered by age in ascending order
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;

-- Find the count of users for each age group where age is greater than 15, along with the age, ordered by age in ascending order
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC;

