
library(lubridate)
library(dplyr)

print("ANSHRAH SHAIKH \nSYCS \nS111 \nR PRAC 13")
dates_df <- read.csv("C:/Users/mvluc/OneDrive/Desktop/ANSHRAH/DATA ANALYSIS WITH SASS SPSS R/datasets/dates_dataset.csv")

print("--- 1. Original Dataset ---")
print(dates_df)

processed_data <- dates_df %>%
  mutate(
    Actual_Date = ymd(Date_String),
    
    Year_Num      = year(Actual_Date),                       
    Month_Num     = month(Actual_Date),                      
    Month_Name    = month(Actual_Date, label = TRUE),       
    Day_Num       = day(Actual_Date),                        
    Weekday_Num   = wday(Actual_Date),                      
    Weekday_Name  = wday(Actual_Date, label = TRUE, abbr=FALSE), 
    Quarter       = quarter(Actual_Date),                   
    Day_of_Year   = yday(Actual_Date)                       
  )

print("--- 2. Data with Extracted Date Components ---")
print(processed_data)

current_time <- now()

print("--- 3. Current Time Extraction ---")
print(paste("Current Year:", year(current_time)))
print(paste("Current Month:", month(current_time)))
print(paste("Current Day:", day(current_time)))
print(paste("Current Hour:", hour(current_time)))
print(paste("Current Minute:", minute(current_time)))
print(paste("Current Second:", second(current_time)))
# ==============================================================================
