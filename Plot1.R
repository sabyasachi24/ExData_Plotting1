setwd('E:\\coursera\\R\\Exploratory analysis') #set directory

if(!file.exists('Project1')) dir.create('Project1') #create a new folder Project1 is not existing within working directory

FileDownloadUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
FileDownload <- "./Project1/household_power_consumption.zip"
FileData <- "./Project1/household_power_consumption.txt"

## Download and unzip data file if it does not exist

if (!file.exists(FileData)) 
  {
    download.file(FileDownloadUrl, FileDownload, method = "curl")
    unzip(FileDownload, exdir = "./Project1")
  }

## reading data into file

CompleteData <- read.table(FileData, header=TRUE, na.strings="?", sep=";")
data <- CompleteData[CompleteData$Date %in% c("1/2/2007","2/2/2007"),]

## setting time

data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$Time <- as.POSIXct(paste(data$Date, data$Time))

## Plotting

png(filename = './Project1/plot1.png', width = 480, height = 480, units='px')
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()