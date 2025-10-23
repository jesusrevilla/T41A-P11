SELECT 
    categoria,
    SUM(CASE WHEN categoria = 'A' THEN valor ELSE 0 END) AS ValorA, 
    SUM(CASE WHEN categoria = 'B' THEN valor ELSE 0 END) AS ValorB,
    SUM(CASE WHEN categoria = 'C' THEN valor ELSE 0 END) AS ValorC
    SUM(CASE WHEN categoria = 'D' THEN valor ELSE 0 END) AS ValorD, 
FROM 
    datos
GROUP BY 
    categoria
ORDER BY 
    categoria; 
