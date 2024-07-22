--18 Cardinalidad 

--Relaciones 1 a 1	
SELECT * FROM vehiculos v
JOIN matriculas m
ON v.id=m.id

--Relaciones 1 a n	 
SELECT * FROM paises p
JOIN continentes c
ON p.continente_id = c.continente_id

--Relaciones n a n	
SELECT * FROM objetos o
JOIN objetos_colores oc
ON o.objeto_id = oc.objeto_id
JOIN colores c
ON oc.color_id = c.color_id

--Características de la tabla intermedia	
INSERT INTO profesores_alumnos (profesor_id,alumno_id) VALUES
(1,2),
(2,3);

SELECT * FROM profesores p
JOIN profesores_alumnos pa
ON p.profesor_id = pa.profesor_id
JOIN alumnos a
ON pa.alumno_id = a.alumno_id

--Sin restricción de unicidad	
SELECT u.usuario_id, l.libro_id, COUNT(*) AS veces FROM usuarios u
JOIN pedidos p
ON u.usuario_id = p.usuario_id
JOIN libros l
ON p.libro_id = l.libro_id
GROUP BY u.usuario_id, l.libro_id
HAVING veces > 1

--Con restricción de unicidad	
SELECT e.nombre, e.puesto, COUNT(*) AS cantidad_proyectos FROM empleados e
JOIN empleados_proyectos ep
ON e.id = ep.empleado_id
JOIN proyectos p
ON ep.proyecto_id = p.id
GROUP BY e.nombre,e.puesto