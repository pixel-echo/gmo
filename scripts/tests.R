#### Preamble ####
# Purpose: Tests both models on simulated data. 
# Author: Tara Chakkithara
# Date: 18 April 2024
# Contact: tara.chakkithara@mail.utoronto.ca
# License: MIT
# Pre-requisites: Must simulate a dataset before testing both models. 


#### Workspace setup ####
library(tidyverse)



#### Test data ####
simulated_data <- read_csv("data/simulated_data.csv")


yield_model <- readRDS("models/yield_model.Rds")
coefficients1 <- coef(yield_model)

plot1 <- simulated_data %>%
  ggplot(aes(x = percent_gm, y = yield)) +
  geom_point() +
  theme_light() +
  geom_abline(intercept = coefficients1[1], slope = coefficients1[2], color = "blue") +
  labs(x = "Percent of GMO Cotton", y = "Yield")

land_use_model <- readRDS("models/land_use_model.Rds")
coefficients2 <- coef(land_use_model)

plot2 <- simulated_data %>%
  ggplot(aes(x = percent_gm, y = total_acres)) +
  geom_point() +
  theme_light() +
  geom_abline(intercept = coefficients2[1], slope = coefficients2[2], color = "blue") +
  labs(x = "Percent of GMO Cotton", y = "Total Acres")

ggsave("other/test_yield.png", plot1)
ggsave("other/test_land_use.png", plot2)