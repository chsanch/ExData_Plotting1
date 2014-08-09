# Load script to get data
source("getData.R")
# get data
pdata <- loadData()
# prepare the png file
png(file="plot2.png",
    bg = "white",
    width = 480,
    height = 480,
    units = "px")
# creating the plot
plot(pdata$DateTime, pdata$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
# closing the device
dev.off()
