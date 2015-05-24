
#Get data:  Create folder (if nonexist); download file; unzip file
if(!file.exists('./data')){dir.create('./data')}
fileUrl1 = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

download.file(fileUrl1, destfile = './data/UCI_HAR_Dataset.zip', method='curl')
unzip('./data/UCI_HAR_Dataset.zip', exdir='./data')

library(utils)
library(dplyr)

subTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", sep=",", header = FALSE)
#unique(subs)
subTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", sep=",", header = FALSE)
#unique(subs2)

xTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
yTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)

xTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
yTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)

#read feature names
features <- read.table('./data/UCI HAR Dataset/features.txt', header = FALSE, as.is=TRUE)

#get feature names into vector for renaming cols of xTrain, xTest
newcolnames <- c(features$V2)

#combine test and training data 
#xTest, xTrain (accel, gyro data) first
allObs <- rbind(xTest, xTrain)

#yTest, yTrain (activity labels) second
allActLabels <- rbind(yTest, yTrain)

#subTest, subTrain (subjects) third
allSubs <- rbind(subTest, subTrain)

#name cols in allObs, allActionLabels, allSubs
names(allObs) <- newcolnames
names(allActLabels)<- "ActivityID"
names(allSubs)<- "SubjectID"

#Get colnames that contain "mean()" or "std()"
meanGrp <- grepl('mean()', newcolnames, fixed = TRUE)
stdGrp <- grepl('std()', newcolnames, fixed = TRUE)

#combine mean and std colnames
meanStdGrp <- meanGrp | stdGrp

#Extract mean and std measurements
allObs <- allObs[,which(meanStdGrp)]

#get label keys and add descriptive activity names
labelKey <- read.table('./data/UCI HAR Dataset/activity_labels.txt', header=FALSE, as.is=TRUE )
allActLabels <- mutate(allActLabels, ActivityName = labelKey[as.character(ActivityID), 'V2'])

#column bind allSubs, allActLabels, allObs to form unified dataset with all subject, activity, and recorded data
allData <- cbind(allSubs, allActLabels, allObs)

###Extract tidy data set containing averages of all variables for Subject and Activity
tidyData <- aggregate(allData, list(Subject = allData$SubjectID, Activity = allData$ActivityName), mean)
tidyData <- select(tidyData, -SubjectID, -ActivityName)
tidyData <- arrange(tidyData, Subject, ActivityID)

##Write to file
write.table(tidyData, './data/UCI_HAR_VariableMeanBySubject.txt', sep = ",", row.name=FALSE)
