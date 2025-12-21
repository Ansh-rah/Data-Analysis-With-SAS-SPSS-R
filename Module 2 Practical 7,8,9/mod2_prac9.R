
data3 <- read.csv("C:/Users/ANSI/Desktop/practice/SYCS/sem 4/Data Analysis with SAS SPSS R/Relationship between Gender and Spice Tolerance.csv")
head(data3)

table_data <- table(data3$Gender, data3$Spice.Tolerance)
chisq.test(table_data)
