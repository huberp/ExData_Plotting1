# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 1
# 
# Author: huberp
###############################################################################


plot1 <- function() {
	hist(df$Global_active_power, 
			breaks=seq(0,8,0.5),
			xaxt="n",
			freq=TRUE, 
			col="red",
			main="Global Active Power",
			xlab="Global Active Power (kilowatts)"
	)
	axis(side=1, at=seq(0,6, 2), labels=seq(0,6,2))
}

