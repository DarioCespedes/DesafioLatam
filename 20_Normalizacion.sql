--Introducción a la primera forma normal

DELETE FROM personas WHERE
nombre="María" OR nombre="Pedro";
DELETE FROM personas WHERE 
nombre="Juan" AND apellido="Pérez" AND estado_civil!="Divorciado"

--Conviertiendo a 1fn

CREATE TABLE productos2 (id INTEGER PRIMARY KEY AUTOINCREMENT,producto TEXT,categoría TEXT,precio REAL);
INSERT INTO productos2 (producto,categoría,precio) SELECT producto,categoría,precio FROM productos;
SELECT * FROM productos2;
DROP TABLE productos;
ALTER TABLE productos2 RENAME TO productos; 

--Grupos repetitivos

CREATE TABLE empleados (nombre TEXT,apellido TEXT,id_proyecto INTEGER);
INSERT INTO empleados VALUES ("Juan","Pérez",1),("Juan","Pérez",2),("Juan","Pérez",3);
CREATE TABLE proyectos (id_empleado INTEGER, proyecto INTEGER);
INSERT INTO proyectos VALUES (1,1),(1,2),(1,3);
SELECT * FROM empleados

--Grupos repetitivos parte 2 

SELECT d.nombre_departamento, (COUNT(p.departamento_id)) AS cantidad_personas FROM departamentos d
    INNER JOIN personas p 
        ON d.id = p.departamento_id
GROUP BY d.nombre_departamento

--Dependencias parciales

SELECT e.nombre_del_estudiante,  c.nombre_del_curso,n.nota  FROM estudiantes e
    JOIN notas n 
        ON e.id_de_estudiante=n.id_de_estudiante 
    JOIN cursos c 
        ON n.id_de_curso = c.id_de_curso
        
--Dependencias transitivas

CREATE TABLE paises (id INTEGER PRIMARY KEY AUTOINCREMENT, pais TEXT);
CREATE TABLE musicos (id INTEGER PRIMARY KEY AUTOINCREMENT, musico TEXT, edad_musico INTEGER, pais_id REFERENCES paises(id));
INSERT INTO paises (pais) VALUES ("Estados Unidos"),("Brasil"),("Francia"),("India"),("Corea del Sur");
INSERT INTO musicos (pais_id, musico, edad_musico) VALUES (1, "Beyoncé", 42), (2, "Gilberto Gil", 81), (3, "David Guetta", 56), (4, "A. R. Rahman", 57), (5, "RM", 29); 

