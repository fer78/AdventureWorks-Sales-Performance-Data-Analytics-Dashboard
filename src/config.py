# config.py
import os

# Paths
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
RAW_PATH = os.path.join(BASE_DIR, "data", "raw")
PROCESSED_PATH = os.path.join(BASE_DIR, "data", "processed")
SQL_QUERIES_PATH = os.path.join(BASE_DIR, "sql_queries")

# SQL Server connection (SQLAlchemy + pyodbc)
SQL_SERVER = "FERNANDO"
SQL_DATABASE = "AdventureWorks2022"
SQL_DRIVER = "ODBC Driver 17 for SQL Server"

# Connection string for SQLAlchemy
SQLALCHEMY_CONN = (
    f"mssql+pyodbc://@{SQL_SERVER}/{SQL_DATABASE}"
    f"?driver={SQL_DRIVER.replace(' ', '+')}"
    f"&trusted_connection=yes"
)

