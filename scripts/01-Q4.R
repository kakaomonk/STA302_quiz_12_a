#### Preamble ####
# Purpose: Graph with ggplot2 and model with rstanarm
# Author: Hyungsoo Park
# Date: 04 April 2024
# Contact: hyungsoo.park@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(rstanarm)
library(ggplot2)
library(tidyverse)

simulated_data = read.csv("data/cancer_simulation.csv")

death_cancer = simulated_data |>
  group_by(Cancer_Type) |>
  filter(Consequence == 1)

ggplot(death_cancer, aes(x = Cancer_Type)) +
  geom_bar() 

cancer_model =
  stan_glm(
  formula = Consequence ~ cancer_type, #+ age_group + gender,
  simulated_data,
  family = binomial(link = "logit"),
  prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
  prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
  seed = 100241
)

# Above model is not working because of the length of variables differs

saveRDS(cancer_model, "model/cancer_model.RDS")

         
