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