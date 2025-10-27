import pandas as pd

# Leer el CSV
df = pd.read_csv("datos_agregacion_transformacion.csv")

# Crear el archivo insert_data.sql
with open("insert_data.sql", "w", encoding="utf-8") as f:
    f.write("INSERT INTO datos (id, categoria, valor, fecha) VALUES\n")
    values = []
    for _, row in df.iterrows():
        values.append(f"({row['id']}, '{row['categoria']}', {row['valor']}, '{row['fecha']}')")
    f.write(",\n".join(values) + ";\n")

print("Archivo insert_data.sql generado correctamente.")
