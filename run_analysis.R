# Getting and Cleaning Data Week3 Project
# setwd("C:/Temp/R/Class3/W3/P3")
# c3w3p3Url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# download.file(c3w3p3Url,"./Dataset.zip",mode="wb")

# Read raw test data
testRawDf<-read.table("./X_test.txt")
testLablesDf<-read.table("./y_test.txt")

# Read raw training data
trainRawDf<-read.table("./X_train.txt")
trainLablesDf<-read.table("./y_train.txt")

# read the reference table for activities
actLble<-read.table("./activity_labels.txt")

# read the reference table for column names
cNames<-read.table("./features.txt")

# set column names for test and train datasets to combine
names(testRawDf)<-cNames[,2]
names(trainRawDf)<-cNames

# merge test and train datasets
allRawDataDf<-rbind(testRawDf,trainRawDf)

# set activityId as the variable Name for the lables
names(testLablesDf)<-c("activityId")
names(trainLablesDf)<-c("activityId")

# merge test and train datasets
allRawLablesDf<-rbind(testLablesDf,trainLablesDf)

# bind activity to data
allRawDataDf<-cbind(allRawLablesDf,allRawDataDf)
