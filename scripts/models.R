#### Preamble ####
# Purpose: Create 2 models. One to study the relationship between GMO cotton
# and yield. The other to study the relationship between GMO cotton and land use. 

# Author: Tara Chakkithara
# Date: 18 April 2024
# Contact: tara.chakkithara@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA


#### Workspace setup ####
library(tidyverse)
library(tidymodels)

#### Create yield model ####
yield_model <- lm(yield ~ percent_gm, data = data)
saveRDS(yield_model, "models/yield_model.Rds")

#### Create land use model ####
land_use_model <- lm(total_acres ~ percent_gm, data = data)
saveRDS(land_use_model, "models/land_use_model.Rds")