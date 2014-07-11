## Exploratory Data Analysis on Coursera
## Project 1
###################################################################################

###################################################################
## Plot 1
###################################################################

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
## outside of R before taking this step (dataset.txt)
#############################################################################
hpc <- read.table("dataset.txt", sep = ";", na.strings=c("?"), header = TRUE)


#############################################################################
## step 2 Cleaning up the data
## Data and Time data are factors
## Need to change the data type and the format
#############################################################################

## first, make them into characters
hpc$Date <- as.character(hpc$Date)
hpc$Time <- as.character(hpc$Time)

## concatinate Date and Time to get the desired format
hpc$New_Date <- paste(hpc$Date, " ")
hpc$New_Date <- paste(hpc$Date, hpc$Time)

## store the date/time in new format in a new column
hpc$New_Date <- strptime(hpc$New_Date, "%d/%m/%Y %H:%M:%S")
 
# hpc$Day_of_the_week <- weekdays(hpc$New_Date)

##############################################################################
## step 3
## Making a histgram
##############################################################################
png(filename="graphs/Plot1.png", width = 480, height = 480, units = "px")
hist(hpc$Global_active_power, main = "Global Active Power", xlab = "Global Active Power(kilowatts)", col = "red")
dev.off()

