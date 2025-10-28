SELECT
    fecha,
    MAX(CASE WHEN categoria = 'A' THEN valor END) AS A,
    MAX(CASE WHEN categoria = 'B' THEN valor END) AS B,
    MAX(CASE WHEN categoria = 'C' THEN valor END) AS C,
    MAX(CASE WHEN categoria = 'D' THEN valor END) AS D
FROM datos
GROUP BY fecha
ORDER BY fecha;

