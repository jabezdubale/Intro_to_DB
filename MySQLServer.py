import mysql.connector
from mysql.connector import Error
try:
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="Iloveyoulemmi2!",
        database="alx_book_store"
    )

    if db.is_connected():
        print("Database 'alx_book_store' already exists!")
        db.close()

except Error as e:
    if "Unknown database" in str(e):
        db = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="Iloveyoulemmi2!"
        )

        cursor = db.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

        cursor.close
        db.close()
    else:
        print("Error:", e)
