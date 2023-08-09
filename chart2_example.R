library(maps)
library(ggmap)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(tidyr)

prison_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-jail-rates-1990-WA.csv")


## GRAPH 2

race_Comparison <- prison_data %>%
  filter(complete.cases(black_prison_pop_rate), complete.cases(white_prison_pop_rate)) %>%
  select (year, black_prison_pop_rate, white_prison_pop_rate) %>%
  gather (key = Race, value = population, -year)

comparisonGraph <- ggplot(race_Comparison) +
  geom_col(mapping = aes(x = year, y = population, fill = Race))
comparisonGraph
