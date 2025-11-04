import unittest
import psycopg2
import os

class TestDatabase(unittest.TestCase):
    def setUp(self):
        self.conn = psycopg2.connect(
            dbname="test_db",
            user="postgres",
            password="postgres",
            host="localhost"
        )
        self.cur = self.conn.cursor()

    def test_insert_data(self):
        self.cur.execute("""
            SELECT * FROM datos
        """)
        results = self.cur.fetchall()
        self.assertTrue(len(results) > 0)

    def test_pivot_query_results(self):
        query_file_path = '02_query_data.sql'
        
        self.assertTrue(os.path.exists(query_file_path), f"El archivo de consulta no se encontró en {query_file_path}")

        with open(query_file_path, 'r') as f:
            pivot_query = f.read()

        self.cur.execute(pivot_query)
        results = self.cur.fetchall()
        self.assertTrue(len(results) > 0)

    def tearDown(self):
        self.cur.close()
        self.conn.close()

if __name__ == "__main__":
    unittest.main()
