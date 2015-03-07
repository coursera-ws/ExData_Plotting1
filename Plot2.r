##Read data and create datetime variable
data<-read.table("household_power_consumption.txt",sep=";", na.strings="?",header=TRUE)
dt<-data[as.Date(data$Date,"%d/%m/%Y") %in% as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d"), ]
dt$datetime<-strptime(paste(dt$Date,dt$Time),"%d/%m/%Y %H:%M:%S")


## Plot2
png(file="Plot2.png")
plot(dt$datetime,dt$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()