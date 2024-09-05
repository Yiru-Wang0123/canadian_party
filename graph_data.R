library(tidyverse)

cleaned_elections_data <-
  read_csv(
    file = "cleaned_elections_data.csv",
    show_col_types = FALSE
  )

cleaned_elections_data |>
  ggplot(aes(x = party)) + # aes abbreviates "aesthetics" 
  geom_bar()

bar <- cleaned_elections_data |>
  ggplot(aes(x = party)) +
  geom_bar() +
  theme_minimal() + # Make the theme neater
  labs(x = "Party", y = "Number of seats") # Make lab

ggsave("bar_graph.pdf")
