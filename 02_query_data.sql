SELECT t.id,
       kv.key    AS columna,
       kv.value  AS valor
FROM datos_agregacion_transformacion t
CROSS JOIN LATERAL (
  SELECT * FROM jsonb_each_text(to_jsonb(t) - 'id')
) AS kv(key, value)
ORDER BY t.id, kv.key;
