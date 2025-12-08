
print("ANSHRAH SHAIKH \nSYCS \nS111 \nR PRAC 13")
mlr2_df <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/MLR2.csv")

print("--- 1. Original MLR2 Dataset ---")
print(head(mlr2_df))

print("--- 2. OUTPUT OF str() ---")
str(mlr2_df)

print("--- 3. OUTPUT OF summary() ---")
summary(mlr2_df)

mlr2_df$Year <- as.factor(mlr2_df$Year)

print("--- 4. OUTPUT OF summary() [Year as Factor] ---")
summary(mlr2_df)

avg_fertility <- mean(mlr2_df$FertilityRate, na.rm = TRUE)
max_fem_employ <- max(mlr2_df$PerFemEmploy, na.rm = TRUE)

print(paste("Average Fertility Rate:", avg_fertility))
print(paste("Maximum Percentage of Female Employment:", max_fem_employ))

