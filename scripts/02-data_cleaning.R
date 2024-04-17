#### Preamble ####
# Purpose: Clean building assessment data by removing NA values and analyze factors affecting housing prices
# Author: Yaning Jin
# Date: 16 April 2024
# Contact: jinyaning010305@gmail.com
# License: MIT
# Pre-requisites: 'readr' for reading CSV data, 'dplyr' for data manipulation, and 'here' for managing file paths
# The raw dataset must be located in the 'data/raw_data' directory before running this scrip

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
zillow <- read.csv("../data/analysis_data/zillow_price.csv")

numeric_cols <- c('bathroomcnt',
                  'bedroomcnt',
                  'calculatedfinishedsquarefeet',
                  'roomcnt',
                  'yearbuilt',
                  'taxvaluedollarcnt',
                  'landtaxvaluedollarcnt',
                  'price')

zillowtrim <- zillow[, numeric_cols]



zillowtrim <- na.omit(zillowtrim)



#### Save data ####
write.csv(zillowtrim,"../data/analysis_data/zillowtrim_analysis.csv",row.names = FALSE)
