print("ANSHRAH SHAIKH \nSYCS \nS111 \nR PRAC 11")
dataset1 <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/dataset1.csv")  
dataset2 <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/dataset2.csv")  

str(dataset1)
str(dataset2)

combined <- merge(dataset1, dataset2, by = c("ProductID", "Product"))

print("Combined Dataset:")
print(combined)

summary(combined)
