
COPY datos (id, categoria, valor, fecha)
FROM 'datos_agregacion_transformacion.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM crosstab(
  'SELECT categoria, SUM(valor) AS valor FROM datos GROUP BY categoria',
  'SELECT DISTINCT categoria, SUM(valor) FROM datos ORDER BY categoria'
) AS ct (id_fila INT, columna_1 VARCHAR, columna_2 VARCHAR);

--EJEMPLO 

CREATE TABLE IF NOT EXISTS datos (
        id INTEGER PRIMARY KEY,
        categoria TEXT,
        valor NUMERIC,
        fecha DATE
    );
    
    
    INSERT INTO datos (id, categoria, valor, fecha) VALUES
(1, 'A', 658.55, '2025-09-08'),
(2, 'C', 76.73, '2025-08-22'),
(3, 'D', 82.29, '2025-10-17'),
(4, 'D', 604.26, '2025-03-24'),
(5, 'A', 910.48, '2025-04-28'),
(6, 'A', 935.89, '2025-06-26'),
(7, 'D', 661.18, '2025-07-20'),
(8, 'C', 148.58, '2025-01-23'),
(9, 'B', 509.44, '2025-06-24'),
(10, 'C', 920.18, '2025-03-17');
