with(master_file_two, {
  plot(x = Datetime, y = Sub_metering_1, type = "n", pch = ".", ylab = "Energy sub metering", xlab = "")
  lines(x = Datetime, y = Sub_metering_1)
  lines(x = Datetime, y = Sub_metering_2,col = "red")
  lines(x = Datetime, y = Sub_metering_3, col = "blue")
})
legend( "top", col = c("black", "red", "blue"),pch = "-", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

