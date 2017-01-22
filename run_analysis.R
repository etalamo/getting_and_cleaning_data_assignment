#(1) Merges the training and the test sets to create one data set.
#Read the files
#TEST folder
test_subject <- read.table(file='test/subject_test.txt')
X_test <- read.table(file='test/X_test.txt')
y_test <- read.table(file='test/y_test.txt')

#TRAIN folder
train_subject <- read.table(file='train/subject_train.txt')
X_train <- read.table(file='train/X_train.txt')
y_train <- read.table(file='train/y_train.txt')

#Merging the 3 datasets
subject <- rbind(test_subject, train_subject)
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)

#Identifying columns
features <- read.table(file='features.txt')

#Loading column names from features dataset into X dataset
colnames(X) <- features$V2

#(2) Extracts only the measurements on the mean and standard deviation for each measurement.
filtered_columns <- grep("([Mm]ean)|([Ss]td)", colnames(X), value=TRUE, perl=T)
filteredX <- subset(X, select=filtered_columns)

#(3) Uses descriptive activity names to name the activities in the data set
#Identifying activities
activities <- read.table(file='activity_labels.txt')

#Loading activity names from activities dataset into y dataset
for (i in 1:length(activities$V2)) {
  y$V1 <- sub(activities$V1[i],activities$V2[i],y$V1)
}
colnames(y) <- "activity"

#Merge the activities column with the dataset
filteredX <- cbind(y,filteredX)

#Merge the subjects column with the dataset
colnames(subject) <- "subject"
filteredX <- cbind(subject,filteredX)

#(4) Appropriately labels the data set with descriptive variable names.
#Removing hyphens
names(filteredX) <- gsub("-","",names(filteredX))
#Removing commas
names(filteredX) <- gsub(",","",names(filteredX))
#Removing parenthesis
names(filteredX) <- gsub("\\(|\\)", "", names(filteredX))
#Converting to lowercase
names(filteredX) <- tolower(names(filteredX))

#(5) From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
library(dplyr)

#Load the tbl_df dplyr table from the dataset
df_dplyr <- tbl_df(filteredX)

#Remove filteredX dataset from the environment
rm(filteredX)

#Calculate the average grouping by subject (first) and activity (second)
#Save the column names to calculate the mean
mean_df <- df_dplyr %>% group_by(subject, activity) %>% summarise_each(funs(mean))

#Write the tidy data file 
write.table(mean_df,"tidy.txt",row.name=FALSE)