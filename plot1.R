plot1 <- function()
{
  data <- "./household_power_consumption.txt"
  data <- data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  png('plot1.png',width=480,height=480)
  
  x <- as.numeric(data$Global_active_power)
  hist(x,col='red',xlab="Global Active Power(kilowatts)",main="Global Active Power")
  
  dev.off()
  
}