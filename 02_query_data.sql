SELECT * FROM datos;

SELECT COUNT(*) AS total_registros FROM datos;

SELECT categoria, AVG(valor) AS promedio_valor
FROM datos
GROUP BY categoria;
