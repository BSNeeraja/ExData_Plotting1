dbset<-read.table("./household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";"  )
subdb<-dbset[dbset$Date %in% c("1/2/2007","2/2/2007") ,]
gaPow<-as.numeric(subdb$Global_active_power)
hist(gaPow, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
