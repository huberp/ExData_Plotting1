# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 1
# 
# Author: huberp
###############################################################################


##
##reuse ploting fuctions
source("plot2.R")
source("plot3.R")

plot4 <- function() {
	par(mfrow=c(2,2))
	
	plot2()
	
	plot(df$dateTime,df$Voltage, 
			type='l', 
			col='black',
			ylab="Voltage",
			xlab="datetime")
	
	plot3(FALSE)
	
	plot(df$dateTime,df$Global_reactive_power, 
			type='l', 
			col='black',
			ylab="Voltage",
			xlab="datetime")
}
