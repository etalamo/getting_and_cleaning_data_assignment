## Code Book
### Original dataset:
* features.txt: List of measurements
* activity_labels.txt: List of performed activities 
* train/X_train.txt: Training set
* train/y_train.txt: Training labels
* train/subject_train.txt: Subject IDs
* test/X_test.txt: Test set
* test/y_test.txt: Test labels
* test/subject_test.txt': Subject IDs

### Process:
1. Merged the "X_train" with "X_test" datasets. 
2. Merged the "y_train" with "y_test" datasets.
3. Merged the "subject_train" with "subject_test" datasets.
4. In the "X" merged dataset (merge of "X_train" and "X_test"), assigned column names from "features.txt" and filtered them, leaving only the ones that are related with MEAN and STANDARD DEVIATION
5. Replaced the activities IDs with the activities labels for easier data reading.
6. Cleaned hyphens, commas and parentheses from column names and placed then lower cased to avoid typing mistakes while working with the data.
7. Calculated the mean of each variable grouping by "subject" and "activity".

### Variables:
The following variables are included in the tidy.txt file:

* subject: is the ID of the subject in the test (values: 1 to 30)
* activity: the measured activity (values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

### Measurements:
* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz
* tbodyaccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodyaccmagmean
* tbodyaccmagstd
* tgravityaccmagmean
* tgravityaccmagstd
* tbodyaccjerkmagmean
* tbodyaccjerkmagstd
* tbodygyromagmean
* tbodygyromagstd
* tbodygyrojerkmagmean
* tbodygyrojerkmagstd
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodyaccmeanfreqx
* fbodyaccmeanfreqy
* fbodyaccmeanfreqz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodyaccjerkmeanfreqx
* fbodyaccjerkmeanfreqy
* fbodyaccjerkmeanfreqz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* fbodygyromeanfreqx
* fbodygyromeanfreqy
* fbodygyromeanfreqz
* fbodyaccmagmean
* fbodyaccmagstd
* fbodyaccmagmeanfreq
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstd
* fbodybodyaccjerkmagmeanfreq
* fbodybodygyromagmean
* fbodybodygyromagstd
* fbodybodygyromagmeanfreq
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstd
* fbodybodygyrojerkmagmeanfreq
* angletbodyaccmeangravity
* angletbodyaccjerkmeangravitymean
* angletbodygyromeangravitymean
* angletbodygyrojerkmeangravitymean
* anglexgravitymean
* angleygravitymean
* anglezgravitymean

