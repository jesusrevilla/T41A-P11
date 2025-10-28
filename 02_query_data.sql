\copy datos FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;

SELECT categoria, ROUND(AVG(valor), 2) AS promedio_valor
FROM datos
GROUP BY categoria
ORDER BY categoria;

SELECT categoria,
       MAX(valor) AS valor_maximo,
       MIN(valor) AS valor_minimo
FROM datos
GROUP BY categoria
ORDER BY categoria;

SELECT DATE_TRUNC('month', fecha) AS mes, COUNT(*) AS cantidad
FROM datos
GROUP BY mes
ORDER BY mes;
