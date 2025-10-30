import psycopg2
import pytest

def test_conteo_categorias_directo():
    """
    Verifica que el conteo de registros por cada categoría (A, B, C, D)
    sea el correcto ejecutando la consulta de agregación directamente
    en la tabla 'datos' con 100 registros.
    """
    conn = None
    cur = None
    try:
        # 1. Establecer la conexión
        conn = psycopg2.connect(
            dbname='test_db',
            user='postgres',
            password='postgres',
            host='localhost',
            port='5432'
        )
        cur = conn.cursor()

        # 2. Consulta SQL de Agregación
        sql_query = """
        SELECT
            categoria,
            COUNT(id) AS total_registros
        FROM
            datos
        GROUP BY
            categoria;
        """
        cur.execute(sql_query)
        resultados = cur.fetchall()

        # 3. Datos Esperados (Conteo del archivo CSV de 100 filas):
        expected_results = {
            'A': 25,
            'B': 20,
            'C': 30,
            'D': 25
        }

        # 4. Asertos (Verificaciones)
        
        # Verificar que el número de categorías sea 4
        assert len(resultados) == len(expected_results), "Debe haber 4 categorías únicas en los resultados."

        # Convertir los resultados de la DB a un diccionario para fácil comparación
        db_results = {row[0]: row[1] for row in resultados}

        # Verificar los conteos
        for categoria, conteo_esperado in expected_results.items():
            assert categoria in db_results, f"Falta la categoría '{categoria}' en los resultados de la DB."
            assert db_results[categoria] == conteo_esperado, \
                f"El conteo para '{categoria}' es incorrecto. Esperado: {conteo_esperado}, Obtenido: {db_results[categoria]}"
            
        # Aserto adicional para verificar el total de filas
        total_obtenido = sum(db_results.values())
        assert total_obtenido == 100, f"El total de registros debe ser 100. Se obtuvieron {total_obtenido}."


    finally:
        # 5. Cerrar la conexión
        if cur:
            cur.close()
        if conn:
            conn.close()
