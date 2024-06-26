#### Preamble ####
# Purpose: Clean the raw data.  
# Author: Tara Chakkithara
# Date: 18 April 2024
# Contact: tara.chakkithara@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(readxl)

#### Clean raw data ####
gmo_data <- read_csv('data/raw_data/gm_crops.csv')
yield_data <- read_xlsx('data/raw_data/cotton_yield.xlsx', sheet = 3, skip = 7)

gmo_data <- clean_names(gmo_data) 


gmo_data <- gmo_data |>
  filter(attribute == "All GE varieties (percent of all upland cotton planted) 3/") |>
  filter(state_year == "United States") |>
  select(year, value) |>
  rename(percent_gm = value)


yield_data <- yield_data |>
  rename(year = '1975', total_acres = '9408', harvested_acres='8730', percent_abandoned='7.2066326530612344', yield='453') |>
  select(year, total_acres, harvested_acres, percent_abandoned, yield) |>
  filter(!is.na(year)) |>
  mutate(
    year = substr(year, 1, 4)
  ) |>
  filter(year >= 2000) |>
  slice(1:(n() - 5)) |>
  mutate(
    year = as.numeric(year)
  )


data <- merge(gmo_data, yield_data, by = "year", all = TRUE)

write_csv(data, "data/clean_data.csv")