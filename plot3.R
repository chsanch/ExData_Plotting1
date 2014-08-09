# Load script to get data
source("getData.R")
# get data
pdata <- loadData()
# prepare the png file
png(file="plot3.png",
    bg = "white",
    width = 480,
    height = 480,
    units = "px")
# creating the plot
plot(x=pdata$DateTime,y=pdata$Sub_metering_1,type="l",
     xlab="",ylab="Energy sub meetering")
lines(x=pdata$DateTime,y=pdata$Sub_metering_2, type="l",col="red")
lines(x=pdata$DateTime,y=pdata$Sub_metering_3, type="l",col="blue")
#legendTxt <-c("Sub Meetering 1","Sub Meetering 2", "Sub Meetering 3")
legend("topright",c("Sub_metering 1","Sub_metering 2", "Sub_metering 3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","blue","red"))
# closing the device
dev.off()