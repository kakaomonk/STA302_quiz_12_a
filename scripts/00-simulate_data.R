#### Preamble ####
# Purpose: Simulates cancer data
# Author: Hyungsoo Park
# Date: 04 April 2024
# Contact: hyungsoo.park@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(arrow)

gender = c("Male", "Female")
age_group = c("0~19", "20~39", "40~59", "60~79", "80~99")
cancer_type = c("Breast", "Liver", "Lung", "Colon", "Pancreas", "Skin", "Other")
consequence = c(0, 1) # 0 means recovered, and 1 means death
hospital = c("Westmead Hospital ",
             "Concord Repatriation General Hospital",
             "Sydney Adventist Hospital",
             "4th_hospital",
             "5th_hospital")

#### Simulate data ####

# set seed
set.seed(1005415488)

# simulate 10000 times
num_sim = 10000

simulate_cancer = tibble(
  Gender = sample(gender, num_sim, replace = TRUE),
  Age_Group = sample(age_group, num_sim, replace = TRUE),
  Cancer_Type = sample(cancer_type,num_sim, replace = TRUE),
  Consequence = sample(consequence,num_sim, replace = TRUE),
  Hospital = sample(hospital,num_sim, replace = TRUE)
)

write.csv(simulate_cancer, "data/cancer_simulation.csv")

