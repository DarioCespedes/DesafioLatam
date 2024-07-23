--Tipos de JOINS

--Inner Join	
SELECT * FROM usuarios u
	JOIN notas n
		ON u.email = n.email

--Inner Join con diagrama de venn	
SELECT a.nombre, p.titulo  FROM actores a
	JOIN peliculas p
		ON a.actor_id = p.actor_id

--Left Join	
SELECT * FROM empleados e
	LEFT JOIN departamentos d
		ON e.email = d.email

--Left Join en diagrama de venn	
SELECT pn.profesion, ps.nombre FROM profesion pn
	LEFT JOIN personas ps
		ON ps.profesion_id= pn.id

--Right Join	
SELECT * FROM empleados e
	RIGHT JOIN departamentos dp
		ON dp.email = e.email

--Left Join y Right Join	
SELECT * FROM productos p
	LEFT JOIN precios ps
		ON p.producto_id = ps.producto_id 

--Identificando tipos de join	
SELECT a.nombre AS nombre_autor, l.titulo AS titulo_libro FROM autores a
	JOIN libros l
		ON a.id = l.id_autor

--Identificando tipos de join parte 2	
SELECT e.nombre AS nombre_empleado, p.nombre_proyecto FROM empleados e
	LEFT JOIN proyectos p
		ON e.id_proyecto = p.id


--Identificando tipos de join parte 3
SELECT  e.nombre AS nombre_empleado, p.nombre_proyecto AS nombre_proyecto FROM proyectos p
    LEFT JOIN empleados e 
        ON p.id = e.id_proyecto
        
--Full outer join
SELECT * FROM empleados e 
    LEFT JOIN departamentos d 
        ON e.id_departamento = d.id_departamento
		
UNION 

SELECT * FROM empleados e 
    RIGHT JOIN departamentos d 
        ON e.id_departamento = d.id_departamento
        
-- Full outer join parte 2
SELECT * FROM clientes c 
    LEFT JOIN pedidos p 
        ON c.id_cliente = p.id_cliente 

UNION 

SELECT * FROM clientes c 
    RIGHT JOIN pedidos p 
        ON c.id_cliente = p.id_cliente 
        
--Left excluding join
SELECT * FROM personas p 
    LEFT JOIN profesion pp 
        ON p.profesion_id = pp.id
WHERE profesion_id IS NULL

--Right excluding join
SELECT * FROM cursos c 
    RIGHT JOIN docentes d 
        ON c.docente_id = d.id 
WHERE docente_id IS NULL

--Full outer excluding join
SELECT e.id_empleado, e.nombre, e.id_departamento, NULL AS departamento
FROM empleados e
	LEFT JOIN departamentos d ON e.id_departamento = d.id_departamento
WHERE d.id_departamento IS NULL

UNION

SELECT NULL AS id_empleado, NULL AS nombre, d.id_departamento, d.departamento
FROM empleados e
	RIGHT JOIN departamentos d ON e.id_departamento = d.id_departamento
WHERE e.id_departamento IS NULL

--Natural Join
SELECT nombre, cantidad, fecha FROM productos 
    NATURAL JOIN ventas
    
--Natural Left Join
SELECT nombre, curso, fecha FROM estudiantes 
    NATURAL LEFT JOIN inscripciones
    
--Self Join
SELECT c.nombre AS nombre_cliente, c2.nombre AS  nombre_cliente_referente FROM clientes c 
    LEFT JOIN clientes c2 
        ON c2.id_cliente = c.id_cliente_referente
        
-- Self Join parte 2
SELECT a.nombre AS nombre, a2.nombre AS nombre_amigo_conectado FROM amigos  a
    INNER JOIN amigos a2
        ON a.id_amigo_conectado = a2.id_amigo
        
-- Cross Join
SELECT * FROM numeros
    CROSS JOIN pintas
ORDER BY 1,2

--Join con funciones agregadas
SELECT u.email, COUNT(n.email) AS cantidad_notas
FROM usuarios u
	LEFT JOIN notas n ON u.email = n.email
GROUP BY u.email
ORDER BY
CASE WHEN cantidad_notas = 0 THEN 1 ELSE 0 END, cantidad_notas ASC