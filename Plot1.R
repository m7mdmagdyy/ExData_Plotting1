FirstPlot <- "D:/M7md/Courses/Data Science/Exploratory Data Analysis/Week 1"
setwd(FirstPlot)
datafile <- "D:/M7md/Courses/Data Science/Exploratory Data Analysis/Week 1/household_power_consumption.txt"
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
GAP <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(GAP, col = "red", main = "Golbal Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
