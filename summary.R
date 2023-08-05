library(maps)
library(ggmap)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(tidyr)

prison_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-jail-rates-1990-WA.csv")

King_Kounty <- prison_data %>% filter(county_name=="King County")

graph1 <- ggplot(prison_data) + 
  geom_col(mapping = aes(
    x= year, y = black_jail_pop_rate
  ))

race_Comparison <- prison_data %>%
  filter(complete.cases(black_prison_pop_rate), complete.cases(white_prison_pop_rate)) %>%
  select (year, black_prison_pop_rate, white_prison_pop_rate) %>%
  gather (key = Race, value = population, -year)

comparisonGraph <- ggplot(race_Comparison) +
  geom_col(mapping = aes(x = year, y = population, fill = Race))


us_map <- map_data("state")

county_map <- map_data("county","washington")

county_centers <- county_map %>%
  group_by(subregion) %>%
  summarise(center_long = mean(range(long)), center_lat = mean(range(lat)))
county_centers$county_name <- str_to_title(county_centers$subregion)

county_map_plot <- ggplot() +
  geom_polygon(data = county_map, aes(x = long, y = lat, group = group), 
               fill = NA, color = "black") +
  geom_text(data = county_centers, aes(x = center_long, y = center_lat, label = county_name), 
            hjust = 0.5, vjust = 0.5, size = 2, color = "black") +
  coord_fixed(ratio = 1.3) +
  theme_void()
print(county_map_plot)

