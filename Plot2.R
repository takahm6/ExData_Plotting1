## Exploratory Data Analysis on Coursera
## Project 1

##########################################################################################
## Plot 2, Commenting out the first part, since these steps have been done through plot 1
##########################################################################################

###################################################################
## Downloading the data
## Record the date and time the data was downloaded
## "Thu Jul 09 14:23:55 2014"
###################################################################
## dateDownloaded <- date()

#############################################################################
## Step 1: Read the data in
## Only looking at the data from the dates 2007-02-01 and 2007-02-02
## created a text file that contains only the data from those dates 
## outside of R before taking this step
#############################################################################

## hpc <- read.table("dataset.txt", sep = ";", na.strings=c("?"), header = TRUE)

#############################################################################
## step 2 Cleaning up the data
## Data and Time data are factors
## Need to change the data type and the format
#############################################################################

## first, make them into characters
## hpc$Date <- as.character(hpc$Date)
## hpc$Time <- as.character(hpc$Time)

## concatinate Date and Time to get the desired format
## hpc$New_Date <- paste(hpc$Date, " ")
## hpc$New_Date <- paste(hpc$Date, hpc$Time)

## store the date/time in new format in a new column
## hpc$New_Date <- strptime(hpc$New_Date, "%d/%m/%Y %H:%M:%S")

## hpc$Day_of_the_week <- weekdays(hpc$New_Date)

##############################################################################
## Step 3 
## Making a line graph
##############################################################################

## Y Values are Global_active_power
yval <- hpc$Global_active_power

## X values are the date
xval <- hpc$New_Date

png(filename="graphs/Plot2.png", width = 480, height = 480, units = "px")
plot(xval, yval, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()


