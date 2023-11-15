#Exercise 9 Question 1

#Setting working directory for Exercise 1
setwd("/Users/jsobo/OneDrive/Documents/Intro to Biocomputing/Biocomputing-Ex-9/")
#Accessing the ggplot function and creating a scatter plot with a linear line of best fit 
library("ggplot2")
Length_Vs_Width_Data <- read.csv("Sepal.Length_Sepal.Width.txt")
ggplot(Length_Vs_Width_Data, aes(x=Sepal.Length, y=Sepal.Width))+
  geom_point() +
  xlab("Length(cm)") +
  ylab("Width(cm)") +
  theme_classic() +
#line of best fit
  stat_smooth(method="lm")

#Exercise 9 Question 2
#Loading the data in
Ex9_Data <- read.csv("data.txt")
#Creating the bar plot with means of the four population
ggplot(Ex9_Data, aes(x=region, y=observations)) +
stat_summary(fun.y = mean, geom = "bar") +  
xlab("Region") +
ylab("Observations") 

#Creating a scatter plot of all Data
ggplot(Ex9_Data, aes(x=region, y=observations))+
xlab("Region") +
ylab("Observations") +
geom_jitter()

#Answer to sub question 2,"Do the bar and scatter plots tell you
#different stories? Why?" 
# Yes the two plots tell different stories. The bar plot gives the indication that the four regions have very similar observations on average. Whereas the scatter plot with all the data shows a much bigger difference between the region observation. We can see that the North is the only one with observation gernally around 15 all the other regions have a much greater distribution. This is shown because the bar plot mean doesn't account for the variability of data points and scatter plots shows all the observations and you can see the variability of data points.  


  



