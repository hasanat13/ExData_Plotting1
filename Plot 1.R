#reading data
data_hh <- read.delim('household_power_consumption.txt',sep=';')

#Convert data from factor to numeric 
data_hh$Sub_metering_1 <- as.numeric(as.factor(data_hh$Sub_metering_1))
data_hh$Sub_metering_2 <- as.numeric((as.factor(data_hh$Sub_metering_2))
data_hh$Global_active_power <- as.numeric(as.factor(data_hh$Global_active_power))
data_hh$Voltage<- as.numeric(as.factor(data_hh$Voltage))
data_hh$Global_reactive_power<- as.numeric((as.factor(data_hh$Global_reactive_power))
data_hh$Global_intensity <- as.numeric(as.factor(data_hh$Global_intensity))

#Subsetting data (1/2/2007 until 2/2/2007)
subsetdate <- subset(data_hh,data_hh$Date==c("1/2/2007","2/2/2007"))

#Plot_1
hist(subsetdata$Global_active_power,col="red",main="Global Active Power",xlab= "Global Active Power (Kilowatts)")
