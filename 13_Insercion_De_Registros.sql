--13 	Insercion de registros

--Añadir un registro en una tabla	
INSERT INTO usuarios VALUES(7, "Lucía", "Sánchez", "luciasanchez@outlook.com", "555-5555")

--Añadir un registro en una tabla parte 2	
INSERT INTO productos VALUES (7, "Bolso", 1000, 10)

--Especificando valores nulos	
INSERT INTO productos VALUES (7, "Bolso", 1000, NULL)

--Añadir un registro especificando columnas	
INSERT INTO usuarios (id,apellido,nombre,telefono,email) VALUES (7, "Sánchez", "Lucía","333-3333", "luciasanchez@outlook.com")

--Añadir un registro especificando solo algunas columnas	
INSERT INTO productos (nombre,stock) VALUES ("Bolso", 10)

--Añadir fecha de hoy a un registro	
INSERT INTO productos (nombre,stock,fecha) VALUES ("Bolso", 10, CURRENT_DATE)

--Añadiendo fecha y hora al insertar	
INSERT INTO productos (nombre, stock, fecha) VALUES ("Bolso", 10, "2023-01-01")

--Añadir múltiples valores	
INSERT INTO ventas (producto, cantidad, precio) VALUES
("Gorro", 5, 1000),
("Camiseta", 10, 500),
("Pantalón", 8, 1500);

--Crear un registro con un campo autoincremental	
INSERT INTO empleados (nombre, apellido) VALUES ("Jane", "Smith")

--Añadir un registro asumiendo un valor por defecto	
INSERT INTO usuarios (nombre, apellido,email) VALUES ("Lucía", "Sánchez", "luciasanchez@outlook.com")