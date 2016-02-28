#read data
data <- read.table("data.txt", sep = ";", na.strings = "?", header = TRUE);
data1 <- data;
data1[,1] = as.Date(data1[,1], "%d/%m/%Y");
#subseting data
data2 <- subset(data1, Date > as.Date("31/1/2007", "%d/%m/%Y") &
                  Date < as.Date("3/2/2007", "%d/%m/%Y"))

#converting data and time to right format
data2["newtime"] <- Sys.time();
for (i in 1:dim(data2)[1])
{
  a <- paste(data2$Date[i], data2$Time[i]);
  newtime <- strptime(a, "%Y-%m-%d %H:%M:%S");
  data2$newtime[i] <-newtime;
}

par(mfrow = c(1, 1), mar = c(5, 5, 1, 1))
# first hist
hist(data2[,3], col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power");

#second plot
plot(data2[,3]~data2[,10], type = "n", xlab = "", ylab = "Global Active Power (kilowatts)");
lines(data2[,3]~data2[,10]);

#third plot
plot(data2[, 7]~data2[,10], type = "n", xlab = "", ylab="Energy sub metering")
lines(data2[, 7]~data2[,10], col = "black");
lines(data2[, 8]~data2[,10], col = "red");
lines(data2[, 9]~data2[,10], col = "blue");
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), col =c("black", "red", "blue"));

#fourth picture(set of 4 plots)
par(mfrow = c(2, 2), mar = c(5, 5, 1, 1))
plot(data2[,3]~data2[,10], type = "n", xlab = "", ylab = "Global Active Power");
lines(data2[,3]~data2[,10]);

plot(data2[,5]~data2[,10], type = "n", xlab = "datatime", ylab = "Voltage")
lines(data2[,5]~data2[,10]);

plot(data2[, 7]~data2[,10], type = "n", xlab = "", ylab="Energy sub metering")
lines(data2[, 7]~data2[,10], col = "black");
lines(data2[, 8]~data2[,10], col = "red");
lines(data2[, 9]~data2[,10], col = "blue");
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), col =c("black", "red", "blue"), bty = "n",
       cex = 0.7, pt.cex = 0);

plot(data2[,4]~data2[,10], type = "n", xlab = "datatime", ylab = "Global_reactive_power");
lines(data2[,4]~data2[,10]);
