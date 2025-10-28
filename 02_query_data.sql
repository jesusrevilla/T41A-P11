SELECT
    SUM(valor) FILTER (WHERE categoria = 'A') AS suma_A,
    SUM(valor) FILTER (WHERE categoria = 'B') AS suma_B,
    SUM(valor) FILTER (WHERE categoria = 'C') AS suma_C,
    SUM(valor) FILTER (WHERE categoria = 'D') AS suma_D
FROM
    datos;
\copy datos(id, categoria, valor, fecha) FROM 'datos_agregacion_transformacion.csv' WITH (FORMAT CSV, HEADER TRUE);
