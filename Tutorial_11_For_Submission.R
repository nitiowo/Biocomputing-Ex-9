#Tutorial 11 For Submission

#Import libraries and data
library(ggplot2)
library(cowplot)
data <- read.table("C:/Users/grace/Desktop/Biocomputing 2023/R/Tutorials/Biocomputing-Ex-9/data.txt", sep = ',', header = TRUE)
height_weight_data <- read.csv("C:/Users/grace/Desktop/Biocomputing 2023/R/Tutorials/Biocomputing-Ex-9/Height and Weight Data.csv")

#Exercise 1 (similar to the scatter plot examples in class)
#This graph takes a moment to load because there are 25,000 observations.
ggplot(data = height_weight_data, 
       aes(x = Height.Inches., y = Weight.Pounds.)) +
  geom_point(size = 0.25) +
  xlab("Height (inches)") +
  ylab("Weight (pounds)") +
  stat_smooth(method="lm") +
  theme_classic() +
  theme(legend.title=element_blank())

#Exercise 2 
#Bar graph of the means of the four populations (similar to the bar plot example in today's tutorial)
plot2_1 <- ggplot(data = data, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean,
               geom = "bar") +
  xlab("Region") +
  ylab("Average observation")
  theme_bw()
plot2_1
#Scatter plot of all of the observations
plot2_2 <- ggplot(data = data, 
       aes(x=region,y=observations)) +
  geom_point() +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
plot2_2
#Put these two plots together to compare them (as done in lecture)
fig1 <- plot_grid(plot2_1, plot2_2, 
                  labels = c("A", "B"),
                  rel_widths = c(0.75, 1),
                  ncol = 2,
                  nrow = 1)
fig1
#Answer:
#The two graphs do tell different stories: the bar graph shows how the 
 #averages for each region compare to each other, whereas the scatter
 #plot demonstrates the spread of the data within each region. For
 #example, the scatter plot demonstrates that the observations from the
 #southern region have a bimodal distribution, which the bar graph does
 #not show.