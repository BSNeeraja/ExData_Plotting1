dbset<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetdb<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime<-strptime(paste(subsetdb$Date, subsetdb$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gapow<- as.numeric(subsetdb$Global_active_power)
subMeter1<-as.numeric(subsetdb$Sub_metering_1)
subMeter2<-as.numeric(subsetdb$Sub_metering_2)
subMeter3<-as.numeric(subsetdb$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMeter1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMeter2, type="l", col="red")
lines(datetime, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()