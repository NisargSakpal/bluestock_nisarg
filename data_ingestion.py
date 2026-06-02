import pandas as pd
import os

folder = "data/raw"

for file in os.listdir(folder):
    if file.endswith(".csv"):
        print("\n" + "="*50)
        print("FILE:", file)

        df = pd.read_csv(os.path.join(folder, file))

        print("Shape:", df.shape)
        print("\nData Types:")
        print(df.dtypes)
        print("\nHead:")
        print(df.head())