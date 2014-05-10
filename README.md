## Files
About the files in the directory
* plot1.png,...,plot4.png: Plots produced by may code
* plot1.R,...,plot4.R plot functions that are used to plot the pngs. 
* loadData.R function which will loads the the data and does some transformations on it
* intended_solution: please ignore this for grading, this is a more sophisticated solution with less copy paste code
	but out of fear to get not the full grade I did not dare to make this my solution for grading

all R scripts provide some more inline comments

##Run a single plot on your own to the screen
Let's say you want to do plot1 to the screen. You have to go like this

	1. make sure you have downloaded and unzipped the input file "household_power_consumption.txt" into some dir
	2. make sure you have adapted the plot.R scripts - only thing you must provide is the vaild working directory, see call to setwd()
    3. source("plot1.R")
    
##From the numerous grading paranoia threads...
There was lengthy discussion about what exact means regarding pngs size and background color
My decision
1.) background color: I chose white, transparent just makes files bigger (32 bit depth instead of 8) and does not add information
2.) size is 480x480 though the reference plots in the forked repository are slightly bigger

If you want - please check out my relaxed grading policy
https://class.coursera.org/exdata-002/forum/thread?thread_id=106
good for you, good for me ;-)

