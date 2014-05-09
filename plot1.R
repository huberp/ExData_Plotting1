# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 1
# 
# Author: huberp
###############################################################################

# 
# Please dear peer, read this before grading
#
# HowTo Run this: source in some files and run functions...
# 1. source("loadData.R")
# 2. df<-loadData()
# 3. source("plot1.R")
# 4. plot1()
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

plot1 <- function() {
	#basic histogram without x axis lables...
	hist(df$Global_active_power, 
			breaks=seq(0,8,0.5),
			xaxt="n",
			freq=TRUE, 
			col="red",
			main="Global Active Power",
			xlab="Global Active Power (kilowatts)"
	)
	#...but with self adjusted x axis 
	axis(side=1, at=seq(0,6, 2), labels=seq(0,6,2))
}

# UNCOMMENT the following lines TO RUN, but see project1.R
##########################################################
#source("loadData.R")
#df<-loadData() 
#png(bg = "white", filename = "plot1.png",width = 480, height = 480)
#plot1()
#def.off()