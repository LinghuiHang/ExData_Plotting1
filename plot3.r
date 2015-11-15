png("plot3.png", width=480, height=480)
plot(sample$DateTime, as.numeric(sample$Sub_metering_1),type='l', 
     ylab ="Energy sub metering", xlab="")
lines(sample$DateTime, as.numeric(sample$Sub_metering_2),type='l', col='red')
lines(sample$DateTime, sample$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1)
       ,col=c("black","red","blue"))
dev.off()