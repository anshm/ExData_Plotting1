plot2 <- function()
{
  
  data <- "./household_power_consumption.txt"
  data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  png('plot2.png',width=480,height=480)
  data$Date <- as.Date(data$Date, format="%d/%m/%Y")
  data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
  datetime <- paste(as.Date(data$Date), data$Time)
  data$Datetime <- as.POSIXct(datetime)
  png('plot2.png',width=480,height=480)
  plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
  
  
}