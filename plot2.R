#read the data file
data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#subset the data ranging withing the specified range
subsetdb<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime<- strptime(paste(subsetdb$Date,subsetdb$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, gapower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
