
# loading data
source('data.R')

# openning the device
png(filename='plot3.png',width=480,height=480,units='px')


# plotting data
plot(data_selection$Time, data_selection$Sub_metering_1, type = 'l', col='black', xlab='', ylab = 'Energy sub metering')
lines(data_selection$Time, data_selection$Sub_metering_2, type = 'l', col='red')
lines(data_selection$Time, data_selection$Sub_metering_3, type = 'l', col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col= c('black','red','blue'),lty='solid')

# Turning off the device
dev.off()