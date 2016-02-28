plot(data2[, 7]~data2[,10], type = "n", xlab = "", ylab="Energy sub metering")
lines(data2[, 7]~data2[,10], col = "black");
lines(data2[, 8]~data2[,10], col = "red");
lines(data2[, 9]~data2[,10], col = "blue");
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), col =c("black", "red", "blue"));
