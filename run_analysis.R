## This is the run_analysis.R script

## Objective of this script is to read the files and create a two  tidy data sets

## Lets downlaod the files  create the directory (if doesnt exist) and download the data set into it.

if(!file.exists("./project_data")){ 
dir.create("./project_data") 
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "project_data/dataset.zip", method = "curl") 
  unzip("project_data/dataset.zip", exdir = "course_project")
  }



# 1. Merges the training and the test sets to create one data set.
###################
##  First read  feature.txt to read all the columns/variables associated with the data set

features <- read.table('./features.txt')

cnames <- c("Subject","Activity",as.character(features[,2]))


## Read the Test set and Test labels  and  Subjects/volunteers ID's  who performed tests on each of the Test labels.

test_set <- read.table ("./test/X_test.txt")
test_labels <- read.table("./test/y_test.txt")
test_subject <- read.table ("./test/subject_test.txt")

## combine the test data  into one test.set

test_set <- cbind(test_subject,test_labels,test_set)

## Changes the colnames of test.set  table  from features
colnames(test_set) <- cnames

cnames <- c("Subject","Activity",as.character(features[,2]))


# Read the Train set and Train labels  and  Subjects/volunteers ID's  who performed training on each of the Train labels.

train_set <- read.table ("./train/X_train.txt")
train_labels <- read.table("./train/y_train.txt")
train_subject <- read.table ("./train/subject_train.txt")


## combine the test data  into one test.set

train_set <- cbind(train_subject,train_labels,train_set)

## Changes the colnames of test.set  table  from features

colnames(train_set) <- cnames


## combine both  test and train data to create a final Tidy data set

final_data_set <- rbind(test_set,train_set)



# 2.  Extracts only the measurements on the mean and standard deviation for each measurement.
##################

# get colnames with mean and std only

data_extrc_colnames <- grep("(mean|std)\\(\\)", colnames(final_data_set), value = TRUE)

# create a final data set with mean and std columns only

final_data_extrc <-  final_data_set[,c("Subject","Activity",data_extrc_colnames)]


# 3. Uses descriptive activity names to name the activities in the data set
#####################

# Activity column values need to changed from short value to long values    based on mapping in activity_labels.txt file

activity_labels <- read.table("activity_labels.txt")

colnames (activity_labels) <- c("activity","label")

activity_mapping <- activity_labels$activity

names(activity_mapping) <- activity_labels$label


final_data_extrc$Activity <- factor(final_data_extrc$Activity, levels = activity_mapping, labels = names(activity_mapping))


# 4. Appropriately labels the data set with descriptive variable names
####################

## This will search and replace spaces and  "-" with "." to modify the variable names.


colnames(final_data_extrc) <- gsub("\\(\\)", "", tolower(colnames(final_data_extrc)))


colnames(final_data_extrc) <- gsub("-", ".", colnames(final_data_extrc))



# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
####################

library(reshape2)


colids <- colnames(final_data_extrc)[1:2]
colvariables <- colnames(final_data_extrc)[3:length(colnames(final_data_extrc))]


data_extrc_melt <- melt(final_data_extrc, id=colids, measure.vars=colvariables)

data_extrc_cast <- dcast(data_extrc_melt, subject + activity ~ variable, mean)

# This suffix the  variable names with "avg" 

colnames(data_extrc_cast) <- c(colids, gsub("(.*)", "avg.\\1", colvariables))


## finally write  tidy data output for 1 (tidy_data.txt) and 5   (tidy_data_avg.txt)

if(!file.exists('./tidy_data_output')){
  dir.create('./tidy_data_output')
  
  write.table(final_data_extrc,file='./tidy_data_output/tidy_data.txt',row.name=FALSE,quote=FALSE)
  write.table(data_extrc_cast,file='./tidy_data_output/tidy_data_avg.txt',row.name=FALSE,quote=FALSE)
  
  } else {
    
    write.table(final_data_extrc,file='./tidy_data_output/tidy_data.txt',row.name=FALSE,quote=FALSE)
    write.table(data_extrc_cast,file='./tidy_data_output/tidy_data_avg.txt',row.name=FALSE,quote=FALSE)
    
  }



