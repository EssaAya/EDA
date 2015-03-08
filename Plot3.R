#Plotting three variables as a ine graph
png(filename="plot3.png")
plot(plotdata[,7],type="l",ylab="Energy sub metering",xaxt='n', col="black")
lines(plotdata[,8], type="l", col="red")
lines(plotdata[,9], type="l", col="blue")
axis(1, at=c(20,1450,2900), labels=c("Thu","Fri","Sat"))
legend("topright",col=c("black", "red", "blue"),lty=c(1,1,1), c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()