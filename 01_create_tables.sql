CREATE TABLE IF NOT EXISTS datos (
        id INTEGER PRIMARY KEY,
        categoria TEXT,
        valor NUMERIC,
        fecha DATE
    );

\copy datos(id, categoria, valor, fecha) FROM 'datos_agregacion_transformacion.csv' WITH (FORMAT CSV, HEADER TRUE);
