-- Consulta a multiples tablas 

--Múltiples tablas	
SELECT * FROM usuarios
	INNER JOIN notas
		ON email1= email2
		
--Múltiples tablas: utilizando atributo del mismo nombre	
SELECT * FROM usuarios u
	INNER JOIN notas n
		ON u.email = n.email
		
--Seleccionando algunos atributos	
SELECT usuarios.email, usuarios.nombre, usuarios.edad, notas.notas
FROM usuarios
	JOIN notas
		ON usuarios.email = notas.email;
		
--Join sin resultados	
SELECT usuarios.*, datos_contacto.telefono FROM usuarios
	JOIN datos_contacto
		ON usuarios.email = datos_contacto.email
		
--Orden de cláusulas	
SELECT * FROM usuarios
	JOIN notas
		ON usuarios.email = notas.email
WHERE usuarios.email = "juan.perez@example.com"

--Agrupar por múltiples columnas	
SELECT nombre, SUM (v.cantidad) AS total_vendido FROM productos p
	JOIN ventas v
		ON p.productoid = v.productoid
GROUP BY p.productoid
ORDER BY 2 DESC
LIMIT 1