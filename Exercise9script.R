#Conde Exercise 9
#Set working directory
setwd("/Users/mikeconde/Desktop/Biocomp/Rpractice")
#load in plotting package
library(ggplot2)

#Question1
#Im the "Physical Readiness Officer" in ROTC and am in charge of administering the Army Physical Fitness Test (APFT) to the cadets
#This script aims to confirm/deny a correlation between APFT score and Cadet weight (both of which I have access to)
#First load the text file that contains data on Cadet's weight and APFT score in 2023
scoresdata<-read.csv("apft.txt")
#This creates a scatter plot of "cadet weight" vs "APFT score"
ggplot(scoresdata, aes(x=weight, y=score)) + geom_point() + 
xlab("Cadet Weigth (lbs.)") + ylab("APFT scores (out of 600)") + theme_bw() + stat_smooth(method="lm")

#Question2
#This loads data.txt
data<-read.csv("data.txt")
#First plot: barplot of the means of the 4 populations
ggplot(data, aes(x=region, y=observations)) + stat_summary(fun = mean, geom = "bar") + 
xlab("Region") + ylab("Observations") + theme_classic()

#Second plot: scatterplot
ggplot(data, aes(x=region, y=observations)) +
xlab("Region") + ylab("Observations") + geom_jitter() + theme_classic()

#The barplots and scatterplots tell different stories, the barplot only tells about the average, not the distribution
#Scatterplot gives a more wholistic picture of because it provides insights into the distribution
#The barplot shows that the averages of the populations are similar, but the scatterplot shows the distribution and stdev varies greatly between population
