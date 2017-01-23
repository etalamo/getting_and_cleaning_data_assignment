## Getting and Cleaning Data Assignment
### File list:
* run_analysis.R
* README.md
* codebook.md

### Script steps:
1. It reads the files from the "test" folder: subject_test.txt, X_test.txt and y_test.txt and stores them into three datasets.
2. It reads the files from the "train" folder: subject_train.txt, X_train.txt and y_train.txt and stores them into three datasets.
3. It merges the 3 datasets (i.e. subject_test.txt with subject_train.txt).
4. It reads the column names from the file features.txt and renames the colums from the merged dataset called X. This is the dataset resulting from the merge of the X_test and X_train datasets.
5. Using grep and regular expressions, it exacts the columns that includes the words "mean" or "std" and stores the result in a new dataset called "filteredX".
6. It then reads the other text file "activity_labels.txt" and stores the activities names in the activities dataset.
7. For each activity in the activities dataset it replaces the activity code with the activity name.
8. It binds the columns "activities" and "subjects" to the "filteredX" dataset.
9. It formats the column names with the following rules: 
  1. Removes any hyphens, commas and parentheses that it found.
  2. Converts all the names to lower case to avoid typing errors when further working with the dataset.
10. Using the dplyr library, it calculates the mean of each column grouping them by subject (first) and activity (second) and stores it in the mean_df dataset.
11. It writes mean_df dataset in the the tidy.txt file.
