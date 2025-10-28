
/copy  datos FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;

CREATE EXTENSION IF NOT EXISTS tablefunc;
SELECT *
FROM crosstab(
    SELECT SUM(valor)
    FROM datos
    GROUP BY categoria;
) AS ct(A NUMERIC, B NUMERIC, C NUMERIC, D NUMERIC);



