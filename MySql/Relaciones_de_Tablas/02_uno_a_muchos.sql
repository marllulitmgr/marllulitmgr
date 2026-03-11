-- creamos la tabla companies para la relación uno a muchos con la tabla employees
 CREATE TABLE companies (
	companies_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
   );


-- agregamos la columna companies_id a la tabla users para establecer la relación uno a muchos
ALTER TABLE users
ADD companies_id VARCHAR(100);
   
-- establecemos la clave foránea entre users y companies
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(companies_id) REFERENCES companies(companies_id);

