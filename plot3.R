
## plot3.R

## use load.R to prepare the dataset for plotting 
## if(!exists("load.R", mode="function")) source("load.R")

## write to png
png(filename = "plot3.png", width=480, height=480, bg = "transparent")


## generate the plot
with( dataset, {
	## plot first series
	plot( DateTime
		, Sub_metering_1 
		, type = "l"
		, col = "black"
		, main = ""
		, xlab = ""
		, ylab = "Energy sub metering") 
	## add second series
	lines( 
		  DateTime
		, Sub_metering_2 
		, type = "l"
		, col = "red")
	## add third series
	lines(
		  DateTime 
		, Sub_metering_3 
		, type = "l"
		, col = "BLUE")
	## add legend
	legend( "topright"
		, lty = 1
		, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
		, col=c("black", "red", "blue")
	)
})

## close
dev.off()