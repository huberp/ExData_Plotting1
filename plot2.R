# Exploratory Data Analysis 002
# Programming Assignment 1
# Plot 2
# 
# Author: huberp
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

