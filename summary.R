library(tidyverse)
library(dplyr)

prison_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-jail-rates-1990-WA.csv")

King_Kounty <- prison_data %>% filter(county_name=="King County")

KingCountyMaxVal <- max(King_Kounty$aapi_jail_pop_rate)
KingCountyMaxVal
