#Exercise 9

##load in data.txt
dat <- read.table("data.txt", header=TRUE, sep=",")

##barplot of means
###Establish means of each 
north <- dat[dat$region =="north",]
mnorth <- mean(north$observations)
south <- dat[dat$region =="south",]
msouth <- mean(south$observations)
east <- dat[dat$region =="east",]
meast <- mean(east$observations)
west<- dat[dat$region =="west",]
mwest <- mean(west$observations)

###combine into a single vector, create a vector for region, and combine the two into a single df
region_mean <- c(mnorth,msouth,meast,mwest)
region <- c("north","south","east","west")
meandf <- data.frame(region,region_mean)

###create a barplot
ggplot(meandf, aes(x=region,y=region_mean))+
  geom_bar(stat="identity",aes(fill=region))+
  xlab("Region")+
  ylab("Mean Observation")

##create a scatter plot of all obs
ggplot(dat, aes(x=region,y=observations))+
  geom_jitter(aes(region,observations,color=factor(region)))

##Do the bar and scatter plots tell a different story? Why?
###Yes, these tell different stories. The bar plot gives the average of all the data by region, but does not show other important statistics such as the range of points. The scatter plot gives a better idea of this, showing how many points are spread between what range. They give a larger picture of what the data set looks like as a whole instead of just the average across the whole region.