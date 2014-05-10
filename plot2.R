# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 2
# 
# Author: huberp
###############################################################################

# 
# Please dear peer, read this before grading
#
# HowTo Run this: 
# 1. download input file and unpack it to a dir
# 2. store the R files into same dir
# 3. adjust the setwd call to point to the dir
# 4. source in the file...
#
# Why is the plot a function? Because some plots can be reused and using a function is better then copy paste
#
# Any assumptions? YES, the data must be stored into variable "df", see step 2
#
# Where can I find example of reuse? Please look into "plot4.R"
#
###############################################################################

plot2 <- function() {
	plot(df$dateTime,df$Global_active_power, 
			type='l', 
			col='black',
			ylab="Global Active Power (kilowatts)",
			xlab="")
}

#PLEASE: set working directory pointing to your directory with R files and input file in it
oldwd <- getwd()
setwd("./04_ExploratoryAnalysis/PA1/")
#I enjoyed my german day names, but I be paranoid about "exactly reproduce" plots
Sys.setlocale("LC_TIME", "English")

source("loadData.R")
df<-loadInputFile() 
png(bg = "white", filename = "plot2.png",width = 480, height = 480)
plot2()
dev.off()