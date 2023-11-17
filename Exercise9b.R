# Exercise 9 - Biocomputing

#load in necessary packages
library(ggplot2)
library(cowplot)

#read necessary data to be working with
datatbl = read.table("~/Desktop/BIOCOMP/Biocomputing-Ex-9/data.txt", header = TRUE, sep=",", stringsAsFactors = FALSE)

# Part 2a: Barplot of the means of the four populations
ggplot(datatbl, aes(x = region, y = observations)) +
  geom_bar(stat = "identity", position = "dodge") +
  stat_summary(fun = mean, geom = "text", vjust = -0.5, aes(label = round(..y.., 2)), position = position_dodge(width = 0.9)) +
  labs(title = "Bar Plot with Mean Annotations",
       x = "Region",
       y = "Observations") +
  theme_classic()

# Part 2b: Scatterplot of all the observations
ggplot(datatbl,
       aes(x = region, y = observations)) +
  geom_point() +
  labs(title = "Scatterplot with Population Observations",
       x = "Region",
       y = "Observations") +
  geom_jitter() +
  theme_classic()

# Part 2c: Do the bar and scatter plots tell different stories?
#
# The bar and scatter plots do tell different stories. Where you really get a 
# general overview of the population means through the bar plot, the scatter 
# plot is really showing you how the population truly looks, and may even 
# expose a problem in looking at only these four general regions. For example, 
# the population in the south has a low mean that is being brought down by a 
# group, so this region may need to be split into two sections.


