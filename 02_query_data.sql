
COPY datos (id, categoria, valor, fecha)
FROM 'datos_agregacion_transformacion.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM crosstab(
  'SELECT categoria, SUM(valor) AS valor FROM datos GROUP BY categoria',
  'SELECT DISTINCT categoria, SUM(valor) FROM datos ORDER BY categoria'
) AS ct (id_fila INT, columna_1 VARCHAR, columna_2 VARCHAR);
