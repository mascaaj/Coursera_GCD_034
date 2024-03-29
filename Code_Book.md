# Code Book : Getting & Cleaning Data - Coursera
# Course Number : GCD-034

# # Version : 01
# # Date : 22NOV2015

# Index :
# This codebook is divided into two parts
# 1. Description about raw data
# 2. Description about processed data


# 1. Raw Data Information :

# # Original Dataset : Human Activity Recognition Using Smartphones Dataset
# # Version : 1.0

# # Data Generated by :
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÓ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

# # Data Description :
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# # Original dataset files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
...

# # Data Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

# # License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


# # Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

# # # The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

# # # Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

# # # The complete list of variables of each feature vector is available in 'features.txt'


# 2. Processed Data information :

# # Variables generated :

# # Primary Variables :

Data_0 <- Dataframe <- Size : 563* 10299 Obs
Merged test, train dataset, variables renamed

Data_1 <- Dataframe <- Size : 88 * 10299 Obs
Subset of Data_0, only variables with mean and std in name + activity & subject

Data_2 <- Dataframe <- Size : 88 * 10299 Obs 
Subset of Data_1, Descriptive activity names added

Data_3 <- Dataframe <- Size : 88 * 180   Obs
Means of variables in Data_1 (or Data_2) by subject and activity

# # Secondary Variables :

features <- stored data from 'features.txt'
train_x <- stored data from 'X_train.txt'
train_y <- stored data from 'Y_train.txt'
train_sub <- stored data from 'subject_train.txt'
test_x <- stored data from 'X_test.txt'
test_y <- stored data from 'Y_test.txt'
test_sub <- stored data from 'subject_test.txt'
act_lab <- stored data from 'activity_labels.txt'

test_temp <- Merged test data (column bind)
train_temp <- Merged train data (column bind)

x <- inloop variable <- subset of subject(n), where n = 1:30
y <- inloop variable <- subset of activity(m) for subject (n), where n = 1:30, m=1:6
z <- inloop variable <- mean of values in y

# # Processing method :

1. Data read in and stored to appropriate variables in the workspace, feature names converted to character.
2. Variables renamed *(STEP4)* to maintain consitency and ease of working with data & multiple data sets

3. Column bind the test x,y,subject datasets & the train x,y,subjects into temporary variables
4. Row bind the temporary test and train datasets *(STEP1)* -> Data_0

5. Write data to text file in directory and clear workspace - to avoid confusion.
6. Reload Data_0 from the text file
7. Extracts the measurements with mean and std from the dataset using 'dplyr' and select. Note, activity and subject have been selected as well -> *Data_1 (STEP2)*

8. Save this to a new dataframe -> *Data_2*
9. Convert Data_2 variables of activity to a factor and add labels as specified in the 'activity_labels.txt' file *(STEP3)*

10. Create a for loop for subjects 1 to 30, activity 1 to 6
11. Using the Data_1 dataset, subset the data frame based on subject then activity
12. Within the loop, use lapply to take the mean of the data. Row bind these values together -> *Data_3*
13. Factor the activities and relabel them.
14. Data_3 is the final data set with the means (based on subject & activity)of the variables with std and means in the name for 30 subjects *(STEP5)*

15. Save the dataframe as a text file