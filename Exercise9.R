#Question 1
#library accessing ggplot function
library(ggplot2)

#set working directory
setwd("/Users/izabellalopez/Junior_yr/Biocomputing/Biocomputing-Ex-9")

#reading in data
baseball.data <- read.table("baseball2011.txt", header = TRUE)

#creating scatter plot with trendline
ggplot(baseball.data, 
       aes(x=ERA, y=Win)) + 
  xlab("ERA") + 
  ylab("Win Percentage") + 
  geom_point(colour='blue') + 
  geom_smooth(method= "lm", se = FALSE, col='red') 


#Question 2
#read in data
given_data <- read.table("data.txt", sep = ",", header = TRUE)

#bar plot
ggplot(data = given_data, 
       aes(x = region, y = observations)) + 
  stat_summary(fun.y = mean, geom = "bar") +
  xlab("Region") +
  ylab("Mean Observations") 

#scatter plot of observations
ggplot(data = given_data,
       aes(x = region, y = observations)) + 
  xlab("Region") +
  ylab("Observations") +
  geom_jitter()

#Yes, the plots tell different stories; while the bar plot provides the  
#mean values of each region, the scatterplot provides other statistical
#information such as the spread and range of the observations. Scatter plot can
#provide more information than the bar plot. 

  

         
        

