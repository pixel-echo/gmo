library(tidyverse)
library(tidymodels)

yield_model <- lm(yield ~ percent_gm, data = data)
saveRDS(yield_model, "models/yield_model.Rds")


land_use_model <- lm(total_acres ~ percent_gm, data = data)
saveRDS(land_use_model, "models/land_use_model.Rds")