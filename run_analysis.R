######################
# Script Information :
######################

# Name: run_analysis.R
# Version : v_3
# Date: 22NOV15
# 
# Description / Details :
#   User Controls / Requirements  - Change path to 'UCI HAR Dateset' Directory location (raw data)
#                                 - Comment out 2 lines at end of this script for only workspace / tidy data output.
# 
#   Output Description : This file will generate Tidy_Dataset_Data_3.txt as the output in the 'UCI HAR Dataset' Directory location

######################################################################
#Change directory below to UCI HAR Dataset directory datasets location
######################################################################

rm(list=ls())
setwd("C:\\Documents\\Coursera\\CS_3_Getting_and_Cleaning_Data\\Assignment\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset")

#Read in relavent files
features<-read.table("features.txt")
train_x<-read.table('./train/X_train.txt')
train_y<-read.table('./train/Y_train.txt')
train_sub<-read.table('./train/subject_train.txt')
test_x<-read.table('./test/X_test.txt')
test_y<-read.table('./test/Y_test.txt')
test_sub<-read.table('./test/subject_test.txt')
act_lab<-read.table("activity_labels.txt")


# STEP 4 : Appropriately names variables in the data set with descriptive variable names
names(test_x)<-make.names(as.character(features[[2]]),allow_=TRUE,unique = TRUE)
names(train_x)<-make.names(as.character(features[[2]]),allow_=TRUE,unique = TRUE)
names(train_y)<-c("Activity")
names(test_y)<-c("Activity")
names(train_sub)<-c("Subject")
names(test_sub)<-c("Subject")

#Combine the Columns of x,y,subjects for test and train datasets individually
test_temp<-cbind(test_x,test_y,test_sub)
train_temp<-cbind(train_x,train_y,train_sub)

#Combines the data for test and train data sets to Data_0 , saves it to text file.
#561 columns + subject + activity == 10299 rows * 563 columns
# STEP 1 : Merge TRAIN & TEST datasets to form 1 data set == Data_0
Data_0<-rbind(train_temp,test_temp)

# STEP 2 : Extracts only the measurements on the mean and std deviation for each measurement
#Using assigned variable names in rename section, separating required columns that have mean,std in the name, 
#along with corresponding activity and subject name, for consistancy
#86 columns + activity + subject == 10299 rows * 88 columns 

Data_1<-select(Data_0,contains("Subject"),contains("Activity"),contains("mean"),contains("std"))

#Creating a variable Data_2
Data_2<-Data_1

# STEP 3 : Converting Activities to detailed variable names, the complicated way
#Renames variables to convinient variable names
#Converts Activity and subject to factors
Data_2$Activity<-as.factor(Data_2$Activity)
Data_2$Activity<-factor(Data_2$Activity,levels=act_lab$V1,labels = act_lab$V2)

# STEP 5
# Using the data set before conversion to Descriptive names
# Loop thru subjects, then thru activities and return mean to a data frame using lapply
Data_3<-data.frame()

for(i in 1: length(unique(Data_1$Subject))){
  for(j in 1:length(unique(Data_1$Activity))){
    x<-subset(Data_1, Subject==i)
    y<-subset(x,Activity==j)
    z<-lapply(y,mean)
    Data_3<-rbind(Data_3,z)
# Means of means
  }
}
Data_3$Activity<-as.factor(Data_3$Activity)
Data_3$Activity<-factor(Data_3$Activity,levels=act_lab$V1,labels = act_lab$V2)

##############################################################################
########### Uncomment this line to clean works space for only primary varables
##############################################################################

#rm(x,y,z,act_lab,features,test_sub,test_x,test_y,train_x,train_y,train_sub,test_temp,train_temp)

#################################################################################################################
########### Comment this line to keep the variables in the work space only and not output Tidy_Dataset_Data_3.txt
#################################################################################################################
write.table(Data_3,file='Tidy_Dataset_Data_3.txt',row.names=FALSE)
