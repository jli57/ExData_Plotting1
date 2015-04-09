
## plot2.R

## use load.R to prepare the dataset for plotting 
## if(!exists("load.R", mode="function")) source("load.R")

## plot to png
png(filename = "plot2.png", width=480, height=480, bg = "transparent")

## generate the plot
with ( dataset
	, plot( DateTime
		, Global_active_power
		, type = "l"
		, main = ""
		, xlab = ""
		, ylab = "Global Active Power (kilowatts)")
	)


## close
dev.off()