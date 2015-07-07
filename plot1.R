data=read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
data=data[data$Date %in% c("1/2/2007","2/2/2007"),]
gap=as.numeric(data$Global_active_power)
hist(gap,col="red",xlab="Global Active Power(kilowatts)",
      main="Global Active Power")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
