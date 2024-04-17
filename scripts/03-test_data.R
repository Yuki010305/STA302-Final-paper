#### Preamble ####
# Purpose: Conduct a series of data integrity tests on the cleaned dataset of factors affecting house prices
# Author: Yaning Jin
# Date: 16  2024
# Contact: jinyaning010305@gmail.com
# License: MIT
# Pre-requisites: 'readr' for reading CSV data, 'dplyr' for data manipulation, 'here' for file path management
# The cleaned dataset should be located in the 'data/analysis_data' directory and be free of processing errors

#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]



data <- read.csv("../data/analysis_data/zillowtrim_analysis.csv")

#### Test data ####
# Dimension Check
dim(data)  # Check the number of rows and columns in the dataset

# Missing Values Check
any(is.na(data))  # Check if there are any missing values in the dataset

# Duplicate Rows Check
data_unique <- unique(data)  # Remove duplicate rows
duplicate_count <- nrow(data) - nrow(data_unique)
if (duplicate_count > 0) {
  print(paste("Duplicate rows found:", duplicate_count))
}

# Consistency Check
str(data)  # Check the structure of the dataset for consistency in data types

# Outlier Check (assuming 'price' is the target variable)
summary(data$price)  # Summary statistics of the 'price' variable to identify outliers






