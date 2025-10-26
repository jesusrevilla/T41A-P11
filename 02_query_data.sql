--Ver los primeros registros
SELECT * FROM datos LIMIT 10;

--Promedio de valor por categoría
SELECT categoria, ROUND(AVG(valor), 2) AS promedio_valor
FROM datos
GROUP BY categoria;

--Total general
SELECT SUM(valor) AS total_general FROM datos;

--Cantidad de registros por categoría
SELECT categoria, COUNT(*) AS total_registros
FROM datos
GROUP BY categoria;

