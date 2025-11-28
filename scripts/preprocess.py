import os
import pandas as pd
from scripts.config import DATA_PATHS, APP_IDS, OUTPUT_FILE


class ReviewPreprocessor:

    def __init__(self):
        self.raw_dir = DATA_PATHS["raw"]
        self.processed_dir = DATA_PATHS["processed"]
        os.makedirs(self.processed_dir, exist_ok=True)

        print(f"[INFO] Preprocessing. Processed data → {self.processed_dir}")

    def clean_df(self, df):
        """
        Apply cleaning:
        - Remove duplicates
        - Remove missing reviews
        - Normalize rating → numeric
        - Normalize date → YYYY-MM-DD
        """
        print("Columns before cleaning:", df.columns)
        print("Rows before cleaning:", len(df))

        # Remove missing reviews
        df = df.dropna(subset=["review"])

        # Remove duplicates
        df = df.drop_duplicates(subset=["review"])

        # Ensure rating is numeric
        if "rating" in df:
            df["rating"] = pd.to_numeric(df["rating"], errors="coerce")

        # Ensure date is datetime and format
        if "date" in df:
            df["date"] = pd.to_datetime(df["date"], errors="coerce")
            df["date"] = df["date"].dt.strftime("%Y-%m-%d")

        print("Rows after cleaning:", len(df))
        return df

    def process_single_bank(self, bank_key):
        fname = f"{bank_key.lower()}_raw.csv"
        raw_path = os.path.join(self.raw_dir, fname)

        if not os.path.exists(raw_path):
            print(f"[WARN] Raw file not found -> {fname}")
            return None

        print(f"[PROCESSING] {fname}...")

        # Read CSV safely with UTF-8 encoding for Amharic
        try:
            df = pd.read_csv(raw_path, encoding="utf-8")
        except UnicodeDecodeError:
            print("[WARN] UTF-8 failed, trying utf-8-sig...")
            df = pd.read_csv(raw_path, encoding="utf-8-sig")

        if df.empty:
            print(f"[WARN] Raw CSV is empty -> {fname}")
            return None

        df_clean = self.clean_df(df)

        if df_clean.empty:
            print(f"[WARN] Cleaned DataFrame is empty -> {fname}")
            return None

        out_path = os.path.join(self.processed_dir, f"{bank_key.lower()}_clean.csv")
        df_clean.to_csv(out_path, index=False, encoding="utf-8")
        print(f"[SAVED] -> {out_path} ({len(df_clean)} rows)")

        return df_clean

    def run(self):
        print("\n=== START DATA CLEANING & MERGING ===\n")

        merged_frames = []

        for bank_key in APP_IDS:
            df_clean = self.process_single_bank(bank_key)
            if df_clean is not None:
                merged_frames.append(df_clean)

        if not merged_frames:
            print("[ERROR] No data found to merge.")
            return

        final_df = pd.concat(merged_frames, ignore_index=True)

        merged_path = os.path.join(self.processed_dir, OUTPUT_FILE)
        final_df.to_csv(merged_path, index=False, encoding="utf-8")

        print("\n=== MERGED DATA SAVED ===")
        print(f"File → {merged_path}")
        print(f"Total rows → {len(final_df)}")
        print("\n====================================\n")
