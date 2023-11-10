#Exercise 9

###Set working directory to the local repo
setwd("C:/Users/cdmix/Desktop/Biocomputing/Biocomputing-Ex-9/")

##Data on two variables to be related. Enter into a text file, save the text file. Write a script file to load this and produce a scatter plot that includes a trend line.
library("ggplot2")
screen_usage <- read.table("variables.txt", header=TRUE, sep="\t")
ggplot(data = screen_usage,
       aes(x = screen_time, y = academic_committment)) +
  geom_point() +
  xlab("Daily Screen Time (mins)") +
  ylab("Daily Class and Meeting Time (mins)") +
  stat_smooth(method="lm") +
  theme_classic()
