data<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")
names(data)
lapply(data, class)
data$Date[1:10]
data$Time[1:10]
data$DateTime<-paste(data$Date, data$Time)
data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
begin<-which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
end<-which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
sample<-data[begin:end,]
png("plot1.png", width=480, height=480)
hist(as.numeric(sample$Global_active_power), 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()