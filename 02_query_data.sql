\copy datos FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;

-- Ejemplo 1: Promedio del valor por categoría
SELECT categoria, ROUND(AVG(valor), 2) AS promedio_valor
FROM datos
GROUP BY categoria
ORDER BY categoria;

-- Ejemplo 2: Máximo y mínimo por categoría
SELECT categoria,
       MAX(valor) AS valor_maximo,
       MIN(valor) AS valor_minimo
FROM datos
GROUP BY categoria
ORDER BY categoria;

-- Ejemplo 3: Total de registros por mes
SELECT DATE_TRUNC('month', fecha) AS mes, COUNT(*) AS cantidad
FROM datos
GROUP BY mes
ORDER BY mes;
