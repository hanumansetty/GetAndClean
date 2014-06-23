GetAndClean
===========

Repository for Coursera Getting and Cleaning Data class

The "run_analysis.R" program works on the Samsung data found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The program assumes that all files from the zip file are extracted into a single directory without any subfolders.
The program further assumes that the working directory is set to the location of these extracted files

The program does the following
1. Read raw test data
2. Read raw training data
3. Read the reference table for column names
4. Set column names for test and train datasets so that rbind can be applied and for appropriately labeling the data set with descriptive variable names
5. Merges the training and the test sets to create one data set.
6. Extracts only the columns on the mean and standard deviation for each measurement
7. Set activityId as the variable Name for the lables
8. Merge test and train lables
9. Binds (cbind) activity to data
10. read the reference table for activities
11. Add descriptions to reference table for activities and uses descriptive activity names to name the activities in the data set
12. Generates a clean dataset with only the measurements on the mean and standard deviation for each measurement
13. Further more generates a second, independent tidy data set with the average of each variable for each activity and each subject. 
