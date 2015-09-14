library(datasets)

fileName <- "./data/household_power_consumption.txt"
monthlypwrConsData <- read.table(filename, header = TRUE,
                                 sep = ";",
                                 colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                                 na = "?")
twoDayspwrConsData <- monthlypwrConsData[as.character(monthlypwrConsData$Date) %in% c("1/2/2007", "2/2/2007"),]
twoDayspwrConsData$DateTime <- strptime(paste(twoDayspwrConsData$Date, twoDayspwrConsData$Time), "%d/%m/%Y %H:%M:%S")