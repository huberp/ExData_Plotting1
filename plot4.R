# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 4
# 
# Author: huberp
###############################################################################


##
##reuse ploting fuctions
source("plot2.R")
source("plot3.R")

plot4 <- function() {
	par(mfrow=c(2,2))
	#reuse plot2 
	plot2()
	
	plot(df$dateTime,df$Voltage, 
			type='l', 
			col='black',
			ylab="Voltage",
			xlab="datetime")
	
	#reuse plot2
	plot3(FALSE)
	
	plot(df$dateTime,df$Global_reactive_power, 
			type='l', 
			col='black',
			ylab="Voltage",
			xlab="datetime")
}
