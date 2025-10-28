SELECT categoria, SUM(valor) AS suma_total
FROM datos
GROUP BY categoria
ORDER BY categoria;
