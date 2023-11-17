#The data set I am using records the Height and Weight of Major League Baseball Players (as well as other factors but I am ignoring those). I accessed this data through Kaggle and it is not provided who it was originally collected by
#I set my working directory in R to where I have the file baseball_players.csv saved to
baseball_players <- read.csv("baseball_players.csv")

library(ggplot2)
ggplot(baseball_players, aes(x=Weight.pounds., y=Height.inches.))+
  geom_point()+
  geom_smooth(method = "lm", se = FALSE)+
  labs(title="Relationship Between Height and Weight of Major League Baseball Players",
       x = "Weight (lbs)",
       y = "Height (in)")

#load in data.txt as a .csv file
data <- read.csv("data.txt", header = TRUE)
write.csv(data, file="data.csv", row.names=FALSE)

#generate a barplot

west <- data[data$region == "west", ]
mean_west <- mean(west$observations)

east <- data[data$region == "east", ]
mean_east <- mean(east$observations)

north <- data[data$region == "north", ]
mean_north <- mean(north$observations)

south <- data[data$region == "south", ]
mean_south <- mean(south$observations)

means <- c(mean_west, mean_east, mean_north, mean_south)

barplot(means, names.arg= c("west", "east", "north", "south"),
        xlab = "Region", ylab = "Mean Observations")

#scatterplot
ggplot(data, aes(x = region, y = observations)) +
  geom_point(alpha = 0.1) +  
  xlab("Region") +
  ylab("Observations")

#The barchart shows that the mean for each of these regions are very close to each other. All means are very close to 15. However the scatterplot shows how varied the individual data points are for each region. There is extremely little variability in the north region, however the other regions have a very large data spread. The south region has 2 distinct regions of data centered at 5 and 25.