# Load script to get data
source("getData.R")
# get data
hdata <- loadData()
# prepare the png file
png(file="plot1.png",
    bg = "white",
    width = 480,
    height = 480,
    units = "px")
# setting a limit for the y axis
lim <- c(0,1200)
# creating the histogram
hist(hdata$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab = "Frequency",
     col="red",
     ylim=lim )
# closing the device
dev.off()
