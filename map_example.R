library(maps)
library(ggmap)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(tidyr)
library(stringr)

prison_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/us-prison-jail-rates-1990-WA.csv")
data_2016 <- prison_data %>%
  filter(year == 2016)

data_2016$county_name <- gsub("County", "", data_2016$county_name)

## MAP 

us_map <- map_data("state")

county_map <- map_data("county", "washington")

## center text
county_centers <- county_map %>%
  group_by(subregion) %>%
  summarise(center_long = mean(range(long)), center_lat = mean(range(lat)))
county_centers$county_name <- str_to_title(county_centers$subregion)

# Merge data
data_2016 <- data_2016 %>%
  select(county_name, black_prison_pop_rate)

data_2016 <- merge(data_2016, county_centers, by.x = "county_name", by.y = "county_name", all = TRUE)

data_2016$black_prison_pop_rate[is.na(data_2016$black_prison_pop_rate)] <- 0

## Draw Washington
county_map_plot <- ggplot() +
  geom_polygon(data = county_map, aes(x = long, y = lat, group = group), 
               fill = NA, color = "black") +
  geom_text(data = county_centers, aes(x = center_long, y = center_lat, label = county_name), 
            hjust = 0.5, vjust = 0.5, size = 3, color = "black") +
  coord_fixed(ratio = 1.3) +
  theme_void()

print(county_map_plot)

county_map_plot <- ggplot() + 
  geom_polygon(data = data_2016, aes(x = center_long, y = center_lat, fill = black_prison_pop_rate)) +
  scale_fill_continuous(low = "grey", high = "red")

county_map_plot
