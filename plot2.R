
# loading data
source('data.R')

# openning the device
png(filename='plot2.png',width=480,height=480,units='px')

# plotting data
plot(data_selection$Time, data_selection$Global_active_power, ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turning off the device
dev.off()