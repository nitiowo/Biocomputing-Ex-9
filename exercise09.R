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
