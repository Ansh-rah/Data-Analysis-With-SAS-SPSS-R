library(tidyverse)

print("ANSHRAH SHAIKH \nSYCS \nS111 \nR PRAC 11")

df <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/MLR2.csv") %>%
  mutate(RowID = row_number())

print("--- 1. Original Data ---")
head(df)

long_df <- df %>%
  pivot_longer(
    cols = -c(Year, RowID),
    names_to = "Metric",
    values_to = "Value"
  )

print("--- 2. Long Format ---")
head(long_df, 12)

wide_df <- long_df %>%
  pivot_wider(
    names_from = Metric,
    values_from = Value
  )

print("--- 3. Wide Format (Restored) ---")
head(wide_df)

fertility_pivot <- df %>%
  select(Year, FertilityRate) %>%
  pivot_wider(
    names_from = Year,
    values_from = FertilityRate
  )

print("--- 4. Fertility Rate Spread Across Years ---")
head(fertility_pivot)
