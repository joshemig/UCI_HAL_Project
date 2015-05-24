# UCI_HAL_Project

###Notes on run_analysis.R
- run_analysis.R, if run in total, will create a `/data` folder, download, and unzip the datasets from the [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) given in the assignment (not directly from UCI)
- After downloading, the code should be run in your working directory, but it will pull the data from a subfolder called `./data` -- so data needs to be unzipped into the data folder.  If data is unzipped directly into your working directory, run_analysis.R will not work.
- run_analyis.R is a single self contained file.  It does use the `utils` and `dplyr` package, which it loads with library calls toward the top of the script.  There are no other script modules necessary.
- from within the unzipped data folder, this script uses the following files:
  - `activity_labels.txt`
  - `features.txt` 
  - `test/subject_test.txt`
  - `test/X_test.txt`
  - `test/y_test.txt`
  - `train/subject_train.txt`
  - `train/X_train.txt`
  - `test/y_train.txt`

###run_analysis.R Step by Step (from code comments)
1. Get data:  Create "data" folder (if nonexist); download file; unzip file
2. Load dependencies: utils, dplyr
3. Get subject names for test and train (subject_test.txt, subject_train.txt)
4. Read observations and activities for test and train (`test/X_test.txt`, `train/X_train.txt`, `test/y_test.txt`, `train/y_train.txt`)
5. Read feature (column names for observations) names - `features.txt` 
6. get feature names into vector for renaming cols of xTrain, xTest
7. Combine test and training data into allObs, allActionLabels, allSubs data frames using `rbind`
  * xTest, xTrain (accel, gyro data) first
  * yTest, yTrain (activity labels) second
  * subTest, subTrain (subjects) third
8. Name columns in allObs, allActionLabels, allSubs with feature names
9. Extract logical vectors from features list on feature names that contain "mean()" or "std()" and combine mean and std logical vectors into single logical vector to use on list of all features
10. Extract columns from allObs (all observations - `X_test` and `X_train` combined) containing mean and std measurements 
11. Get label keys ('activity_labels') and add column of descriptive activity names to allActionLabels (ie, an ActivityID 1 = ActivityName "WALKING")
12. column bind allSubs, allActLabels, allObs to form unified dataset (`allData`) with all subject, activity, and recorded data (**this is everything**)
13. Create new tidy data set containing averages of all variables for Subject and Activity using `aggregate` from `dplyr`; `aggregate` uses the `mean()` function on all columns, aggregating on the subjects, primarily, and activities, secondarily.  (*This seems to work, but it is a little janky because it creates NAs in the `ActivityName` column, and creates a duplicate to the `SubjectID` column called simply `Subject`; as a result the `ActivityName` and `SubjectID` columns are removed from the tidy data set. As such, while the column names remain the same as the feature names, they are actually averages. I wish I could have figured out a more elegant way*)
14. Write `tidyData` to file
