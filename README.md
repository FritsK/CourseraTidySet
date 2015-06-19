### Introduction

R script for extracting and tidying data of wearables

The instructions for the Coursera R Getting and Cleaning Data - Course project Assesment are
You will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.  

You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average 
of each variable for each activity and each subject.

Please upload the tidy data set created in step 5 of the instructions. 
Please upload your data set as a txt file created with write.table() using row.name=FALSE 
(do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).

information at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Explanation files in this Assesment repository

the file run_analysis.R contains all the R commands that download, extract and modify the data
the file Codebook.MD indicates all the variables and summaries that are calculated, along with units, and other relevant information
the file readme.MD (this file) explains the steps that are performed to create the tidy dataset file (tidyset.txt)
the file tidyset.txt is the resulting dataset that contains the averaged smartphone data per mean or std variable per subject


### Explanation R Scripts to create the tidy dataset

1 A subdirectory "./smartphones" of the current working directory is created 
2 the zipfile is downloaded from the given url to the newly created subdirectory
3 the zipfile is unzipped
4 Not alle files are needed nor extracted the following of the unzipped files are loaded into dataframes:
	features
	X_train
	subject_train
	X_test
	subject_test
5 using pattern filtering, the features needed (mean and std variables) are selected and loaded
6 X_train and X_test datasets are merged to the dataframe "totalfeatset" while selecting the features needed using the vector created in 5
  only the number of rows available in the subject_ files are loaded, so these can be combined in step 9
7 the columnames are set to the featurenames using the vector created in 5
8 the subject_train and subject_test are merged
9 these subjects are added as last column (using cbind) to the totalfeatset
10 the means of all variables are calculated in a loop per subject:
  for each subject the rows are filtered and averaged using the apply function
  the resulting average set is added each time as a new row to a matrix
11 the matrix is saved as file tidyset.txt

