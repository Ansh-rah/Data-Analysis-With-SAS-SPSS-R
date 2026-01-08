data2 <- read.csv("C:/Users/ANSI/Desktop/practice/SYCS/sem 4/Data Analysis with SAS SPSS R/Effect of Teaching Method & Gender on Marks.csv")

data2$Teaching_Method <- as.factor(data2$Teaching_Method)
data2$Gender <- as.factor(data2$Gender)
grand_mean <- mean(data2$Marks)

tm_means <- tapply(data2$Marks, data2$Teaching_Method, mean)
tm_sizes <- table(data2$Teaching_Method)
SS_TM <- sum(tm_sizes * (tm_means - grand_mean)^2)

gender_means <- tapply(data2$Marks, data2$Gender, mean)
gender_sizes <- table(data2$Gender)
SS_G <- sum(gender_sizes * (gender_means - grand_mean)^2)

SS_total <- sum((data2$Marks - grand_mean)^2)
SS_error <- SS_total - SS_TM - SS_G

df_TM <- length(tm_means) - 1
df_G <- length(gender_means) - 1
df_error <- nrow(data2) - length(tm_means) - length(gender_means) + 1

MS_TM <- SS_TM / df_TM
MS_G <- SS_G / df_G
MS_error <- SS_error / df_error

F_TM <- MS_TM / MS_error
F_G <- MS_G / MS_error

F_TM
F_G
