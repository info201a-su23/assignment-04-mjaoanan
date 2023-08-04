[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/A21hL4nA)
# Assignment 3: Incarceration

Link to your final GitHub pages site here: https://info-201a-sp22.github.io/a3-starter/index.html (change the link to for your GitHub pages site)

America is the country with the greatest number of people incarcerated in the world, and of all Americans, people of color, especially Black people, are incarcerated at disproportionately high rates — the result of both historical and present-day racism. But just how much have prison and jail populations increased over time, and how do race and gender figure into these trends? How, if at all, can a deeper analysis of these trends help identify possible solutions and areas where the public needs to pay more attention?

In this assignment, you will use your data analysis and visualization skills to expose patterns of inequality using incarceration data collected by the [Vera Institute](https://github.com/vera-institute/incarceration-trends). You will create an R Markdown file and share it as a small website via GitHub pages.

This assignment is more open-ended than previous ones. You will be tasked with understanding the data itself, choosing the variables you want to analyze, and deciding the optimal way to write your code. 

# Data

The data for this assignment comes from the [Vera Institute](https://github.com/vera-institute/incarceration-trends). We have split the full data into a number of smaller, separate files to make it easier to work with (these are the raw CSV files so you can right-click to copy and paste them):
- [Dataset about prison population per county/state](https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-pop.csv?raw=true)
- [Dataset about jail population per county/state](https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-jail-pop.csv?raw=true)
- [Dataset about prison/jail population per 100,000 people (rate) per county/state](https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-jail-rates.csv?raw=true)
- [Smaller dataset about prison/jail population per 100,000 people (rate) per county/state starting at 1990](https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-jail-rates-1990.csv?raw=true)
- [Smaller dataset about prison/jail population per 100,000 people (rate) per county/state starting at 1990 in Washington](https://github.com/melaniewalsh/Neat-Datasets/raw/main/us-prison-jail-rates-1990-WA.csv)

You can work with any or all of these datasets for your analysis.

A few more notes:
- Even though this data is smaller, it may still take about a minute to load because it's large. Feel free to save a copy of the data (or a subset of it) in your directory
- Follow this [link to download the "Codebook"](https://github.com/vera-institute/incarceration-trends/blob/master/incarceration_trends-Codebook.pdf) that explains the meaning of each variable. You'll need to understand what each variable represents, so read carefully!
- Beware of missing values. When choosing what to visualize, you will want to focus on a particular location and/or year that has sufficient data (note, this varies across the variables)
- Take your time. You should expect to spend at least a few hours studying the data and the documentation to understand the structure of this data set. Be patient!

# Assignment Structure

For this assignment, you will create an .Rmd report about incarceration in the U.S., which must include:

- An introduction of the problem domain and a description of the variable(s) you are choosing to analyze (and why!)
- A paragraph of summary information, citing at least 5 values calculated from the data
- A description of the dataset, who collected it, why, and any limitations or problems with the data
- A chart that shows trends over time for a variable of your choice
- A chart that compares two variables to one another
- A map that shows how your measure of interest varies geographically
