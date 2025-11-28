from dotenv import  load_dotenv
import os

load_dotenv()

# store Google play application Ids

APP_IDS = {
    "CBE": os.getenv("CBE_APP_ID"),
    "BOA": os.getenv("BOA_APP_ID"),
    "DASHEN": os.getenv("DASHENBANK_APP_ID")
}
# Scraping preferences
SCRAPING_CONFIG = {
    "reviews_per_bank": 420,
    "country": "et",   # Ethiopia
    "lang": "en",      # English
    "sort": "newest",
    "max_retries": 3,
}
DATA_PATHS = {
    "raw": "data/raw/",
    "processed": "data/processed/",
    "logs": "data/logs/",
}