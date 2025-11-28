import os
import time
import pandas as pd
from google_play_scraper import reviews,Sort
from scripts.config import APP_IDS, SCRAPING_CONFIG, DATA_PATHS, BANK_NAMES
from datetime import datetime


class PlayStoreScraper:
    """
    Scraper class to collect Google Play Store reviews
    for multiple bank apps in Ethiopia and save them as CSV.
    """

    def __init__(self):
        # Load app IDs and scraping config from config.py
        self.ids = APP_IDS
        self.config = SCRAPING_CONFIG

        # Directory to save raw CSVs
        self.save_dir = DATA_PATHS["raw"]
        os.makedirs(self.save_dir, exist_ok=True)

        print(f"[INFO] Scraper initialized. Saving raw CSVs to: {self.save_dir}")

    def scrape_app(self, bank_key):
        """
        Scrape reviews for a single bank app.

        Parameters:
        - bank_key (str): Short key of the bank, e.g., "CBE"

        Returns:
        - all_reviews (list of dict): Each dict contains review, rating, date, bank, source
        """

        app_id = self.ids[bank_key]
        max_reviews = self.config["reviews_per_bank"]
        all_reviews = []
        batch_size = 200  # Google Play allows batch scraping
        retries = 0
        max_retries = self.config.get("max_retries", 5)

        print(f"\n[SCRAPING] {BANK_NAMES[bank_key]} ({app_id})")
        print(f"[INFO] Targeting {max_reviews} reviews")
        

        # Continue until we reach the desired number of reviews
        while len(all_reviews) < max_reviews and retries < max_retries:
            try:
                # Google Play scraper
                r, _ = reviews(
                    app_id,
                    lang=self.config["lang"],
                    country=self.config["country"],
                    sort=self.config["sort"],
                    count=min(batch_size, max_reviews - len(all_reviews))
                )


                if not r:
                    print("[INFO] No more reviews returned by API")
                    break

                # Format each review
                for item in r:
                    review_data = {
                        "review": item.get("content"),
                        "rating": item.get("score"),
                        "date": item.get("at"),
                        "bank": BANK_NAMES[bank_key],
                        "source": "Google Play Store"
                    }
                    all_reviews.append(review_data)

                print(f"[INFO] Collected {len(all_reviews)}/{max_reviews} reviews so far")

                # Sleep to avoid rate limits
                time.sleep(1)
                retries = 0  # Reset retries if successful

            except Exception as e:
                retries += 1
                print(f"[ERROR] Exception occurred: {str(e)}. Retrying in 5s...")
                time.sleep(5)

        return all_reviews

    def save_csv(self, bank_key, data):
        """
        Save scraped reviews as CSV.

        Parameters:
        - bank_key (str): Short key of the bank
        - data (list of dict): Scraped review data
        """

        df = pd.DataFrame(data)
        # Filename: cbe_raw.csv, boa_raw.csv, dashen_raw.csv
        filename = f"{bank_key.lower()}_raw.csv"
        path = os.path.join(self.save_dir, filename)
         # 🔥 CHECK IF FILE EXISTS
       

        df.to_csv(path, index=False, encoding="utf-8")
        print(f"[SAVED] {len(df)} reviews saved → {path}")

    def run(self):
        """
        Run scraper for all bank apps.
        Skips banks whose CSV already exists.
        """
        print("\n=== STARTING SCRAPING PROCESS ===\n")

        for bank_key in self.ids.keys():
            filename = f"{bank_key.lower()}_raw.csv"
            path = os.path.join(self.save_dir, filename)

            # 🔥 CHECK IF FILE EXISTS
            if os.path.exists(path):
                print(f"[SKIPPED] {filename} already exists. No scraping needed.")
                continue

            # Otherwise → scrape and save
            reviews_data = self.scrape_app(bank_key)
            self.save_csv(bank_key, reviews_data)

        print("\n=== SCRAPING COMPLETED ===\n")


