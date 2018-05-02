
# loading data
source('data.R')

# openning the device
png(filename='plot4.png',width=480,height=480,units='px')


# PLOTTING DATA

# 0. prepare the plot area
par(mfrow=c(2,2))

# 1. plot number 1
plot(data_selection$Time, data_selection$Global_active_power, ylab='Global Active Power (kilowatts)', xlab='', type='l')
# 2. plot number 2
plot(data_selection$Time, data_selection$Voltage, ylab='Voltage', xlab='datetime', type='l')
# 3. plot number 3
plot(data_selection$Time, data_selection$Sub_metering_1, type = 'l', col='black', xlab='', ylab = 'Energy sub metering')
lines(data_selection$Time, data_selection$Sub_metering_2, type = 'l', col='red')
lines(data_selection$Time, data_selection$Sub_metering_3, type = 'l', col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col= c('black','red','blue'),lty='solid')
# 4. plot number 4
plot(data_selection$Time, data_selection$Global_reactive_power, ylab='Global_reactive_power', xlab='datetime', type='l')

# Turning off the device
dev.off()