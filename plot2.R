## John Kirker
## Exploratory Data Analysis Course Project 1
## Due 11/08/2015
df<-read.table("../household_power_consumption.txt", stringsAsFactors = FALSE, sep=";", dec=".", na.strings="?", header =TRUE)
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df.sub <- subset(df, Date >= "2007-02-01" & Date <= "2007-02-02")
rm(df)

dt <- paste(as.Date(df.sub$Date), df.sub$Time)
df.sub$Datetime <- as.POSIXct(dt)

png("plot2.png", width=480, height=480)
plot(df.sub$Global_active_power~df.sub$Datetime, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()