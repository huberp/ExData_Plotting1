## Instructions
About the file in the director
* plot1.png,...,plot4.png: Plots produced by may code
* plot1.R,...,plot4.R plot functions that are used to plot the pngs. They don't run on their own. Please look into "project1.R" to check out how they're run
* project.R main code which loads the data and triggers plotting of all 4 plots
* loadData.R function which will load the data

all R scripts provide some more inline comments

##Run a single plot on your own to the screen
Let's say you want to do plot1 to the screen. You have to go like this

     source("loadData.R")
     df<-loadData() #actually the plots assume that variable _df_ is used
     source("plot1.R")
     plot1()

##Run all 4 plots and get the PNGs

     source("project1.R")
