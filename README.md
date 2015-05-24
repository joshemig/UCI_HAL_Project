# UCI_HAL_Project
Get data:  Create folder (if nonexist); download file; unzip file
load dependencies
Get subject names for test and train
Read observations and activity column for test and train

read feature (column names for observations) names
get feature names into vector for renaming cols of xTrain, xTest

combine test and training data 
xTest, xTrain (accel, gyro data) first
yTest, yTrain (activity labels) second
subTest, subTrain (subjects) third

name cols in allObs, allActionLabels, allSubs with feature names

Get colnames that contain "mean()" or "std()"
combine mean and std colnames

Extract columns from data containing mean and std measurements 

get label keys and add descriptive activity names

column bind allSubs, allActLabels, allObs to form unified dataset with all subject, activity, and recorded data (this is everything)

Extract tidy data set containing averages of all variables for Subject and Activity

Write to file
