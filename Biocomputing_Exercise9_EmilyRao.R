###Biocomputing Tutorial Exercise 9
##Emily Rao

#go to directory
setwd("C://Users/emRao/Biocomputing-Ex-9")

#load packages
library(ggplot2)


##Question 1
#load dataset
active <- read.csv("active.csv", header=T)
head(active)

#create scatter plot of Mini Mental State Examination (MMSE) score and reason
ggplot(data=active, aes(x=reason, y=mmse)) +
  geom_point(color="navy") + 
  stat_smooth(method="lm") +
  ggtitle("Relationship between MMSE Score and Reason") +
  xlab("Reason Score") +
  ylab("MMSE Score")


##Question 2
#load data.txt
data <- read.table("data.txt", header=T, sep=",", stringsAsFactors=F)
head(data)

#barplot figure
ggplot(data=data, aes(x=region, y=observations)) +
  stat_summary(geom="bar", fun="mean", fill="darkred") + 
  ggtitle("Bar Plot of Mean Observations by Region") +
  xlab("Region") +
  ylab("Observations")

#scatter plot figure
ggplot(data=data, aes(x=region, y=observations)) +
  geom_jitter(color="darkgreen") +
  ggtitle("Scatter Plot of Observations") +
  xlab("Region") +
  ylab("Observations")

##Answers to questions from Q2:
#The bar plot gives us the average number of observations for each region,
#which is helpful for comparing mean differences between each region.
#Meanwhile, the scatter plot shows us individual data points for all observations,
#which is useful for looking at trends and the spread of values in the 
#observation data both within and between regions.
  