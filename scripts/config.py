"""
Configuration file for Bank Reviews Analysis Project
"""

from dotenv import load_dotenv
import os


#load enviroment variables
load_dotenv()

# Google Play Store App Ids
APP_IDS={
    'CBE':os.getenv('CBE_APP_ID'),
    'BOA':os.getenv('com.boa.boaMobileBanking'),
    'DB':os.getenv('com.dashen.dashensuperapp')
}

# Bank Names Mapping 
BANK_NAMES={
    'CBE':'Commercial Bank of Ethiopia (CBE)',
    'BOA':'Bank of Abyssinia (BOA)',
    'DB':'Dashen Bank'
}

#Scraping Configuratioin
SCRAPING_CONFIG={
    'reviews_per_bank':os.getenv('REVIEWS_PER_BANK'),
    'max_retries':os.getenv('MAX_RETRIES'),
    'lang':'en',
    'country':'et'# Ethiopia
}
# File Paths
DATA_PATHS = {
    'raw': '../data/raw',
    'processed': '../data/processed',
    'raw_reviews': '../data/raw/reviews_raw.csv',
    'processed_reviews': '../data/processed/reviews_processed.csv',
    'sentiment_results': '../data/processed/reviews_with_sentiment.csv',
    'final_results': '../data/processed/reviews_final.csv'
}