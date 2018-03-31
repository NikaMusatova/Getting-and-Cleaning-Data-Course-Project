
The script run_analysis.R performs the steps described below:

1. Data is read from the working directory.
2. All the data is merged using the rbind() function. 
3. Header is added using variable names in the features.txt
4. Only means and stds are extracted
5. Columns with subject IDs and activity names are added
6. New dataset with averages for each subject and activity type is created. 
7. New dataset is written in newdata.txt file.

Codebook.md contains variables description.



