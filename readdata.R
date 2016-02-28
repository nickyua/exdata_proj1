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
