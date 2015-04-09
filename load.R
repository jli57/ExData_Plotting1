## Project 1

## Set up dataset for plotting


## define col classes
classes <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")

## make data frame
data <- read.table("./household_power_consumption.txt", header = TRUE, colClasses = classes, sep = ";", na.strings = "?")

## get only rows in the dates of interest
dataset <- data[ grep( "^1/2/2007|^2/2/2007", data$Date), ]

## create new date time column
dataset$DateTime <- paste(dataset$Date, dataset$Time)

## convert to date
dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")

## convert via strptime
dataset$DateTime <- strptime(dataset$DateTime, "%d/%m/%Y %H:%M:%S")
