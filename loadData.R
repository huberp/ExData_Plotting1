# Helper script to load the data required to do the plots
# 
# Author: huberp
###############################################################################


###############################################################################
# Function which loads the input file
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