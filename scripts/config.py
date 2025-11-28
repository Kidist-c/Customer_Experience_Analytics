from dotenv import  load_dotenv
import os
from google_play_scraper import Sort  # Add this import

load_dotenv()

# store Google play application Ids

APP_IDS = {
    "CBE": os.getenv("CBE_APP_ID", "com.combanketh.mobilebanking").strip(),
    "BOA": os.getenv("BOA_APP_ID", "com.boa.boaMobileBanking").strip(),
    "DASHEN": os.getenv("DASHEN_APP_ID", "com.dashen.dashensuperapp").strip()
}


# Scraping preferences
SCRAPING_CONFIG = {
    "reviews_per_bank": 800,
    "country": "et",   # Ethiopia
    "lang": "en",      # English
    "sort": Sort.NEWEST,
    "max_retries": 3,
}
BANK_NAMES = {
    "CBE": "Commercial Bank of Ethiopia",
    "BOA": "Bank of Abyssinia",
    "DASHEN": "Dashen Bank"
}
# DATA PATHS (adjusted for your structure)
BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
DATA_PATHS = {
    "raw": os.path.join(BASE_DIR, "data", "raw"),
    "processed": os.path.join(BASE_DIR, "data", "processed"),
    "logs": os.path.join(BASE_DIR, "data", "logs")
}

# CSV output filename
OUTPUT_FILE = "bank_reviews_clean.csv"