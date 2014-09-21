### Description 

The R script in this directory,

    run_analysis.R

downloads and processes an accelerometric data set from Samsung, combines the testing and training data, extracts the means and standard deviation measurements, and averages them according to the subject and the activity. Please see below for an explanation of the columns.

### Codebook

Our column names are very close to the original variable names in the Samsung data set, though we are only interested in the standard deviations (std) and means (mean) of each measurement. All units were normalized in the original data set, so we have no units.

Our variables are:

    subject
    activity
    tBodyAcc-mean-X
    tBodyAcc-mean-Y
    tBodyAcc-mean-Z
    tBodyAcc-std-X
    tBodyAcc-std-Y
    tBodyAcc-std-Z
    tGravityAcc-mean-X
    tGravityAcc-mean-Y
    tGravityAcc-mean-Z
    tGravityAcc-std-X
    tGravityAcc-std-Y
    tGravityAcc-std-Z
    tBodyAccJerk-mean-X
    tBodyAccJerk-mean-Y
    tBodyAccJerk-mean-Z
    tBodyAccJerk-std-X
    tBodyAccJerk-std-Y
    tBodyAccJerk-std-Z
    tBodyGyro-mean-X
    tBodyGyro-mean-Y
    tBodyGyro-mean-Z
    tBodyGyro-std-X
    tBodyGyro-std-Y
    tBodyGyro-std-Z
    tBodyGyroJerk-mean-X
    tBodyGyroJerk-mean-Y
    tBodyGyroJerk-mean-Z
    tBodyGyroJerk-std-X
    tBodyGyroJerk-std-Y
    tBodyGyroJerk-std-Z
    tBodyAccMag-mean
    tBodyAccMag-std
    tGravityAccMag-mean
    tGravityAccMag-std
    tBodyAccJerkMag-mean
    tBodyAccJerkMag-std
    tBodyGyroMag-mean
    tBodyGyroMag-std
    tBodyGyroJerkMag-mean
    tBodyGyroJerkMag-std
    fBodyAcc-mean-X
    fBodyAcc-mean-Y
    fBodyAcc-mean-Z
    fBodyAcc-std-X
    fBodyAcc-std-Y
    fBodyAcc-std-Z
    fBodyAcc-meanFreq-X
    fBodyAcc-meanFreq-Y
    fBodyAcc-meanFreq-Z
    fBodyAccJerk-mean-X
    fBodyAccJerk-mean-Y
    fBodyAccJerk-mean-Z
    fBodyAccJerk-std-X
    fBodyAccJerk-std-Y
    fBodyAccJerk-std-Z
    fBodyAccJerk-meanFreq-X
    fBodyAccJerk-meanFreq-Y
    fBodyAccJerk-meanFreq-Z
    fBodyGyro-mean-X
    fBodyGyro-mean-Y
    fBodyGyro-mean-Z
    fBodyGyro-std-X
    fBodyGyro-std-Y
    fBodyGyro-std-Z
    fBodyGyro-meanFreq-X
    fBodyGyro-meanFreq-Y
    fBodyGyro-meanFreq-Z
    fBodyAccMag-mean
    fBodyAccMag-std
    fBodyAccMag-meanFreq
    fBodyBodyAccJerkMag-mean
    fBodyBodyAccJerkMag-std
    fBodyBodyAccJerkMag-meanFreq
    fBodyBodyGyroMag-mean
    fBodyBodyGyroMag-std
    fBodyBodyGyroMag-meanFreq
    fBodyBodyGyroJerkMag-mean
    fBodyBodyGyroJerkMag-std
    fBodyBodyGyroJerkMag-meanFreq

See the features\_info.txt file in this directory for their semantics:

    ./data/UCI HAR Dataset/features_info.txt
