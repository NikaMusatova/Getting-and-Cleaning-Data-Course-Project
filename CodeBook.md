## Variables used in the run_analysis.R:

  * train_set, test_set - main datasets from the downloaded files  
  * all_data - binded main datasets 
  * train_set_activityl, test_set_activityl - activity IDs for main datasets from the downloaded files
  * activityl - binded activity IDs datasets
  * train_set_subj, test_set_subj - subject IDs for main datasets from the downloaded files
  * subjects - binded subject IDs datasets
  * activity_names - dataset with information about activity ID names
  * headers - variable names for main datasets from downloaded files
  * all_means_stds - dataset with means and stds only extracted from all_data dataset
  * newtable - dataset with averages of variable in all_means_stds for each subject and activity type.

## Variables used in newdata.txt:

  * (name)_average - mean for corresponding mean or std variable described in "Variables used in the downloaded datasets"
  * Subject - Numerical subject ID
  * Activity - Name of an activity type performed

## Variables used in the downloaded datasets:

  ### '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  * tBodyAcc-XYZ
  * tGravityAcc-XYZ
  * tBodyAccJerk-XYZ
  * tBodyGyro-XYZ
  * tBodyGyroJerk-XYZ
  * tBodyAccMag
  * tGravityAccMag
  * tBodyAccJerkMag
  * tBodyGyroMag
  * tBodyGyroJerkMag
  * fBodyAcc-XYZ
  * fBodyAccJerk-XYZ
  * fBodyGyro-XYZ
  * fBodyAccMag
  * fBodyAccJerkMag
  * fBodyGyroMag
  * fBodyGyroJerkMag

### The set of variables that were estimated from these signals are: 

  * mean(): Mean value
  * std(): Standard deviation
  * mad(): Median absolute deviation 
  * max(): Largest value in array
  * min(): Smallest value in array
  * sma(): Signal magnitude area
  * energy(): Energy measure. Sum of the squares divided by the number of values. 
  * iqr(): Interquartile range 
  * entropy(): Signal entropy
  * arCoeff(): Autorregresion coefficients with Burg order equal to 4
  * correlation(): correlation coefficient between two signals
  * maxInds(): index of the frequency component with largest magnitude
  * meanFreq(): Weighted average of the frequency components to obtain a mean frequency
  * skewness(): skewness of the frequency domain signal 
  * kurtosis(): kurtosis of the frequency domain signal 
  * bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
  * angle(): Angle between to vectors.
### Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

  * gravityMean
  * tBodyAccMean
  * tBodyAccJerkMean
  * tBodyGyroMean
  * tBodyGyroJerkMean
