--ADD
--- Agrega nueva columna surname a la tabla persons8
ALTER TABLE persons8
ADD surname VARCHAR(150)

--rename column
--  cambia el nombre de la columna surname a description en la tabla persons8
ALTER TABLE persons8
RENAME COLUMN surname TO description;

--modIfy column
--  modifica la columna description para que el campo tenga un tamaño de 150 caracteres en la tabla persons8
ALTER TABLE persons8
MODIFY COLUMN description VARCHAR(150);

--drop column
--  elimina la columna description de la tabla persons8
ALTER TABLE persons8
DROP COLUMN description;
