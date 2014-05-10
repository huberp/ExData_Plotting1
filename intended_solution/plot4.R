# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 4
# 
# Author: huberp
###############################################################################

# 
# Please dear peer, read this before grading
#
# HowTo Run this: source in some files and run functions...
# 1. source("loadData.R")
# 2. df<-loadInputFile()
# 3. source("plot4.R")
# 4. plot4()
#
# It does not produce a png? Please check file "project1.R", this runs all plots and builds my pngs
#
# Why is this a function? Because some plots can be reused and using a function is better then copy paste
#
# Any assumptions? YES, the data must be stored into variable "df", see step 2
# 
# Where can I find example of reuse? Please look into "plot4.R"
#
# How does the author run it? Please see "project1.R"
#
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
	
	#reuse plot3
	plot3(FALSE)
	
	plot(df$dateTime,df$Global_reactive_power, 
			type='l', 
			col='black',
			ylab="Global_reactive_power",
			xlab="datetime")
}