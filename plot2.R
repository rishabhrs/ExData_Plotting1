data=read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
data=data[data$Date %in% c("1/2/2007","2/2/2007"),]
gap=as.numeric(data$Global_active_power)
date=strptime(paste(data$Date,data$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")
plot(date,gap,xlab="",ylab="Global Active Power(kilowatts)",type="l")
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()
