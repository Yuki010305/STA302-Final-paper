#### Preamble ####
# Purpose: Replicated graphs from
# Author: Yaning Jin
# Date: 16 April 2024
# Contact: jinyaning010305@gmail.com
# License: MIT
# Pre-requisites: The 'readr' for data manipulation, and 'here' for path management
# The 'cleaned_data' dataset must be pre-processed before using it in the model.


#### Workspace setup ####
library(tidyverse)

#### Load data ####
analysis_data <- read_csv("../data/analysis_data/zillowtrim_analysis.csv")

#### Replicate Graphs ####

# Example 1: Scatter plot of 'price' against 'calculatedfinishedsquarefeet'
ggplot(analysis_data, aes(x = calculatedfinishedsquarefeet, y = price)) +
  geom_point() +
  labs(title = "Scatter plot of Price against Sqft",
       x = "Sqft",
       y = "Price")

# Example 2: Histogram of 'price'
ggplot(analysis_data, aes(x = price)) +
  geom_histogram( fill = "skyblue", color = "black") +
  labs(title = "Histogram of Price",
       x = "Price",
       y = "Frequency")

# Add more plots as needed

# Remember to customize the plots according to your specific requirements





