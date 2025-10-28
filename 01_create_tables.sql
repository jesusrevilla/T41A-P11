CREATE TABLE IF NOT EXISTS datos (
        id INTEGER PRIMARY KEY,
        categoria TEXT,
        valor NUMERIC,
        fecha DATE
    );


--\copy datos FROM 'customers.csv' DELIMITER ',' CSV HEADER
