#reading data
data_hh <- read.table('household_power_consumption.txt',header=T, sep=';', na.strings="?")

#Convert data from factor to date
data_hh$Date <- as.Date(data_hh$Date, format = "%d/%m/%Y")

#Subsetting data (1/2/2007 until 2/2/2007)
subsetdata <- subset(data_hh,Date>="2007-02-01" & Date<="2007-02-02")

#Plot_1
hist(subsetdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)")
