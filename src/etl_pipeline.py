# etl_pipeline.py
import os
import pandas as pd
from sqlalchemy import create_engine
from datetime import datetime
import logging
from config import RAW_PATH, PROCESSED_PATH, SQL_QUERIES_PATH, SQLALCHEMY_CONN


# LOGGING CONFIGURATION
log_file = f"etl_log_{datetime.now().strftime('%Y%m%d_%H%M')}.log"
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(log_file, encoding="utf-8"),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)


# HELPERS
def load_sql_query(file_name):
    file_path = os.path.join(SQL_QUERIES_PATH, file_name)
    if not os.path.exists(file_path):
        msg = f" Query file not found: {file_name}"
        print(msg)
        logger.error(msg)
        return None
    with open(file_path, "r", encoding="utf-8") as f:
        return f.read()

def query_to_df(query):
    try:
        engine = create_engine(SQLALCHEMY_CONN)
        with engine.connect() as conn:
            df = pd.read_sql(query, conn)
        return df
    except Exception as e:
        msg = f" SQL execution failed: {e}"
        print(msg)
        logger.error(msg)
        return None

def check_data(name, raw_path=RAW_PATH):
    print(f"--- Check {name} Dataframe ---")
    df = pd.read_csv(os.path.join(raw_path, f"{name}.csv"))
    print(df.head())
    print(df.info())
    logger.info(f"Checked dataframe: {name}, rows: {len(df)}")
    return df

def save_data(df, df_name, processed_path=PROCESSED_PATH):
    output_path = os.path.join(processed_path, f"{df_name}.csv")
    df.to_csv(output_path, index=False, encoding="utf-8-sig")
    msg = f"✔ File saved in: {output_path}"
    print(msg)
    logger.info(msg)

# Auto null treatment
null_treatment = {
    "CurrencyRate": {
        "AverageRate": "fill_0",
        "EndOfDayRate": "fill_0",
        "Date": "fill_today"
    },
    "Finance": {
        "Amount": "fill_0",
        "Date": "fill_today"
    },
    "InternetSales": {
        "OrderQuantity": "fill_0",
        "UnitPrice": "fill_0",
        "ExtendedAmount": "fill_0",
        "UnitPriceDiscountPct": "fill_0",
        "DiscountAmount": "fill_0",
        "ProductStandardCost": "fill_0",
        "TotalProductCost": "fill_0",
        "SalesAmount": "fill_0",
        "TaxAmt": "fill_0",
        "Freight": "fill_0",
        "OrderDate": "fill_today",
        "DueDate": "fill_today",
        "ShipDate": "fill_today"
    },
    "ProductInventory": {
        "UnitsIn": "fill_0",
        "UnitsOut": "fill_0",
        "UnitsBalance": "fill_0",
        "MovementDate": "fill_today"
    },
    "ResellerSales": {
        "OrderQuantity": "fill_0",
        "UnitPrice": "fill_0",
        "ExtendedAmount": "fill_0",
        "UnitPriceDiscountPct": "fill_0",
        "DiscountAmount": "fill_0",
        "ProductStandardCost": "fill_0",
        "TotalProductCost": "fill_0",
        "SalesAmount": "fill_0",
        "TaxAmt": "fill_0",
        "Freight": "fill_0",
        "OrderDate": "fill_today",
        "DueDate": "fill_today",
        "ShipDate": "fill_today"
    },
    "FactSalesQuota": {
        "SalesAmountQuota": "fill_0"
    }
}

def clean_dataframe(df, table_name):
    print(f"--- Cleaning {table_name} ---")
    rules = null_treatment.get(table_name, {})

    for col, action in rules.items():
        if col not in df.columns:
            continue

        if action == "fill_0":
            df[col] = df[col].fillna(0)
        elif action == "fill_today":
            df[col] = pd.to_datetime(df[col], errors='coerce')
            df[col] = df[col].fillna(pd.Timestamp.today())
        elif action == "fill_unknown":
            df[col] = df[col].fillna("Unknown")

    print(df.isna().sum())
    print(df.head())

    return df


# ETL PIPELINE
def run_etl():
    print("Starting ETL pipeline")
    logger.info("Starting ETL pipeline")
    print(f"Raw path: {RAW_PATH}")
    print(f"Processed path: {PROCESSED_PATH}")
    logger.info(f"Raw path: {RAW_PATH}")
    logger.info(f"Processed path: {PROCESSED_PATH}")

    sql_files = [f for f in os.listdir(SQL_QUERIES_PATH) if f.endswith(".sql")]
    if not sql_files:
        msg = "No SQL files found in /sql_queries/"
        print(msg)
        logger.error(msg)
        return

    for sql_file in sql_files:
        name = sql_file.replace(".sql", "").replace("vw_", "")
        print(f"Extracting {name} ...")
        logger.info(f"Extracting {name} from {sql_file}")

        sql_query = load_sql_query(sql_file)
        if sql_query is None:
            continue

        df = query_to_df(sql_query)
        if df is None:
            msg = f"Failed to load data from {sql_file}"
            print(msg)
            logger.error(msg)
            continue

        msg = f"Rows loaded: {len(df)}"
        print(msg)
        logger.info(msg)

        # CLEANING
        df_clean = clean_dataframe(df, name)

        # SAVE
        save_data(df_clean, name)

    print("ETL pipeline finished successfully!")
    logger.info("ETL pipeline finished successfully!")


# RUN
if __name__ == "__main__":
    run_etl()

