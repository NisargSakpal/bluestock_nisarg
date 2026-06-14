import pandas as pd

scorecard = pd.read_csv(
    "data/processed/fund_scorecard.csv"
)

risk = input(
    "Enter Risk Appetite (Low/Moderate/High): "
)

if risk == "Low":
    rec = scorecard.sort_values(
        "Sharpe_Ratio",
        ascending=False
    ).head(3)

elif risk == "Moderate":
    rec = scorecard.sort_values(
        "Fund_Score",
        ascending=False
    ).head(3)

else:
    rec = scorecard.sort_values(
        "CAGR_%",
        ascending=False
    ).head(3)

print("\nRecommended Funds:\n")

print(
    rec[
        [
            "amfi_code",
            "Sharpe_Ratio",
            "Fund_Score"
        ]
    ]
)