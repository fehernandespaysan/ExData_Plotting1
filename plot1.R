
# loading data
source('data.R')

# openning the device
png(filename='plot1.png',width=480,height=480,units='px')

# plotting data
hist(data_selection$Global_active_power, main= "Global Active Power", xlab="Global Active Power (Kilowatts)", col= "red")

# Turning off the device
x<-dev.off()