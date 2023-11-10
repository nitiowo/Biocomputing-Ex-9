#Tutorial 11 For Submission

#Import libraries and data
library(ggplot2)
library(cowplot)
data <- read.table("C:/Users/grace/Desktop/Biocomputing 2023/R/Tutorials/Biocomputing-Ex-9/data.txt", sep = ',', header = TRUE)
height_weight_data <- read.csv("C:/Users/grace/Desktop/Biocomputing 2023/R/Tutorials/Biocomputing-Ex-9/Height and Weight Data.csv")

#Exercise 1
ggplot(data = height_weight_data, 
       aes(x = Height.Inches., y = Weight.Pounds.)) +
  geom_point() +
  xlab("Height (inches)") +
  ylab("Weight (pounds)") +
  stat_smooth(method="lm") +
  theme_classic() +
  theme(legend.title=element_blank())

#Exercise 2