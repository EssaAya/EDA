#Plotting line graph
png(filename="plot2.png")
plot(plotdata[,3],type="l",ylab="Global Active Power (kilowatts)",xaxt='n',xlab='')
axis(1, at=c(20,1450,2900), labels=c("Thu","Fri","Sat"))
dev.off()