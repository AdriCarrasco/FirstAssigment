#Change directory
master_file <- read.csv("", sep = ";")

m_file <- master_file
m_file$Date <-as.Date(m_file$Date, format("%d/%m/%Y"))

master_file_two <- subset(m_file, Date >= as.Date("01/02/2007", format("%d/%m/%Y")))
master_file_two <- subset(master_file_two, Date <= as.Date("02/02/2007", format("%d/%m/%Y")))

master_file_two$Datetime <- paste(master_file_two$Date, master_file_two$Time)
master_file_two$Datetime <- as.POSIXct(master_file_two$Datetime, format= "%Y-%m-%d %H:%M:%S")
png(filename = "/Users/Acres/Desktop/FirstAssigment/plot2.png")
with(subset(master_file_two,Global_active_power != '?'), plot(Datetime,as.numeric(Global_active_power)/1000, main = "Global Active Power", xlab= "", ylab = "Global Active Power (kilowatts)", pch = "."))
with(master_file_two , lines(Datetime,as.numeric(Global_active_power)/1000))
dev.off()