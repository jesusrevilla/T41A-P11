COPY ejemplo(nombre, edad, ciudad)
FROM '/datos_agregacion_transformacion.csv'
DELIMITER ','
CSV HEADER;
