##Read data and create datetime variable
data<-read.table("household_power_consumption.txt",sep=";", na.strings="?",header=TRUE)
dt<-data[as.Date(data$Date,"%d/%m/%Y") %in% as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d"), ]
datetime<-strptime(paste(dt$Date,dt$Time),"%d/%m/%Y %H:%M:%S")

##Plot1
png(file="Plot1.png")
hist(dt$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()

 