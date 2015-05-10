# plot2.R
# As a reminder, the objects created in plot1.R will be reused for this and the subsequent exercises.

# The lubridate package is very useful for handling dates and times. The function "parse_date_time" will
# be used to create a POSIX date object.
library(lubridate)

# Here I am converting from the two columns, Date and Time, to a single POSIX date object in two steps
# in order to make this clear for evaluators.
hpc.Date.Time <- paste(hpc.Project1$Date, hpc.Project1$Time, sep=" ") # Concatenate together the date and time strings
hpc.Date.Time.P <- parse_date_time(hpc.Date.Time, "dmy hms") # Create the POSIX date object for use in this and subsequent plots

png(file="plot2.png", bg="white") # Set the device to be a PNG file

plot(hpc.Date.Time.P, gap, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off() # Turn the current device for the PNG file off.