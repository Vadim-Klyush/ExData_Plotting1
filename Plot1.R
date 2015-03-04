# set working directory (change this to fit your needs)
setwd("C:/Users/Vadim/Documents/IT_Education/Exploratory_Data_Analysis/Assignment1")

# make sure the plots folder exists
if (!file.exists('plots')) {
        dir.create('plots')
}

# load data
source("Loading_the_data.R")

# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()


