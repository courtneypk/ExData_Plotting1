# plot3.R
# As a reminder, the objects created in plot1.R and plot2.R will be reused for this and the subsequent exercises.
# This plot will show the values for the three energy sub-meters over the same 48-hour period

# Create a vector for each sub-meter
hpc.sm1 <- hpc.Project1$Sub_metering_1
hpc.sm2 <- hpc.Project1$Sub_metering_2
hpc.sm3 <- hpc.Project1$Sub_metering_3

# This plot is created in four steps:
# 1. Create the base plot area using the data from hpc.sm1.
# 2. Add plot lines for hpc.sm2.
# 3. Add plot lines for hpc.sm3.
# 4. Add the legend using the same colors for the lines as were used in the plots of the data for the
#    respective sub-meters' data.
png(file="plot3.png", bg="white") # Set the device to be a PNG file

plot(hpc.Date.Time.P, hpc.sm1, type="l", ylab="Energy sub metering1", xlab="", col = "black")
lines(hpc.Date.Time.P, hpc.sm2, type="l", ylab="Energy sub metering2", xlab="", col = "red")
lines(hpc.Date.Time.P, hpc.sm3, type="l", ylab="Energy sub metering3", xlab="", col="blue")
legend("topright", lty = 1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off() # Turn the current device for the PNG file off.