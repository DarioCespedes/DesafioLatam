
--Introduccion a subconsultas
SELECT * FROM empleados
WHERE sueldo <= (SELECT AVG(sueldo) FROM empleados)

--Subconsultas y where parte 1	
SELECT * FROM empleados
WHERE sueldo > (SELECT AVG(sueldo) FROM empleados WHERE departamento ="Finanzas")  

--Subconsultas y where parte 2	
SELECT * FROM empleados
WHERE sueldo > (SELECT MAX(sueldo) FROM empleados WHERE departamento = "Finanzas")

--Subconsultas y where parte 3	
SELECT * FROM notas
WHERE notas > (SELECT AVG(notas) FROM notas)

--Subconsultas con IN	
SELECT nombre FROM estudiantes
WHERE estudiante_id IN (SELECT estudiante_id FROM promedios WHERE promedio_notas > 50)

--Subconsultas con IN parte 2	
SELECT nombre AS nombres_seleccionados FROM libros
WHERE libro_id IN ( SELECT libro_id FROM valoraciones WHERE valoracion_promedio > 4)

--Subconsultas con IN parte 3	
SELECT nombre AS nombres_pacientes FROM pacientes
WHERE paciente_id IN ( SELECT paciente_id FROM consultas WHERE fecha_consulta < "2023-05-16")

--Subconsultas en el FROM	
SELECT AVG(total_venta) as promedio_ventas
FROM (
    SELECT empleado_id, SUM(monto) as total_venta
    FROM ventas
    GROUP BY empleado_id)


--Subconsultas en el FROM parte2	
SELECT AVG(total_goles) AS Promedio_goles
FROM ( SELECT SUM(goles) AS total_goles FROM goles GROUP BY nombre
)


