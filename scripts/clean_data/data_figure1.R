library(tidyverse)
data <- read_csv('data/raw_data/adoption.csv')

soybean_data <- data |>
  select(country, year, soybean) |>
  filter(!is.na(soybean))

maize_data <- data |>
  select(country, year, maize) |>
  filter(!is.na(maize))

cotton_data <- data |>
  select(country, year, cotton) |>
  filter(!is.na(cotton))

rapeseed_data <- data |>
  select(country, year, rapeseed) |>
  filter(!is.na(rapeseed))

write_csv(soybean_data, 'data/analysis_data/soybean.csv')
write_csv(maize_data, 'data/analysis_data/maize.csv')
write_csv(cotton_data, 'data/analysis_data/cotton.csv')
write_csv(rapeseed_data, 'data/analysis_data/rapeseed.csv')