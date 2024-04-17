#### Preamble ####
# Purpose: Construct multiple linear regression to evaluate the impact of different factors on housing prices
# Author: Yaning Jin
# Date: 16 April 2024
# Contact: jinyaning010305@gmail.com
# License: MIT
# Pre-requisites: The 'readr' for data manipulation, and 'here' for path management
# The 'cleaned_data' dataset must be pre-processed before using it in the model.


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("../data/analysis_data/zillowtrim_analysis.csv")

### Model data ####
### full model
full = lm(log(price) ~ ., data = train)
summary(full)


#### Save model ####
saveRDS(
  full,
  file = "../models/full.rds"
)


