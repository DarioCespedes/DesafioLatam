--Restricciones

--Introducción a restricciones	
CREATE TABLE empleados ( nombre TEXT NOT NULL, apellido TEXT );
INSERT INTO empleados VALUES("Pedro","Pérez")

--Agregar una restricción a una tabla existente	
--Se crea una nueva tabla
CREATE TABLE patentes2 (patente TEXT NOT NULL);
--Insertar los valores a la nueva tabla
INSERT INTO patentes2 (patente) SELECT patente FROM patentes;
--Borrar tabla antigua
DROP TABLE patentes;
--Cambiar nombre a tabla nueva
ALTER TABLE patentes2 RENAME TO patentes;

--Borrar una restricción	
--Se crea una nueva tabla
CREATE TABLE personas2 (nombre TEXT, apellido TEXT, edad INTEGER);
--Insertar valores
INSERT INTO personas2 (nombre, apellido, edad)
SELECT nombre, apellido, edad FROM personas;
--Borrar tabla
DROP TABLE personas;
--Cambiar nombre a tabla
ALTER TABLE personas2 RENAME TO personas;

--Restricción unique	
CREATE TABLE productos ( nombre text NOT NULL, precio REAL NOT NULL, codigo UNIQUE );
INSERT INTO productos (nombre, codigo, precio) VALUES
("Camisa", "CAM-001",1000.00),
("Pantalón", "PAN-001", 2000.00),
("Camisa XL", "CAM-002", 1000.00);

--Restricciones con check	
CREATE TABLE productos ( nombre TEXT NOT NULL,precio REAL NOT NULL, stock INT CHECK (stock >= 0));
INSERT INTO productos VALUES
("Camisa",1000.00, 10),
("Pantalón", 2000.00, 5),
("Camisa XL", 1000.00, 3);

--Clave primaria	
CREATE TABLE posts ( id INT PRIMARY KEY, title TEXT, content TEXT);
INSERT INTO posts VALUES
(1,"Introducción","¡Bienvenido al mundo de la programación!"),
(2,"Primeros Pasos", "Sumérgete en los conceptos básicos de la programación."),
(3, "Temas Avanzados", "Explora conceptos y técnicas avanzadas en programación.");

--Autoincremental	
CREATE TABLE usuarios (id INTEGER PRIMARY KEY, nombre TEXT NOT NULL, fecha_creacion DATE);
INSERT INTO usuarios (nombre,fecha_creacion) VALUES
("Ana", "2024-01-01"),
("Gonzalo", "2024-01-02"),
("Juan","2024-01-03"),
("María","2024-01-04")

--Autoincremental parte 2	
CREATE TABLE transacciones (id INTEGER PRIMARY KEY, monto REAL NOT NULL, fecha DATE);
INSERT INTO transacciones (monto,fecha) VALUES
(1000.00,"2024-01-01"),
(2000.00,"2024-01-02"),
(3000.00,"2024-01-03");
INSERT INTO transacciones VALUES
(10,4000.00,"2024-01-04");
INSERT INTO transacciones (monto,fecha) VALUES
(5000.00,"2024-01-05");

--Primary key y texto	
CREATE TABLE personas ( email TEXT PRIMARY KEY NOT NULL, nombre TEXT, apellido TEXT);
INSERT INTO personas VALUES
("example1@example.com", "John", "Doe"),
("example2@example.com", "Jane", "Smith"),
("example3@example.com", "Mike","Johnson");

--Clave Foránea	
ALTER TABLE articulos ADD COLUMN categoria_id INTEGER REFERENCES categorias(id)

--Pk y fks	
CREATE TABLE transacciones2 ( id INTEGER PRIMARY KEY, monto REAL, usuario_id INTEGER);
INSERT INTO transacciones2 SELECT * FROM transacciones;
DROP TABLE transacciones;
ALTER TABLE transacciones2 RENAME TO transacciones;
UPDATE transacciones SET usuario_id =3



