# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 3
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

plot3 <- function(legendBorder=TRUE) {
	colors<-c("black","red","blue")
	
	plot(df$dateTime,df$Sub_metering_1, 
			type='l', 
			col=colors[1],
			ylab="Energy sub metering",
			xlab="")
	lines(df$dateTime,df$Sub_metering_2, 
			type='l', 
			col=colors[2])
	lines(df$dateTime,df$Sub_metering_3, 
			type='l', 
			col=colors[3])
	
	#some code to make it reusable we have one version with border around legend
	#the other version (see plot4.R function) without
	btyv <-"o"
	if(!legendBorder) {
		btyv<-"n"
	}
	
	legend(x="topright", # places a legend at the appropriate place 
			
			bty=btyv,
			
			c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), # puts text in the legend
			
			lty=c(1,1,1), # gives the legend appropriate symbols (lines)
			
			lwd=c(2.5,2.5, 2.5),
			col=colors) # gives the legend lines the correct color and width
}

#PLEASE: set working directory pointing to your directory with R files and input file in it
oldwd <- getwd()
setwd("./04_ExploratoryAnalysis/PA1/")
#I enjoyed my german day names, but I be paranoid about "exactly reproduce" plots
Sys.setlocale("LC_TIME", "English")

source("loadData.R")
df<-loadInputFile() 
png(bg = "white", filename = "plot3.png",width = 480, height = 480)
plot3()
dev.off()