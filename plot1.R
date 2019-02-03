#Change directory
master_file <- read.csv("", sep = ";")

m_file <- master_file
m_file$Date <-as.Date(m_file$Date, format("%d/%m/%Y"))

master_file_two <- subset(m_file, Date >= as.Date("01/02/2007", format("%d/%m/%Y")))
master_file_two <- subset(master_file_two, Date <= as.Date("02/02/2007", format("%d/%m/%Y")))

png(filename = "/Users/Acres/Desktop/FirstAssigment/plot1.png")
with(subset(master_file_two,Global_active_power != '?'), hist(as.numeric(Global_active_power)/1000,breaks = 20,col = 'red',xlim = c(0,6), main = "Global Active Power", xlab= "Global Active Power(kilowatts)"))
dev.off()
