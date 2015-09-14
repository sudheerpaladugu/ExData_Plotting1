source("loadData.R")
#Opening device (PNG file)
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))

## ploting graph
plot(twoDayspwrConsData$DateTime, twoDayspwrConsData$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

## Top-right
plot(twoDayspwrConsData$DateTime, twoDayspwrConsData$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

## Bottom-left
plot(twoDayspwrConsData$DateTime, twoDayspwrConsData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(twoDayspwrConsData$DateTime, twoDayspwrConsData$Sub_metering_2, col = "red")
lines(twoDayspwrConsData$DateTime, twoDayspwrConsData$Sub_metering_3, col = "blue")

# Removeing legend border
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## Bottom-right
plot(twoDayspwrConsData$DateTime, twoDayspwrConsData$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(twoDayspwrConsData)[4])

dev.off() #closing the device

colnames(twoDayspwrConsData)[4]