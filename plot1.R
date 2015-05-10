# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Project Note: Because all four exercises in the project use the same dataset, and the last exercise reuses two of
# the plots in its grid of plots, I will not be recreating the dataframe in each exercise. I will assume
# that anyone looking this over will keep the dataframes, vectors and other objects in their environment
# so that they can be reused in subsequent exercises.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# plot1.R
# The file containing the dataset was downloaded and saved in the working directory. The file was then inspected the  
# using TextWrangler in order to find out how the columns of data were delimited. It was discovered
# that the delimiter is the semicolon (;). In addition, the instructions for the project
# indicated that unknown data is indicated using "?".

# The readr package is used as it is able to read in large files quickly. 

library(readr)

# The file was read it in its entirety since I have 16GB of RAM. 
hpc <- read_delim("household_power_consumption.txt", delim=";", na="?")

# Check to make sure the data came in as expected:
head(hpc)
tail(hpc)
str(hpc)

# Use grep to identify the indices where the dates are either "1/2/2007" or "2/2/2007",
# where the date is in the dmy format. Use the indices to then create a new dataframe of all 9
# variables but for just the dates required for this project. This dataframe will be used 
# in the rest of the code for the other variables. 
hpc_days_index <- grep("(^1/2/2007)|(^2/2/2007)", hpc$Date)
hpc.Project1 <- hpc[hpc_days_index,]

# Now place the values of Global_active_power into the vector "hpc.gap"
hpc.gap <- hpc.Project1$Global_active_power

# Check on maximum value to set the correct breaks
max(hpc.gap) # 7.482

# Create a vector of values used for the breaks in the histogram
cuts <- c(0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0, 6.5, 7.0, 7.5)

# Set the output device to PNG, then create the histogram with the appropriate formatting.
png(file="plot1.png", bg="white")
hist(hpc.gap, breaks = cuts, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Turn the current device for the PNG file off.
dev.off()