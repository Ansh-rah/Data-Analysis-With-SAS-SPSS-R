install.packages(c("readr", "psych"))

library(readr)
library(psych)

my_data <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/student_spending.csv")

head(my_data)
tail(my_data)

cat("ANSHRAH SHAIKH S111 SYCS PRAC 3")
cat("Dimensions (Rows, Columns): ", dim(my_data), "\n")
str(my_data)
summary(my_data)
cat("Column Names: ", names(my_data), "\n")
describe(my_data)

