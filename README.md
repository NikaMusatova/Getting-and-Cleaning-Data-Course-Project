
The script run_analysis.R performs the steps described below:

1. Data is read from the working directory.
2. All the data is merged using the rbind() function. 
3. Header is added using variable names in the features.txt
4. Only means and stds are extracted
5. Columns with subject IDs and activity names are added
6. New dataset with averages for each subject and activity type is created. 
7. New dataset is written in newdata.txt file.

Variables

train_set, test_set - main datasets from the downloaded files

all_data - binded main datasets

train_set_activityl, test_set_activityl - activity IDs for main datasets from the downloaded files, 

activityl - binded activity IDs datasets, 

train_set_subj, test_set_subj - subject IDs for main datasets from the downloaded files, 

subjects - binded subject IDs datasets, 

activity_names - dataset with information about activity ID names, 

headers - variable names for main datasets from downloaded files, 

all_means_stds - dataset with means and stds only extracted from all_data dataset,

newtable - dataset with averages of variable in all_means_stds for each subject and activity type.



