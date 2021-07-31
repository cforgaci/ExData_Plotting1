url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!dir.exists("data")) dir.create("data")
if (!file.exists("data/hpc.zip")) {
  download.file(url, destfile = "data/hpc.zip")
  unzip("data/hpc.zip", exdir = "data")
}

# Read in the data
hpc <- read.table("data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# Keep only the data from the dates 2007-02-01 and 2007-02-02
hpc <- hpc[as.Date(hpc$Date, format = "%d/%m/%Y") %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")),]

# Plot 1: Global Active Power
hist(hpc$Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

# Plot 2
plot(hpc$Time, hpc$Global_active_power)

# Plot 3

# Plot 4
