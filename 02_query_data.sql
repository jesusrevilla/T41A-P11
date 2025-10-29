\copy datos FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;

SELECT categoria, SUM(valor) AS total_valor
FROM datos
GROUP BY categoria
ORDER BY categoria;

SELECT
    SUM(valor) FILTER (WHERE categoria = 'A') AS A,
    SUM(valor) FILTER (WHERE categoria = 'B') AS B,
    SUM(valor) FILTER (WHERE categoria = 'C') AS C,
    SUM(valor) FILTER (WHERE categoria = 'D') AS D
FROM datos;
