SELECT
    categoria,
    SUM(valor) AS suma_total
FROM
    datos 
GROUP BY
    categoria;


CREATE EXTENSION IF NOT EXISTS tablefunc;
    SELECT * FROM crosstab(
    'SELECT
        fecha,      
        categoria,  
        valor       
     FROM datos
     ORDER BY 1,2', 
    'VALUES (''A''), (''B''), (''C''), (''D'')'
)

AS ct(
    fecha DATE,
    "A" NUMERIC(10, 2),
    "B" NUMERIC(10, 2),
    "C" NUMERIC(10, 2),
    "D" NUMERIC(10, 2)
);







SELECT "A", "B", "C", "D" 
FROM crosstab(
    'SELECT
        1 AS row_id,  
        categoria,    
        SUM(valor)    
     FROM datos
     GROUP BY categoria 
     ORDER BY 1,2',

    'VALUES (''A''), (''B''), (''C''), (''D'')'
)

AS ct(
    row_id INT, 
    "A" NUMERIC,
    "B" NUMERIC,
    "C" NUMERIC,
    "D" NUMERIC
);
