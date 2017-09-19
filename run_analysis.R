library(magrittr)
library(dplyr)
library(data.table)



## Download data and load it into R

filename <- "dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


# load into R
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", quote = "", header=FALSE) %>%
  rename(subject = V1)
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", quote = "", header=FALSE) %>%
  rename(activity = V1)
xTest <- read.table("UCI HAR Dataset/test/X_test.txt", quote = "", header=FALSE)

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", quote = "", header=FALSE) %>%
  rename(subject = V1)
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", quote = "", header=FALSE) %>%
  rename(activity = V1)
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", quote = "", header=FALSE)

features <- read.table("UCI HAR Dataset/features.txt", quote = "", header=FALSE)
activities <- read.table("UCI HAR Dataset/activity_labels.txt", quote = "", header=FALSE)


## Merge the training and the test sets to create one data set.
# bring columns together
testSet <- cbind(vs=subjectTest, yTest, xTest)
trainSet <- cbind(subjectTrain, yTrain, xTrain)
# bring rows together
allData <- rbind(testSet, trainSet)


## Extract only the measurements on the mean and standard deviation for each measurement.
# take the old names the ones automatically generated for xTrain. This is needed to exclude the first 2 columns of allData
oldNames <- names(xTrain)
# get the new names from features.txt
newNames <- as.character(features$V2)
# apply the substitution
setnames(allData, old = oldNames, new = newNames)
# now that the column name contain the info about the function involved, restrict the
# dataset to the measurements resulting only from the mean() or the std() function
restricted <- allData[,c(1, 2, grep("mean\\(\\)|std\\(\\)", names(allData)))]


## Use descriptive activity names to name the activities in the data set
activityLevels <- activities$V1
activityNames <- as.character(activities$V2)
restricted$activity <- factor(restricted$activity, levels=activityLevels, labels=activityNames)


## Appropriately label the data set with descriptive variable names.
oldNames <- names(restricted)
# explicitly write time and frequence
newNames <- gsub("^t", "time", oldNames)
newNames <- gsub("^f", "frequency", newNames)
# remove special characters and leave only dots to separate words
newNames <- gsub("\\(\\)", "", newNames)
newNames <- gsub("-", ".", newNames)
# correct names with redundant info
newNames <- gsub("BodyBody", "Body", newNames)
# apply the substitution
setnames(restricted, old = oldNames, new = newNames)


## Create a second, independent tidy data set with the average of each variable for each activity and each subject.
# doing this in data.table just because it's easier
restricted <- data.table(restricted)
# group by the subject and activity columns, apply the mean function on all the others
tidy <- restricted[, lapply(.SD, mean), by=.(subject, activity)]
# order it just to make it nicer
tidy <- tidy[order(subject, activity)]

# save data in a file
write.table(tidy, file = "tidydata.txt",row.name=FALSE)


