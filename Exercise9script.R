#Conde
#load in plotting package
library(ggplot2)

#Question1
#Im the "Physical Readiness Officer" in ROTC and am in charge of administering the Army Physical Fitness Test (APFT) to the cadets
#This script aims to confirm/deny a correlation between APFT score and Cadet weight (both of which I have access to)
#First load the text file that contains data on Cadet's weight and APFT score in 2023
scores<-read.table("apft.txt",header=TRUE,sep="\t", stringsAsFactors = FALSE)
dim(scores)
#This creates a scatter plot of "cadet weight" vs "APFT score"
ggplot(scores,aes(x=weight,y=score)) + geom_point() + 
xlab("Cadet Weigth (lbs.)") + ylab("APFT scores (out of 600)") + stat_smooth(method="lm") + theme_classic()

#Question2
#This loads data.txt
data<-read.table("data.txt",header=TRUE,sep=",",stringsAsFactors = FALSE)
dim(data)

#First plot: barplot of the means of the 4 populations
ggplot(data=data, aes(x=region,y=observations)) + stat_summary(fun.y="mean",geom="bar") + 
xlab("Population") + ylab("Observation Averages") + theme_classic()

#Second plot: scatterplot
ggplot(data=data, aes(x=region,y=observations)) +
geom_jitter() + xlab("Population") + ylab("Observations") + theme_classic()
#The barplots and scatterplots tell different stories, the barplot only tells about the average, not the distribution
#Scatterplot gives a more wholistic picture of because it provides insights into the distribution
#The barplot shows that the averages of the populations are similar, but the scatterplot shows the distribution and stdev varies greatly between population
