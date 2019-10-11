"""
@author: magician
@file: sqlite.py
@date: 2019/10/7
"""
import sqlite3


class SqliteTool(object):
    """
    sqlite tool class
    """
    def __init__(self):
        """
        init sqlite connection
        """
        self.conn = None

    def connect(self):
        """
        connect
        :return:
        """
        try:
            self.conn = sqlite3.connect('test.db')
            print('Opened database successfully')
        except Exception as e:
            print(e)

        return True

    def create(self):
        """
        create table
        :return:
        """
        self.connect()

        try:
            self.conn.execute('''CREATE TABLE COMPANY
            (ID INT PRIMARY KEY NOT NULL,
             NAME TEXT NOT NULL,
             AGE INT NOT NULL,
             ADDRESS CHAR(50),
             SALARY REAL);''')
            print('Table created successfully')
        except Exception as e:
            print('Table is already created')
            return

        self.conn.close()

        return True

    def add(self):
        """
        create table
        :return:
        """
        self.connect()

        self.conn.execute("INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) \
                          VALUES (1, 'Paul', 32, 'California', 20000.00)")
        self.conn.execute("INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) \
                          VALUES (2, 'Alen', 25, 'Texas', 15000.00)")
        self.conn.execute("INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) \
                          VALUES (3, 'Teddy', 23, 'Norway', 20000.00)")
        self.conn.execute("INSERT INTO COMPANY (ID, NAME, AGE, ADDRESS, SALARY) \
                          VALUES (4, 'Mark', 25, 'Rich-Mond', 65000.00)")
        self.conn.commit()
        print('Records created successfully')

        self.conn.close()

        return True

    def query(self):
        """
        select table
        :return:
        """
        self.connect()

        cursor = self.conn.execute("SELECT id, name, address, salary from COMPANY")
        for row in cursor:
            print('ID = ', row[0])
            print('NAME = ', row[1])
            print('ADDRESS = ', row[2])
            print('SALARY = ', row[3], '\n')

        print('Operation done successfully')

        self.conn.close()

        return True

    def update(self):
        """
        update table
        :return:
        """
        self.connect()

        try:
            self.conn.execute("UPDATE COMPANY SET SALARY = 25000.00 WHERE ID=1")
            self.conn.commit()
            print('Total number of rows updated:', self.conn.total_changes)
        except Exception as e:
            print(e)
            return

        self.conn.close()

        return True

    def delete(self):
        """
        delete table
        :return:
        """
        self.connect()

        try:
            self.conn.execute("DELETE FROM COMPANY WHERE ID=2")
            self.conn.commit()
            print('Total number of rows deleted:', self.conn.total_changes)
        except Exception as e:
            print(e)
            return

        self.conn.close()

        return True


if __name__ == '__main__':
    sqlite_tool = SqliteTool()
    # sqlite_tool.create()
    # sqlite_tool.add()
    # sqlite_tool.update()
    # sqlite_tool.delete()
    sqlite_tool.query()
