setwd("~/Biocomputing-Ex-9/")

#### Question 1
data <- read.table("netflix.txt", header = TRUE, sep = "\t")
print(data)
# There are 2 random empty columns at the end so I will remove them first
data <- data[, -c(ncol(data)-1, ncol(data))] 
# Assign x and y titles 
x <- "Subscribers"
y <- "Revenue"
# Create scatter plot 
### I was getting errors plotting so I tried assigning my code to a variable and it worked
library(ggplot2)
library(cowplot)
# Create scatter plot with trend line
scatter_plot <- ggplot(data, aes(x = .data[[x]], y = .data[[y]])) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  xlab(x) + 
  ylab(y) + 
  ggtitle(paste("Scatter plot of", x, "vs", y, "w/ trend line")) 
# Print the scatter plot
print(scatter_plot)

#### Question 2
# Read data from the text file
data2 <- read.csv("data.txt")

# Generate a bar plot of the means of the four populations
bar_plot <- ggplot(data2, aes(x = region, y = observations)) +
  geom_bar(stat = "summary", fun = "mean", fill = "blue") +
  xlab("Region") + 
  ylab("Mean Observations") + 
  ggtitle(paste("Bar plot of means by region")) 

# Generate a scatter plot of all observations
scatter_plot2 <- ggplot(data2, aes(x = region, y = observations)) +
  geom_jitter(width = 0.2, height = 0, alpha = 0.7, color = "red") +
  xlab("Region") + 
  ylab("Observations") + 
  ggtitle(paste("Scatter plot of all observations")) 

# Print the plots
print(bar_plot)
print(scatter_plot2)

## Q: Do the bar and scatter plots tell you different stories? Why?
## A: Yes because the bar graph will tell you the mean of each region or average,
## but the scatter plot will tell you the distribution of the points. For the southern region
## on the bar graph it looks like the mean is 15 so you would expect the points to be clustered
## around 15, but you find out that there are actually 2 different clusters:
## on around 25 and one around 5 and it averages out to be arund 15. 