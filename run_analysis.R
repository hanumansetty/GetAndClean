# Getting and Cleaning Data Week3 Project
# setwd("C:/Temp/R/Class3/W3/P3")
# c3w3p3Url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Read raw test data
testRawDf<-read.table("./X_test.txt")
testLablesDf<-read.table("./y_test.txt")

# bind test activity to data
testRawDf<-cbind(testLablesDf,testRawDf)

# Read raw training data
trainRawDf<-read.table("./X_train.txt")
trainLablesDf<-read.table("./y_train.txt")

# bind train activity to data
trainRawDf<-cbind(trainLablesDf,trainRawDf)

#read the reference table for activities
actLble<-read.table("./activity_labels.txt")
