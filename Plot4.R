## Exploratory Data Analysis on Coursera
## Project 1
##########################################################################################

##########################################################################################
## Plot 3, Commenting out the first part, since these steps have been done through plot 1
##########################################################################################

###################################################################
## Downloading the data
## Record the date and time the data was downloaded
## "Thu Jul 09 14:23:55 2014"
###################################################################
## dateDownloaded <- date()

###################################################################
## Step 1: Read the data in
## Only looking at the data from the dates 2007-02-01 and 2007-02-02
## created a text file that contains only the data from those dates 
## outside of R before taking this step
####################################################################

## hpc <- read.table("dataset.txt", sep = ";", na.strings=c("?"), header = TRUE)

####################################################################
## step 2 Cleaning up the data
## Data and Time data are factors
## Need to change the data type and the format
####################################################################

## first, make them into characters
## hpc$Date <- as.character(hpc$Date)
## hpc$Time <- as.character(hpc$Time)

## concatinate Date and Time to get the desired format
## hpc$New_Date <- paste(hpc$Date, " ")
## hpc$New_Date <- paste(hpc$Date, hpc$Time)

## store the date/time in new format in a new column
## hpc$New_Date <- strptime(hpc$New_Date, "%d/%m/%Y %H:%M:%S")

####################################################################
## Step 3
## Plot four graphs in a single screen
####################################################################

png(filename="graphs/Plot4.png", width = 480, height = 480, units = "px")

## Partition a screen, 2 by 2
par(mfrow=c(2,2))

## Plot the graph at the upper left 

## Y Values are Global_active_power
yval <- hpc$Global_active_power
## X values are the date
xval <- hpc$New_Date

plot(xval, yval, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")


## Plot the graph at the top right
plot(hpc$New_Date, hpc$Voltage, type="l", xlab="datetime", ylab="Voltage")

## Plot the graph at the bottom left
with(hpc, plot(New_Date, Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = ""))
lines(hpc$New_Date, hpc$Sub_metering_2, col="red")
lines(hpc$New_Date, hpc$Sub_metering_3, col="blue")

## Adding legends
legend("topright", names(hpc)[7:9], lty =1, bty="n", col=c("black", "red", "blue"))

## Plot the graph at the bottom right
plot(hpc$New_Date, hpc$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
