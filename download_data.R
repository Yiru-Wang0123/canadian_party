#### Preamble ####
# Purpose: Read in data from the 2021 Canadian Election
# Author: STA304 Group 14
# Email: yiruyiru.wang@mail.utoronto.ca
# Date: Sep 05, 2024
# Prerequisites: Know where to get Canadian elections data.


library(tidyverse)


raw_elections_data <-
  read_csv(
    file = 
      "https://www.elections.ca/res/rep/off/ovr2021app/53/data_donnees/table_tableau11.csv",
    show_col_types = FALSE
  )

write_csv(
  x = raw_elections_data,
  file = "canadian_voting.csv"
)
