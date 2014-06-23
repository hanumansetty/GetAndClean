# Getting and Cleaning Data Week3 Project
# setwd("C:/Temp/R/Class3/W3/P3")
# c3w3p3Url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# download.file(c3w3p3Url,"./Dataset.zip",mode="wb")

testRawDf<-read.table("./X_test.txt")
testLablesDf<-read.table("./y_test.txt")

# Read raw training data
trainRawDf<-read.table("./X_train.txt")
trainLablesDf<-read.table("./y_train.txt")

# read the reference table for column names
cNames<-read.table("./features.txt")

# set column names for test and train datasets to combine
#4. Appropriately labels the data set with descriptive variable names
names(testRawDf)<-cNames[,2]
names(trainRawDf)<-cNames[,2]

#1. Merges the training and the test sets to create one data set.
allRawDataDf<-rbind(testRawDf,trainRawDf)

#to get the index of columns of interest
index=1:length(allRawDataDf)
meanIndex<-index%in%grep("-mean()",names(allRawDataDf))
stdIndex<-index%in%grep("-std()",names(allRawDataDf))
relevantCols<-as.logical(meanIndex+stdIndex)

#2. Extracts only the measurements on the mean and standard deviation for each measurement
allRawDataDf<-allRawDataDf[,relevantCols]

# set activityId as the variable Name for the lables
names(testLablesDf)<-c("activityId")
names(trainLablesDf)<-c("activityId")

# merge test and train lables
allRawLablesDf<-rbind(testLablesDf,trainLablesDf)

# bind activity to data
allRawDataDf<-cbind(allRawLablesDf,allRawDataDf)

# read the reference table for activities
actLble<-read.table("./activity_labels.txt")

# Add descriptions to reference table for activities
allLableDetails<-merge(actLble,allRawLablesDf,by.x="V1",by.y="activityId")
