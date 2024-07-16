--Introducción a la cláusula unión de SQL	
SELECT nombre AS nombres FROM estudiantes
UNION
SELECT nombre FROM profesores

--Eliminar duplicados con union	
SELECT email AS correos_unicos FROM usuarios
UNION
SELECT email FROM clientes

--Union vs Union all	
SELECT * FROM empleados1
UNION ALL
SELECT * FROM empleados2

--Introducción a intersección	
SELECT cliente FROM lista1
INTERSECT
SELECT cliente FROM lista2

--El operador Except	
SELECT nombre FROM empleados
EXCEPT
SELECT nombre FROM gerentes