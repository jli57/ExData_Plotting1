## plot1.R

## use load.R to prepare the dataset for plotting 
## if(!exists("load.R", mode="function")) source("load.R")

## write to png
png(filename = "plot1.png", width=480, height=480, bg = "transparent")

## plot a histogram
with( dataset, 
	hist(dataset$Global_active_power
	, main = "Global Active Power"
	, xlab = "Global Active Power (kilowatts)"
	, col = "Red")
)

## close
dev.off()
