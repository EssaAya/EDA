#Data import (The ? in the dataset are replaced by NA in Notepad using the "Replace all" command)
household_power_consumption <- read.csv("~/household_power_consumption.txt", sep=";")

#Date conversion from factor to actual date and added in the original data
Rdate <- strptime(as.character(household_power_consumption$Date),"%d/%m/%Y")
household_power_consumption<-data.frame(household_power_consumption,Rdate)

#Subsetting the 2-day period in February, 2007
plotdata <- subset(household_power_consumption, Rdate >= as.POSIXct('2007-02-01')&Rdate <= as.POSIXct('2007-02-02'))

#Plotting histogram
colors = c("red")
png(filename="plot1.png")
hist(plotdata$Global_active_power,xlab="Global Active Power (kilowatts)",col=colors,main = paste("Global Active Power"))
dev.off()