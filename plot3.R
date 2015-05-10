# Here I will reuse the POSIX date variable
# This plot will show the values for the three energy sub meters over the same 48-hour period

hpc.sm1 <- hpc.Project1$Sub_metering_1
hpc.sm2 <- hpc.Project1$Sub_metering_2
hpc.sm3 <- hpc.Project1$Sub_metering_3

png(file="plot3.png", bg="white")
plot(hpc.Date.Time.P, hpc.sm1, type="l", ylab="Energy sub metering1", xlab="", col = "black")
lines(hpc.Date.Time.P, hpc.sm2, type="l", ylab="Energy sub metering2", xlab="", col = "red")
lines(hpc.Date.Time.P, hpc.sm3, type="l", ylab="Energy sub metering3", xlab="", col="blue")
legend("topright", lty = 1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()