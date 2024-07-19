--14 Borrado y modificacion de registros

--Borrar todos los registros de una tabla	
DELETE FROM productos

--Borrar un registro con where
DELETE FROM usuarios WHERE id=2

--Editar registros	
UPDATE usuarios SET registrado = TRUE

--Editar todos los registros utilizando
where	UPDATE usuarios SET telefono = "123-456"
WHERE id=4

--Editar múltiples columnas
UPDATE posts
SET
titulo = "Aprendiendo SQL",
contenido = "SQL es un lenguaje de programación para gestionar bases de datos relacionales"
WHERE
id=1