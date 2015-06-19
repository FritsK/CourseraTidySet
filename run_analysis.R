#Coursera R Getting and Cleaning Data - Course project
#R script for extracting and tidying data of wearables

#You will be required to submit: 
#1) a tidy data set as described below, 
#2) a link to a Github repository with your script for performing the analysis, and 
#3) a code book that describes the variables, the data, and any transformations or work that you performed 
  #to clean up the data called CodeBook.md. 
#You should also include a README.md in the repo with your scripts. 
#This repo explains how all of the scripts work and how they are connected.  

#You should create one R script called run_analysis.R that does the following. 
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average 
#of each variable for each activity and each subject.

#Please upload the tidy data set created in step 5 of the instructions. 
#Please upload your data set as a txt file created with write.table() using row.name=FALSE 
#(do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).

#information at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

getwd()
setwd("D:/cursus/coursera/r")

#get the data
dir.create("smartphones")
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="./smartphones/dataset.zip",
              method="auto")
unzip(zipfile="./smartphones/dataset.zip", exdir="./smartphones")

#load the data into local dataframes
features <- read.table("./smartphones/UCI HAR Dataset/features.txt", sep=" ")
head(features)

subject_train <- read.table("./smartphones/UCI HAR Dataset/train/subject_train.txt", sep=" ")
subject_test <- read.table("./smartphones/UCI HAR Dataset/test/subject_test.txt", sep=" ")
y_train <- read.table("./smartphones/UCI HAR Dataset/train/y_train.txt", sep=" ")
y_test <- read.table("./smartphones/UCI HAR Dataset/test/y_test.txt", sep=" ")


X_train <- read.csv("./smartphones/UCI HAR Dataset/train/X_train.txt", sep=" ", dec=".", skip=0,header = FALSE)
dim(X_train) # [1] 11228   662
head(X_train, n=2)
unique(X_train[1:100,1:2])
X_test <- read.csv("./smartphones/UCI HAR Dataset/test/X_test.txt", sep=" ", dec=".", skip=0,header = FALSE)
head(X_test,n=2)
dim(X_test) # [1] 4312  667
unique(X_test[1:25,1:3])

#select the features with means and std's 
meanfeats<-grep(pattern="mean", x=features$V2, fixed=TRUE, value=FALSE) #rownumber of features with "mean" in the name
stdfeats<-grep(pattern="std", x=features$V2, fixed=TRUE, value=FALSE) #rownumber of features with "std" in the name

selectedfeats<-c(meanfeats,stdfeats) #combine the two vectors
features[selectedfeats,2] #selection of features with "mean" or "std" in name

#merge training and testset on the selected features (same number as available subject indicating rows)
#totalfeatset<-rbind(X_train[,selectedfeats],X_test[,selectedfeats]) # more rows than in subject per measure
totalfeatset<-rbind(X_train[1:nrow(subject_train),selectedfeats],X_test[1:nrow(subject_test),selectedfeats])
dim(totalfeatset)
head(totalfeatset, n=2)

#Appropriately label the data set with descriptive variable names.
colnames(totalfeatset) <- features[selectedfeats,2] 
head(totalfeatset, n=2)


#create second tidy dataset
#first add subjects to dataframe
subject<-stack(c(subject_train, subject_test)) #add test_subject rows after train_subject rows

totalfeatset$subject <- subjects[,1] #add column "subjects" with subject belonging to measure

nrsubjects<-unique(totalfeatset$subject)

tidyset<-apply(totalfeatset[totalfeatset$subject==0,],2,mean,na.rm=TRUE) #create empty matrix "tidyset"

#calculate means for each variable per subject
for (i in unique(totalfeatset$subject)) {
  tidyset<-rbind(tidyset,apply(totalfeatset[totalfeatset$subject==i,],2,mean,na.rm=TRUE))
}

tidyset<-tidyset[2:NROW(nrsubjects),] #remove first empty row 

write.table(tidyset, file="./smartphones/tidyset.txt", sep=",", row.name=FALSE) #save data to file "tidyset.txt"
