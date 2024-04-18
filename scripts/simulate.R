############




############

library(tidyverse)

set.seed(47)


percent_gm <- runif(n = 24, min = 0, max = 100)
total_acres <- rnorm(n = 24, mean = 15000, sd = 5000)
harvested_acres <- rnorm(n = 24, mean = 15000, sd = 5000)
cotton_wasted <- runif(n = 24, min = 0, max = 100)
yield <- rnorm(n = 24, mean = 800, sd = 200)
years <- seq(from = 2000, to = 2023, by = 1)

simulated_data <- data.frame(
  years,
  percent_gm,
  harvested_acres,
  total_acres,
  cotton_wasted,
  yield
)

write_csv(simulated_data, "data/simulated_data.csv")