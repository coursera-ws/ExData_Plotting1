##Read data and create datetime variable
data<-read.table("household_power_consumption.txt",sep=";", na.strings="?",header=TRUE)
dt<-data[as.Date(data$Date,"%d/%m/%Y") %in% as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d"), ]
dt$datetime<-strptime(paste(dt$Date,dt$Time),"%d/%m/%Y %H:%M:%S")

##Plot3
png(file="Plot3.png")
plot(dt$datetime,dt$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(dt$datetime,dt$Sub_metering_1,col="black")
lines(dt$datetime,dt$Sub_metering_2,col="red")
lines(dt$datetime,dt$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()