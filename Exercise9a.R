# Exercise9a.R

#load in necessary packages
library(ggplot2)
library(cowplot)

#read necessary data to be working with
Productivity = read.csv("~/Desktop/BIOCOMP/FortniteProductivity.csv", header = TRUE, sep=",", stringsAsFactors = FALSE)

dim(Productivity)

# Plotting data from own life
ggplot(Productivity,
       aes(x = hours, y = rating)) +
  geom_point() +
  xlab("Hours of Fortnite (hr/day)") +
  ylab("Daily Productivity (10pt scale)") +
  stat_smooth(method="lm") +
  theme_classic()

# Hours of fortnite played vs. daily productivity