## plot4.R

## use load.R to prepare the dataset for plotting 
## if(!exists("load.R", mode="function")) source("load.R")

## write to png
png(filename = "plot4.png", width=480, height=480, bg = "transparent")

## set plot space to 2 by 2
par(mfrow = c(2, 2))

## plot graphs
with ( dataset, {
	## plot first graph
	plot( DateTime
		, Global_active_power
		, type = "l"
		, main = ""
		, xlab = ""
		, ylab = "Global Active Power"
	)
	## plot second graph
	plot( DateTime
		, Voltage
		, type = "l"
		, main = ""
		, xlab = "datetime"
		, ylab = "Voltage"
	)
	## plot third graph
	plot( DateTime
		, Sub_metering_1 
		, type = "l"
		, col = "black"
		, main = ""
		, xlab = ""
		, ylab = "Energy sub metering" 
	)
	## add second series to third graph
	lines( 
		  DateTime
		, Sub_metering_2 
		, type = "l"
		, col = "red")
	## add third series to third graph
	lines(
		  DateTime 
		, Sub_metering_3 
		, type = "l"
		, col = "BLUE")
	## add legend for third graph
	legend( "topright"
		, lty = 1
		, bty = "n"
		, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
		, col=c("black", "red", "blue")
		, 
	)
	## plot fourth graph
	plot( DateTime
		, Global_reactive_power
		, type = "l"
		, main = ""
		, xlab = "datetime"
	)
})

## close
dev.off()