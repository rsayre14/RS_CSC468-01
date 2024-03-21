# run.py
import mysql.connector
from mysql.connector import Error

config = {
    'user': 'root',
    'password': 'my_root_password',
    'host': '155.98.37.45',
    'port': 32760,
    'database': 'csc468',
    'raise_on_warnings': True
}

try:
    # Connect to the MySQL server
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor()
    print("Connection was established")

    if cnx.is_connected():
            cursor.close()
            cnx.close()
            print("MySQL connection is closed")
except Error as e:
    print(f"Error: {e}")
