SELECT
  SUM(CASE WHEN categoria = 'A' THEN valor ELSE 0 END) AS A,
  SUM(CASE WHEN categoria = 'B' THEN valor ELSE 0 END) AS B,
  SUM(CASE WHEN categoria = 'C' THEN valor ELSE 0 END) AS C,
  SUM(CASE WHEN categoria = 'D' THEN valor ELSE 0 END) AS D
FROM datos;

