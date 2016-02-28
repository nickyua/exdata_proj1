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
