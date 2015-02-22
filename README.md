#Description
The R script run_analysis.R was created as part of the Coursera Getting and Cleaning data course project.

##Data used for this Project :

This script works with the Human Activity Recognition Using Smartphones Dataset. The original dataset and its description can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##How data is processed and Output

This script creates two separate data sets as output and stores the files in the tidy_data_output directory.

tidy_data.txt

the purpose of this data set is to prepare  to create next data set. This data set is cretaed by rbinding  test and train data sets , subjects and data.
First all the variables from feature.txt were read using read.table() and created a vector appended with "Subject" and "Activity". Then read Test and  Train data into seperate data tables.. and then Combine Test and Train data sets using rbinding to for a single data set.This data set contians all the variables but we are interested in  only mean() and std() variables  based on feature_info.txt using grep function extract only mean and std for each measurements.  


tidy_data_avg.txt

This data set contains the avg mean and standard deviation for each subject for each of the activity and for each variables. This was accomplished from the above tidy_data.txt dataset applied gsub to search and replace "-" wth "." on column names. and prefix with avg for all the mean and std variables.

Ouputs :

when run_analysis.R script is run two files are generated.

1) tidy_data,txt
2) tidy_data_avg.txt


How to Run the R script :

Run the Run script from the working directory and expectation is that all the data is already available in working directory a new tidy_data_output directort will be created if already doesnt exists.

this script used reshape2 library  before running expectation is that reshape2 libraries are alreadt installed.



