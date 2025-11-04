WITH sumas AS (
    SELECT 
        categoria,
        SUM(valor) AS total_valor
    FROM datos
    GROUP BY categoria
)

SELECT
    MAX(CASE WHEN categoria = 'A' THEN total_valor END) AS A,
    MAX(CASE WHEN categoria = 'B' THEN total_valor END) AS B,
    MAX(CASE WHEN categoria = 'C' THEN total_valor END) AS C,
    MAX(CASE WHEN categoria = 'D' THEN total_valor END) AS D
FROM sumas;
