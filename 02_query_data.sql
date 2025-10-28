CREATE TEMP TABLE datos_csv (
    id INTEGER,
    categoria TEXT,
    valor NUMERIC,
    fecha DATE
);

\copy datos_csv FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;

INSERT INTO datos (id, categoria, valor, fecha)
SELECT id, categoria, valor, fecha
FROM datos_csv;

SELECT COUNT(*) AS total_registros FROM datos;
SELECT * FROM datos LIMIT 10;
