library(tidyverse)
library(janitor)

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
