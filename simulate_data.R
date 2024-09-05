library(tidyverse)
library(janitor)

#### Preamble ####
# Purpose: Simulate data for the 2021 Canadian Election 
# Author: STA304 Group 14
# Email: yiruyiru.wang@mail.utoronto.ca
# Date:  Sep 5, 2024
# Prerequisites: None

set.seed(0123)

simulated_data <-
  tibble(
    # Use 1 through to 151 to represent each division
    "Division" = 1:338,
    # Randomly pick an option, with replacement, 151 times
    "Party" = sample(
      x = c("Liberal", "Conservative", "Bloc Québécois", "New Democratic", "Green", "Other"),
      size = 338,
      replace = TRUE
    )
  )

simulated_data
