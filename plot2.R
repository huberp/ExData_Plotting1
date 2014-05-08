# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 2
# 
# Author: huberp
###############################################################################

# 
# Please dear peer, read this before grading
#
# HowTo Run this: source in some files and run functions...
# 1. source("loadData.R")
# 2. df<-loadData.R
# 3. source("plot2.R")
# 4. plot2()
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

#programming-r-pro-bro.blogspot.de/2011/09/simple-plot-using-r.html
#plot(as.Date(a$date,'%d-%b-%y'), a$mibor, xlab= "Months", ylab= "MIBOR overnight rates(percentage)", type='l', col='red')

# This is to get the titles in place
# main : main title
# col.main : color of the main title
#font.main : font size of the title

#title(main="Overnight MIBOR rates for last one year", col.main="black", font.main=4)
plot2 <- function() {
	plot(df$dateTime,df$Global_active_power, 
			type='l', 
			col='black',
			ylab="Global Active Power (kilowatts)",
			xlab="")
}

