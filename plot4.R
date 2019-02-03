#Change directory
master_file <- read.csv("", sep = ";")

m_file <- master_file
m_file$Date <-as.Date(m_file$Date, format("%d/%m/%Y"))

master_file_two <- subset(m_file, Date >= as.Date("01/02/2007", format("%d/%m/%Y")))
master_file_two <- subset(master_file_two, Date <= as.Date("02/02/2007", format("%d/%m/%Y")))

master_file_two$Datetime <- paste(master_file_two$Date, master_file_two$Time)
master_file_two$Datetime <- as.POSIXct(master_file_two$Datetime, format= "%Y-%m-%d %H:%M:%S")
png(filename = "/Users/Acres/Desktop/FirstAssigment/plot4.png")
par(mfrow = c(2,2))
with(master_file_two,{plot(x = Datetime, y = as.numeric(Global_active_power)/1000,pch = ".", ylab = "Global Active Power", xlab = "")
  lines(x = Datetime, y = as.numeric(Global_active_power)/1000)})
with(master_file_two,{plot(x = Datetime, y = as.numeric(Voltage),pch = ".", ylab = "Voltage", xlab = "")
  lines(x = Datetime, y = as.numeric(Voltage))
})
with(master_file_two, {
  plot(x = Datetime, y = Sub_metering_1, type = "n", pch = ".", ylab = "Energy sub metering", xlab = "")
  lines(x = Datetime, y = Sub_metering_1)
  lines(x = Datetime, y = Sub_metering_2,col = "red")
  lines(x = Datetime, y = Sub_metering_3, col = "blue")
})
legend( "top", col = c("black", "red", "blue"),pch = "-", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
with(master_file_two,{plot(x = Datetime, y = as.numeric(Global_reactive_power),pch = ".", ylab = "Global Reactive Power", xlab = "")
  lines(x = Datetime, y = as.numeric(Global_reactive_power))}) 

dev.off()