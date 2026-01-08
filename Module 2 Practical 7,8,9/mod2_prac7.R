data1 <- read.csv("C:/Users/ANSI/Desktop/practice/SYCS/sem 4/Data Analysis with SAS SPSS R/Effect of Teaching Method on Student Marks.csv")

data1$Teaching_Method <- as.factor(data1$Teaching_Method)
group_means <- tapply(data1$Marks, data1$Teaching_Method, mean)
grand_mean <- mean(data1$Marks)
group_sizes <- table(data1$Teaching_Method)

SSB <- sum(group_sizes * (group_means - grand_mean)^2)
SSW <- sum((data1$Marks - group_means[data1$Teaching_Method])^2)

df_between <- length(group_means) - 1
df_within <- nrow(data1) - length(group_means)

MSB <- SSB / df_between
MSW <- SSW / df_within

F_value <- MSB / MSW
F_value

