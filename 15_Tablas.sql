-- Tablas

--Nuestra primera tabla	
CREATE TABLE alumnos (nombre TEXT);
INSERT INTO alumnos VALUES ("Lucía");

--Una tabla con múltiples columnas	
CREATE TABLE alumnos (nombre TEXT, apellido TEXT, telefono TEXT);
INSERT INTO alumnos VALUES ("Lucía", "Sánchez", "12345678")

--Tablas con distintos tipos de datos	
CREATE TABLE usuarios (nombre TEXT, apellido TEXT, edad INTEGER, activo BOOLEAN, nacimiento DATE);
INSERT INTO usuarios VALUES ("Lucía", "Sánchez", 25, TRUE, "1996-01-01");

--Tipos reales	
CREATE TABLE temperaturas (temperatura_celsius REAL);
INSERT INTO temperaturas VALUES
	(23.4), (26.5), (27.1)

--Borrar un tabla	
DROP TABLE temperaturas;
CREATE TABLE temperaturas (ciudad TEXT, temperatura REAL, fecha DATE);
INSERT INTO temperaturas VALUES
	("Buenos Aires", 20.0, '2024-01-01'),
	("Buenos Aires", 21.0, '2024-01-02'),
	("Santiago", 22.0, '2024-01-01'),
	("Santiago", 23.0, '2024-01-02')

--Actualizar una tabla	
ALTER TABLE productos ADD COLUMN descripcion TEXT;
INSERT INTO productos VALUES
	("Camisa", 1000.00, "Camisa de manga corta"),
	("Pantalón", 2000.00, "Pantalón de mezclilla"),
	("Camisa XL", 1000.00, "Camisa de manga larga")