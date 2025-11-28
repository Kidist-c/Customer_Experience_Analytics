"""
Main entry point for scraping Google Play Store reviews
for Ethiopian bank apps.

It uses the PlayStoreScraper class to scrape reviews for:
- Commercial Bank of Ethiopia (CBE)
- Bank of Abyssinia (BOA)
- Dashen Bank

CSV files are saved in `data/raw/`.
"""

from scripts.scraper import PlayStoreScraper

def main():
    # Create scraper instance
    scraper = PlayStoreScraper()

    # Run scraping for all banks
    scraper.run()

if __name__ == "__main__":
    main()
