data1 <- read.csv("C:/Users/ANSI/Desktop/practice/SYCS/sem 4/Data Analysis with SAS SPSS R/Effect of Teaching Method on Student Marks.csv")
head(data1)

anova_one <- aov(Marks ~ Teaching_Method, data = data1)
summary(anova_one)
