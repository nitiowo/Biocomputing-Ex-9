#Exercise 9 R Script

##Start by setting working directory to one that includes needed files!
setwd("/Users/katejackowski/Documents/Biocomputing/Exercise9/")

#1) Using the data from another class on monet paintings.
##dataset = monet.csv but delimiter is ; 
## Script needs to load the file into R 
read.csv("monet.csv", header = TRUE, sep = ";", stringsAsFactors = FALSE)
##Store data of file as variable named monet
monet <- read.csv("monet.csv", header = TRUE, sep = ";", stringsAsFactors = FALSE)
##Create a scatterplot of two variables that includes a trend line
###Load in ggplot package in order to use it
library(ggplot2)
###monet.csv has multiple variables so I will use price and height as variables!
ggplot(data = monet, 
       aes(x = height, y = price)) + 
  geom_point() +
  stat_smooth(method="lm") +
  theme_classic()

#2) Load in the data from data.txt
data <- read.csv("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)
##Create a bar plot of the means of the four populations
ggplot(data, aes(x = region, y = observations)) +
  geom_col() + 
  stat_summary(fun = mean,
               geom = "point")
##Create a scatter plot of all of the observations.
ggplot(data = data, 
       aes(x= region, y = observations)) +
  geom_point() + 
  geom_jitter()

### Question: Do the bar and scatter plots tell you different stories? Why?
####Yes, the bar and scatter plots tell different stories than eachother. The bar chart shows that the means of the four different regions are similar just because they are so high and seem close visually. 
####Conversely, the scatter plot shows how the regions are very different. 
#### The scatter plot shows a lot more information about the spread of the data. 
#### For example, it shouws that te observations in the North are super close together while the observations in the west are very uniformly spread out. 
#### Overall, the bar plot makes it look like the regions are very similar, and the scatter plot makes the regions look very different in terms of distribution of observations. 
