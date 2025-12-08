
library(dplyr)
print("ANSHRAH SHAIKH \nSYCS \nS111 \nR PRAC 13")

orders_df <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/dataset3.csv")

print("--- 1. Original Dataset ---")
print(orders_df)

duplicates_report <- orders_df %>%
  group_by(OrderID, Customer, Product) %>%
  count() %>%       
  filter(n > 1)      

print("--- 2. Identification Report (Rows that are duplicated) ---")
print(duplicates_report)

clean_exact <- orders_df %>%
  distinct()

print("--- 3. Removed Exact Duplicates (distinct) ---")
print(clean_exact)

unique_customers <- orders_df %>%
  distinct(Customer, .keep_all = TRUE)

print("--- 4. Unique Customers Only (Partial Duplicates removed) ---")
print(unique_customers)
