#### Preamble ####
# Purpose: To download and preprocess the dataset related to building evaluation from the zillow
# Author: Yaning Jin
# Date: 16 April 2024
# Contact: jinyaning010305@gmail.com
# License: MIT
# Pre-requisites: The 'zillowR' package for accessing open data, 'readr' and 'dplyr' for data manipulation, and 'here' for path management
# Ensure that the 'zillowR' package is installed and updated to the latest version



#### Workspace setup ####
#library(opendatatoronto)
library(ZillowR)
library(tidyverse)
library(readabs)

#### Download data ####

#GetZestimate(
#  zpid = NULL,
#  rentzestimate = FALSE,
#  zws_id = getOption("ZillowR-zws_id"),
#  url = "http://www.zillow.com/webservice/GetZestimate.htm"
#)
the_raw_data <- read_abs("6401.0", tables = "9", check_local=FALSE) %>%
  filter(str_detect(`series`, "Health"))


#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "../raw_data.csv") 

         
