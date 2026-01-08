data3 <- read.csv("C:/Users/ANSI/Desktop/practice/SYCS/sem 4/Data Analysis with SAS SPSS R/Relationship between Gender and Spice Tolerance.csv")

observed <- table(data3$Gender, data3$Spice.Tolerance)

row_totals <- rowSums(observed)
col_totals <- colSums(observed)
grand_total <- sum(observed)

expected <- outer(row_totals, col_totals) / grand_total

chi_square <- sum((observed - expected)^2 / expected)
df <- (nrow(observed) - 1) * (ncol(observed) - 1)

chi_square
df
