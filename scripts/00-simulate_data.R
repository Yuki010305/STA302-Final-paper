#### Preamble ####
# Purpose: Data sets related to simulating the impact of different factors on house prices
# Author:Yaning Jin
# Date: 16 April 2024
# Contact: jinyaning010305@gmail.com
# License: MIT
# Pre-requisites: tidyverse package


#### Workspace setup ####
library(tidyverse)

# Load necessary libraries
library(tidyverse)

#### Simulate data ####
# Set seed for reproducibility
set.seed(123)

# Number of observations
n <- 1000

# Simulate data
data <- tibble(
  house_size = rnorm(n, mean = 2000, sd = 500),
  num_bedrooms = sample(1:5, n, replace = TRUE),
  distance_to_center = rnorm(n, mean = 10, sd = 5),
  other_factor = rnorm(n)  # Add more factors as needed
)

# Simulate house prices based on factors
data <- data %>%
  mutate(
    house_price = 100000 + 100 * house_size + 20000 * num_bedrooms - 500 * distance_to_center + rnorm(n, mean = 0, sd = 10000)
    # Add more factors to the formula as needed
  )

# View the simulated data
head(data)

