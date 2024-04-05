#### Preamble ####
# Purpose: Simulates 
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(arrow)

gender = c("Male", "Female")
age_group = c("0~19", "20~39", "40~59", "60~79", "80~99")
cancer_type = c("Breast", "Liver", "Lung", "Colon", "Pancreas", "Skin", "Other")
consequence = c("Recovered", "Death")
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



