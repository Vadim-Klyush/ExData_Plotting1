# set working directory (change this to fit your needs)
setwd("C:/Users/Vadim/Documents/IT_Education/Exploratory_Data_Analysis/Assignment1")

# make sure the plots folder exists
if (!file.exists('plots')) {
        dir.create('plots')
}

# load data
source("Loading_the_data.R")

# open device
png(filename='plots/plot3.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power.consumption$DateTime,power.consumption$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=lncol[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=lncol[3])

# add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

# close device
x<-dev.off()
