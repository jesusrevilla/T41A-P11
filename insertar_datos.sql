\copy datos_csv(id, categoria, valor, fecha) 
FROM 'datos_agregacion_transformacion.csv' 
WITH (FORMAT CSV, HEADER TRUE);
