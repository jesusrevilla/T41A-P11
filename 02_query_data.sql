SELECT 
    'suma' as medida,
    SUM(CASE WHEN categoria = 'A' THEN valor ELSE 0 END) as A,
    SUM(CASE WHEN categoria = 'B' THEN valor ELSE 0 END) as B,
    SUM(CASE WHEN categoria = 'C' THEN valor ELSE 0 END) as C,
    SUM(CASE WHEN categoria = 'D' THEN valor ELSE 0 END) as D
FROM datos;
