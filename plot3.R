plot3 <- function()
{
  
  
  data <- "./household_power_consumption.txt"
  data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  png('plot2.png',width=480,height=480)
  data$Date <- as.Date(data$Date, format="%d/%m/%Y")
  data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
  datetime <- paste(as.Date(data$Date), data$Time)
  data$Datetime <- as.POSIXct(datetime)
  png('plot3.png',width=480,height=480)
  plot(as.numeric(data$Sub_metering_1)~data$Datetime, type="l",ylab="Energy Sub Metering", xlab="")
  par(col='red')
  lines(data$Datetime,as.numeric(data$Sub_metering_2),type='l')
  par(col='blue')
  lines(data$Datetime,as.numeric(data$Sub_metering_3),type='l')
  par(col='black')
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1,col=c("black", "red", "blue"))
  dev.off()
  
  
}