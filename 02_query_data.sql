CREATE DATABASE IF NOT EXISTS exercises;


--SELECT 
--    categoria,
--    SUM(valor) as suma_valor
--FROM datos
--GROUP BY categoria
--ORDER BY categoria;


--SELECT 
--    'suma' as medida,
--    SUM(CASE WHEN categoria = 'A' THEN valor ELSE 0 END) as A,
--    SUM(CASE WHEN categoria = 'B' THEN valor ELSE 0 END) as B,
--    SUM(CASE WHEN categoria = 'C' THEN valor ELSE 0 END) as C,
--    SUM(CASE WHEN categoria = 'D' THEN valor ELSE 0 END) as D
--FROM datos;


SELECT
    SUM(valor) FILTER (WHERE categoria = 'A') AS suma_A,
    SUM(valor) FILTER (WHERE categoria = 'B') AS suma_B,
    SUM(valor) FILTER (WHERE categoria = 'C') AS suma_C,
    SUM(valor) FILTER (WHERE categoria = 'D') AS suma_D
FROM
    datos;
