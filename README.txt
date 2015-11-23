README 
for getting a tidy data set.

First, three files were read from the directory ./UCI HAR Dataset. The read files are:
- features.txt
- X_test.txt
- X_train.txt

The second column of features. txt was assigned as names to data frames of xtest.txt and X_train.txt

Both data frames were merged using the join of the plyr package.

The columns that contain mean and std dev for each measurements are:
1:6
41:46
81: 86
121:216
161:166
201:202
214:215
227:228
240:241
253:254
266:271
345:350
516:517
529:530
542:543


Then, a new data frame containing those columns is created.