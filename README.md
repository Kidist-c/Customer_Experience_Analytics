## Bank Mobile App Reviews-Data Collection And Analysis

👨‍💻Projct Overview
This project collects,cleans, Analyzes and stores User Review of three Ethiopian banks:
Commercial Bank of Ethiopia (CBE)
Bank of Abyssinia (BOA)
Dashen Bank
1.Web Scraping
Tools Used:
_ pandas
_ google_play_scraper
Example Installation
**pip install google-play-scraper pandas **
Scraping Script code:

# Google Play scraper

                r, _ = reviews(
                    app_id,
                    lang=self.config["lang"],
                    country=self.config["country"],
                    sort=self.config["sort"],
                    count=min(batch_size, max_reviews - len(all_reviews))

2.Cleaned(preprocessed Data)

# def clean_df(self, df):

        """
        Apply cleaning:
        - Remove missing reviews
        - Remove non-English (Amharic) reviews
        - Normalize rating → numeric
        - Normalize date → YYYY-MM-DD
        """
    # Drop missing reviews
        df = df.dropna(subset=["review","review_id"])

        # Remove non-ASCII reviews (Amharic)
        df = df[df["review"].apply(lambda x: x.isascii())]
           # Remove duplicates using review_id


        # Convert rating to numeric
        if "rating" in df:
            df["rating"] = pd.to_numeric(df["rating"], errors="coerce")

        # Normalize date
        if "date" in df:
            df["date"] = pd.to_datetime(df["date"], errors="coerce")
            df["date"] = df["date"].dt.strftime("%Y-%m-%d")

        return df

3.Did Sentiment Analysis Using Huggingface DistilBert

# from transformers import pipeline

sentiment_model = pipeline(
"sentiment-analysis",
model="distilbert-base-uncased-finetuned-sst-2-english"
)

def get_sentiment(text):
if not isinstance(text, str) or text.strip() == "":
return None
result = sentiment_model(text[:500])[0] # truncate very long reviews
return result['label'], result['score']

df['sentiment_label'], df['sentiment_score'] = zip(\*df['review'].apply(get_sentiment))

4.Visualized The results

# sentiment per bank visualization

plt.figure(figsize=(10,6))
sns.barplot(x='bank',y='sentiment_score',data=df)
plt.title('Sentiment Score Distribution per Bank')
plt.xlabel('Bank')
plt.ylabel('Sentiment_Score')
plt.show()
