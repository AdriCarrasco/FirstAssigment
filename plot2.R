master_file_two$Datetime <- paste(master_file_two$Date, master_file_two$Time)
master_file_two$Datetime <- as.POSIXct(master_file_two$Datetime, format= "%Y-%m-%d %H:%M:%S")
with(subset(master_file_two,Global_active_power != '?'), plot(Datetime,as.numeric(Global_active_power)/1000, main = "Global Active Power", xlab= "", ylab = "Global Active Power (kilowatts)", pch = "."))
with(master_file_two , lines(Datetime,as.numeric(Global_active_power)/1000))
