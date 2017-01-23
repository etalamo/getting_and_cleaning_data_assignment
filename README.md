## Getting and Cleaning Data Assignment
### Files
* run_analysis.R
* README.md
* codebook.md


### Script steps:

* It reads the files from the "test" folder: subject_test.txt, X_test.txt and y_test.txt and stores them into three datasets
* It reads the files from the "train" folder: subject_train.txt, X_train.txt and y_train.txt and stores them into three datasets
* It merges the 3 datasets (i.e. subject_test.txt with subject_train.txt)
* It reads the column names from the file features.txt and renames the colums from the merged dataset called X. This is the dataset resulting from the merge of the X_test and X_train datasets
* Using grep and regular expressions, it exacts the columns that includes the words "mean" or "std" and stores the result in a new dataset called "filteredX".
* It then reads the other text file "activity_labels.txt" and stores the activities names in the activities dataset.
* For each activity in the activities dataset it replaces the activity code with the activity name.
* It binds the columns "activities" and "subjects" to the "filteredX" dataset
* It formats the column names with the following rules: (1) removes any hyphens, commas and parenthesis that it found and (2) it converts all the names to lower case to avoid typing errors when further working with the dataset.
* Using the dplyr library, it calculates the mean of each column grouping them by subject (first) and activity (second) and stores it in the mean_df dataset.
* It writes mean_df dataset in the the tidy.txt file.
