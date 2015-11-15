png("plot2.png", width=480, height=480)
plot(sample$DateTime, as.numeric(sample$Global_active_power),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")
dev.off()