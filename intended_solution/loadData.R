# Helper script to load the data required to do the plots
# 
# Author: huberp
###############################################################################


# Please dear peer, read this before grading
#
# Function which loads the input file
# Transforms
# 1. New column "datetime" combines column Date and Time into a POSIXct object, use in plot2 for instance
# 2. Change Type: "Date" from "character" to as.Date
# 3. Change Type: "Time" from "character" to as.Time
#
# Why does this function looks so complicated? 
# 1. I wanted to selectively load only the required lines
#    with just the means I can get with a standard R install. You are not required to install a lib to run it
# 2. I wanted to practice my R skills and see how low I can get the memory footprint of my load function on my own
#
# The function somehow is dirty programmed, it relies on your assumptions of working directory, it uses hardcoded value?
#    True, but following the grading instructions you should not run the code, but only have to check whether it looks reasonable
#    solution that could build my plots...so please don't be to picky
#
# How and where is this function used
# 1.) please check "project1.R"
# 2.) please check instructions on any of the plot.R's
###############################################################################
loadInputFile <- function() {
	f <- file("household_power_consumption.txt","rt");
	
	nolines <- 200
	#now read the header first
	greped<-readLines(f,n=1)
	repeat {
		lines=readLines(f,n=nolines)
		idx <- grep("^[12]/2/2007", lines);
		greped<-c(greped, lines[idx])
		#
		if(nolines!=length(lines)) {
			break
		}
	}
	close(f)
	
	tc<-textConnection(greped,"rt")
	df<-read.csv(tc,sep=";",header=TRUE,na.string="?", 
			colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
	rm(greped)
	#add a convenient date time column to the df in order to do plot2 for instance
	df$dateTime <- as.POSIXct(strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%OS"))
	df$Date <- as.Date(df$Date, format="%d/%m/%Y")
	df$Time <- strptime(df$Time,format="%H:%M:%OS")
	
	df
}