# Load script to get data
source("getData.R")
# get data
pdata <- loadData()
# prepare the png file
png(file="plot4.png",
    bg = "white",
    width = 480,
    height = 480,
    units = "px")
# configure the device for 2 columns and 2 rows
par(mfrow=c(2,2))
# plot 1
plot(pdata$DateTime, pdata$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")
# plot 2
plot(pdata$DateTime, pdata$Voltage, type="l",
     xlab="datetime", ylab="Voltage")
# plot 3
plot(pdata$DateTime, pdata$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(pdata$DateTime, pdata$Sub_metering_2, col="red")
lines(pdata$DateTime, pdata$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)
# plot 4
plot(pdata$DateTime, pdata$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(pdata$DateTime, pdata$Global_reactive_power)
# closing the device
dev.off()