#Q1

setwd('C:/Users/chris/OneDrive/Desktop/R Files/BioComputing') #set the wd

library(tidyverse) #Load tidyverse
library(dplyr) #Load dplyr
brain <- read.csv("brain.txt") #save the data in the txt to a var

brain %>% #Pipe the var brain
  ggplot(aes(x = lnMass, y = lnBrain, color = species)) + #graph brain 
  geom_point() + #signal to R that we want a scatter plot
  geom_smooth(method = "lm") + #Line of best fit
  theme_classic() + #set the theme of the graph for aesthetic purposes
  xlab("ln(body mass)") + ylab("ln(brain size)") #label the axes

#Q2
data <- read.csv("data.txt") #save data in the txt to a var

data %>% #pipe the var data
  ggplot(aes(x=region, y=observations)) + #plot your x and y
  geom_bar(stat = "summary", fun = "mean") + #create bar plot with means
  xlab("Region") + ylab("Mean Obs") #x and y labels

data %>% 
  ggplot(aes(x=region, y=observations)) + #plot all the regions and observations
  geom_point() + #create scatter plot
  xlab("Region") + ylab("Mean Obs") #x and y labels 

#The bar plot simply provides the mean observations for each region
#The scatter plot show the range of observations, and allows us to begin
#to interpret any trends in the data. The bar plot does not suggest that
#there is much difference in the data itself. The scatter plot, however,
#shows us that their is significant differences in terms of std dev.
#And to be honest, I would prefer a violin plot for this data set.
#The violin plot is superior, as it will show the density of observations
#Look at the code below, for instance:

data %>% 
  ggplot(aes(x=region, y=observations)) + #plot all the regions and observations
  geom_violin() + #create violin plot
  xlab("Region") + ylab("Mean Obs") #x and y labels 

#Is this graph not significantly better???!!! and more informative??!!