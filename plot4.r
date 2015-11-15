png("plot4.png", width=480, height=480)
par(mfcol=c(2,2))

plot(sample$DateTime, as.numeric(sample$Global_active_power),type='l',ylab="Global Active Power", xlab="")

plot(sample$DateTime, as.numeric(sample$Sub_metering_1),type='l', xlab="",ylab ="Energy sub metering")
lines(sample$DateTime, as.numeric(sample$Sub_metering_2),type='l', col='red')
lines(sample$DateTime, sample$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"))

plot(sample$DateTime, as.numeric(sample$Voltage),type='l', 
     ylab="Voltage",xlab="datetime" )

plot(sample$DateTime, as.numeric(sample$Global_reactive_power),type='l', 
     ylab="Global_reactive_power",xlab="datetime" )
dev.off()