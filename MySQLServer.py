import mysql.connector
from mysql.connector import Error


def create_database():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="iviidev"
        )

        if connection.is_connected():
            mycursor = connection.cursor()
            
            # Create database if it doesn't exist
            mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_Store")
            print("Database 'alx_book_store' created successfully!")
            
    except Error as err:
        print(f"Error while connecting to MySQL: {err}")
    
    finally:
        # Close connection
        if connection.is_connected():
            mycursor.close()
            connection.close()
            print("MySQl  connection is closed!")
            

if __name__ == "__main__":
    create_database()
        