--  SQL script to create a table 'persons3' with a UNIQUE constraint on the 'id' column
 CREATE TABLE persons3 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
      );