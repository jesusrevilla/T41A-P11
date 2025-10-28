CREATE TABLE IF NOT EXISTS datos (
        id INTEGER PRIMARY KEY,
        categoria TEXT,
        valor NUMERIC,
        fecha DATE
    );
\copy customers FROM 'datos_agregacion_transformacion.csv' DELIMITER ',' CSV HEADER;

