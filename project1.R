# run the plots
# Precondition: 
# 1.) All the files are loaded in wd: plot1.R - plot4.R, loadData.R and project1.R (this file)
# 2.) The unziped verion of the input data file is also located in wd, household_power_consumption.txt
#
# Author: huberp
###############################################################################


###############################################################################

oldwd <- getwd()
setwd("./04_ExploratoryAnalysis/PA1/")

source("loadData.R")
#
df<-loadInputFile()
#

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

plots<-c("plot1.png"=plot1, "plot2.png"=plot2, "plot3.png"=plot3, "plot4.png"=plot4)

dev.off()

for(p in 1:length(plots)) {
	dev.off()
	#don't use dev.copy - http://blog.revolutionanalytics.com/2009/01/10-tips-for-making-your-r-graphics-look-their-best.html
	#transparency won't work
	png(bg = "transparent",
		filename = names(plots)[p],
		width = 480, height = 480 
	)
	plots[[p]]()
	dev.off()
}

###