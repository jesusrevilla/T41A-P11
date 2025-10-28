COPY datos(id, categoria, valor, fecha)
FROM 'datos_agregacion_transformacion.csv'
DELIMITER ','
CSV HEADER;
--sube archivo
