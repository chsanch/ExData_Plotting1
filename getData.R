# check if the package sqldf is installed
a<-installed.packages()
packages<-a[,1] 
if (is.element("sqldf", packages) == FALSE) {
  install.packages("sqldf")
}
# load library sqldf
library('sqldf')

# function to load the data 
loadData <- function() {
  # Set the filename
  file <- "household_power_consumption.txt"
  # setting the dates limits 
  dates <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
  # getting the records from the file filtering with the SQL sentences
  data <- read.csv.sql(file, sql=dates, sep=";")
  # converting date and time in one field
  data$DateTime <- as.POSIXct(strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S"))
  # returning the data
  return(data)
}
