

data2 <- read.csv("C:/Users/ANSI/Desktop/practice/SYCS/sem 4/Data Analysis with SAS SPSS R/Effect of Teaching Method & Gender on Marks.csv")
head(data2)

anova_two <- aov(Marks ~ Teaching_Method + Gender, data = data2)
summary(anova_two)
