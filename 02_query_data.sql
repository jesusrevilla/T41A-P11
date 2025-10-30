SELECT
    categoria,
    COUNT(id) AS total_registros
FROM
    datos
GROUP BY
    categoria
ORDER BY
    categoria;
