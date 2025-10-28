
--COPY datos (id, categoria, valor, fecha)
--FROM 'datos_agregacion_transformacion.csv'
--DELIMITER ','
--CSV HEADER;

\copy datos FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;


SELECT
    SUM(CASE WHEN categoria = 'A' THEN valor ELSE 0 END) AS A,
    SUM(CASE WHEN categoria = 'B' THEN valor ELSE 0 END) AS B,
    SUM(CASE WHEN categoria = 'C' THEN valor ELSE 0 END) AS C,
    SUM(CASE WHEN categoria = 'D' THEN valor ELSE 0 END) AS D
FROM datos;
