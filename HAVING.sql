-- 10 HAVING

--Having y cuenta 
SELECT COUNT(nombre) AS cantidad_de_usuarios, departamento FROM empleados
GROUP BY 2
HAVING cantidad_de_usuarios > 1 

--Having y promedio  
SELECT email, AVG(notas) AS promedio_notas FROM notas
GROUP BY 1
HAVING promedio_notas >= 50 
--Having y order  
SELECT producto, SUM(cantidad) AS cantidad_total FROM ventas
GROUP BY 1
HAVING cantidad_total > 1000
ORDER BY cantidad_total DESC 
--Having y order 2  
SELECT departamento, AVG(salario) AS Salario_Promedio FROM empleados
GROUP BY departamento
HAVING Salario_Promedio > 3000
ORDER BY 2 DESC 