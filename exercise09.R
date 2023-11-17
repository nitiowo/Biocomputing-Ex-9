# Exercise 09 
# Matthew Eleazar

## Part 1
library(ggplot2)


billionaires <- read.csv("billionaires.csv", header = TRUE)

ggplot(data = billionaires,
       aes(x = age, y = finalWorth)) +
  geom_point() +
  xlab("Age") +
  ylab("Net Worth (in Billions of $s)") +
  stat_smooth(method="lm") +
  theme_classic()

## Part 2
# Bar plot
data <- read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

means <- aggregate(data$observations, by = list(data$region), FUN = mean)

colnames(means) <- c("Region", "MeanObservations")
ggplot(data = means, aes(x = Region, y = MeanObservations)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(x = "Region", y = "Mean Observations", title = "Mean Observations by Region")

# Scatter Plot
ggplot(data, aes(x = region, y = observations)) +
  geom_jitter(width = 0.2, height = 0, alpha = 0.5) +
  labs(x = "Region", y = "Observations") +
  ggtitle("Observations by Region with Jitter")

# The bar plot and the scatter plot both tell different stories because
# the bar plot only tells you the differences in the mean number
# of observations per region while the scatter plot incorporates into the visualization
# the spread of the observations per region. As you can see, the north and south regions
# have observation that clump up to around the same number while the east and west regions
# have a wide spread of numbers of observations. 