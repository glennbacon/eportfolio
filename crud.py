import mysql.connector


class CRUD(object):
    """ CRUD operations for Animal collection in MySQL """
    def __init__(self, host, username, password, database_name):
        # Initializing the MySQL. This helps to
        # access the MySQL database.
        self.host = host
        self.username = username
        self.password = password
        self.database_name = database_name
        self.database = mysql.connector.connect(
            host=self.host,
            user=self.username,
            password=self.password,
            database=self.database_name
        )
        self.db_cursor = self.database.cursor()

    # Create method to implement the R in CRUD return many results
    def read(self):
        self.db_cursor.execute("SELECT * FROM animals")
        query_result = self.db_cursor.fetchall()
        return query_result
