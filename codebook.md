#UCI_HAL_Project Codebook

##Variables

#####Subject
- Type: integer
- Subject identification code

#####Activity
- Type: character
- Descriptive name of activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

#####ActivityID
- Type: integer
- Identification code for activities (1,2,3,4,5,6) 

>**NOTE:** 
>*Features below derive from from UCI observations dataset*
> - *Original features are described in files `features_info.txt` and in the `README.txt` in downloaded dataset package.*
> - *In this dataset, each value represents an average of the observed variables aggregated and mapped to Subject and Activity.  So, for instance, Subject #1, while walking, has an average body acceleration in the x axis (minus gravity) of 0.277330758736842 g.*
> - *features beginning with "t" represent time domain variables, and features beginning with 'f' represent frequency domain variables (see `features_info.txt` in orginal data package for more detail)* 

#####tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyAcc in X,Y,Z axes 

#####tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyAcc in X,Y,Z axes 

#####tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tGravityAcc in X,Y,Z axes 

#####tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tGravityAcc in X,Y,Z axes 

#####tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyAccJerk in X,Y,Z axes

#####tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyAccJerk in X,Y,Z axes

#####tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyGyro in X,Y,Z axes

#####tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyGyro in X,Y,Z axes

#####tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyGyroJerk in X,Y,Z axes

#####tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyGyroJerk in X,Y,Z axes

#####tBodyAccMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyAccMag
#####tBodyAccMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyAccMag

#####tGravityAccMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tGravityAccMag
#####tGravityAccMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tGravityAccMag

#####tBodyAccJerkMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyAccJerkMag
#####tBodyAccJerkMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyAccJerkMag

#####tBodyGyroMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyGyroMag
#####tBodyGyroMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of toBodyGyroMag

#####tBodyGyroJerkMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean tBodyGyroJerkMag
#####tBodyGyroJerkMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of tBodyGyroJerkMag

#####fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyAcc in X,Y,Z axes 

#####fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyAcc in X,Y,Z axes 

#####fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyAccJerk in X,Y,Z axes 

#####fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyAccJerk in X,Y,Z axes 

#####fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyGyro in X,Y,Z axes 

#####fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyGyro in X,Y,Z axes 

#####fBodyAccMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyAccMag
#####fBodyAccMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyAccMag

#####fBodyBodyAccJerkMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyBodyAccJerkMag
#####fBodyBodyAccJerkMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyBodyAccJerkMag

#####fBodyBodyGyroMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyBodyGyroMag
#####fBodyBodyGyroMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyBodyGyroMag

#####fBodyBodyGyroJerkMag-mean()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of mean fBodyBodyGyroJerkMag
#####fBodyBodyGyroJerkMag-std()
- Type: numeric, normalized to between [-1,1]
- Mean (across all observations) of standard deviation of fBodyBodyGyroJerkMag