library(maps)
library(ggmap)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(tidyr)

prison_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-jail-rates-1990-WA.csv")

graph1 <- ggplot(prison_data) + 
  geom_col(mapping = aes(
    x= year, y = black_prison_pop_rate
  ))
graph1
