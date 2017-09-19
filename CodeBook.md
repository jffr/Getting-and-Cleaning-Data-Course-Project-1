#CodeBook


## Short description of the original experiment:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Original data collected:

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 



## Further analysis:

The data has been further cleaned in order to have:

- training and the test data in the same data set
- only the values resulting from the mean and standard deviation for each measurement
- descriptive activity names to name the activities in the data set
- descriptive variable names as data labels
- a tidy data set with the average of each variable for each activity and each subject, so that each measurement (subject-activity pair) has one single record in the table.


## For each record it is provided:

- An identifier of the subject who carried out the experiment.
- Its activity label. 
- A 66-feature vector with an average of the time and frequency domain variables obtained in the original dataset through the mean() and std() functions.

## Description of the variables:
All gyroscope data are in radiants/second, all measurements have been normalized within [-1,1]

VARIABLE | DESCRIPTION
---------------------|--------------------------------------------------------
subject                          | Subject ID (range is 1:30)
activity                         | Activity type ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
timeBodyAcc.mean.X               | Time-domain mean for acceleration of body for the X direction
timeBodyAcc.mean.Y               | Time-domain mean for acceleration of body for the Y direction
timeBodyAcc.mean.Z               | Time-domain mean for acceleration of body for the Z direction
timeBodyAcc.std.X                | Time-domain standard deviation for acceleration of body for the X direction
timeBodyAcc.std.Y                | Time-domain standard deviation for acceleration of body for the Y direction 
timeBodyAcc.std.Z                | Time-domain standard deviation for acceleration of body for the Z direction 
timeGravityAcc.mean.X            | Time-domain mean for acceleration of gravity for the X direction
timeGravityAcc.mean.Y            | Time-domain mean for acceleration of gravity for the Y direction 
timeGravityAcc.mean.Z            | Time-domain mean for acceleration of gravity for the Z direction 
timeGravityAcc.std.X             | Time-domain standard deviation for acceleration of gravity for the X direction
timeGravityAcc.std.Y             | Time-domain standard deviation for acceleration of gravity for the Y direction  
timeGravityAcc.std.Z             | Time-domain standard deviation for acceleration of gravity for the Z direction  
timeBodyAccJerk.mean.X           | Time-domain mean for acceleration jerk for the X direction
timeBodyAccJerk.mean.Y           | Time-domain mean for acceleration jerk for the Y direction  
timeBodyAccJerk.mean.Z           | Time-domain mean for acceleration jerk for the Z direction  
timeBodyAccJerk.std.X            | Time-domain standard deviation for acceleration jerk for the X direction
timeBodyAccJerk.std.Y            | Time-domain standard deviation for acceleration jerk for the Y direction 
timeBodyAccJerk.std.Z            | Time-domain standard deviation for acceleration jerk for the Z direction 
timeBodyGyro.mean.X              | Time-domain mean of body gyroscope measurement for the X direction
timeBodyGyro.mean.Y              | Time-domain mean of body gyroscope measurement for the Y direction  
timeBodyGyro.mean.Z              | Time-domain mean of body gyroscope measurement for the Z direction  
timeBodyGyro.std.X               | Time-domain standard deviation of body gyroscope measurement for the X direction
timeBodyGyro.std.Y               | Time-domain standard deviation of body gyroscope measurement for the Y direction 
timeBodyGyro.std.Z               | Time-domain standard deviation of body gyroscope measurement for the Z direction 
timeBodyGyroJerk.mean.X          | Time-domain mean of body gyroscope jerk measurement for the X direction
timeBodyGyroJerk.mean.Y          | Time-domain mean of body gyroscope jerk measurement for the Y direction   
timeBodyGyroJerk.mean.Z          | Time-domain mean of body gyroscope jerk measurement for the Z direction   
timeBodyGyroJerk.std.X           | Time-domain standard deviation of body gyroscope jerk measurement for the X direction
timeBodyGyroJerk.std.Y           | Time-domain standard deviation of body gyroscope jerk measurement for the Y direction  
timeBodyGyroJerk.std.Z           | Time-domain standard deviation of body gyroscope jerk measurement for the Z direction  
timeBodyAccMag.mean              | Time-domain mean magnitude of body acceleration
timeBodyAccMag.std               | Time-domain standard deviation magnitude of body acceleration 
timeGravityAccMag.mean           | Time-domain mean magnitude of gravity acceleration 
timeGravityAccMag.std            | Time-domain standard deviation magnitude of gravity acceleration
timeBodyAccJerkMag.mean          | Time-domain mean magnitude of body acceleration jerk 
timeBodyAccJerkMag.std           | Time-domain standard deviation magnitude of body acceleration jerk 
timeBodyGyroMag.mean             | Time-domain mean magnitude of body gyroscope measurement
timeBodyGyroMag.std              | Time-domain standard deviation magnitude of body gyroscope measurement 
timeBodyGyroJerkMag.mean         | Time-domain mean magnitude of body gyroscope jerk measurement 
timeBodyGyroJerkMag.std          | Time-domain standard deviation magnitude of body gyroscope jerk measurement
frequencyBodyAcc.mean.X          | Frequency-domain mean for acceleration of body for the X direction  
frequencyBodyAcc.mean.Y          | Frequency-domain mean for acceleration of body for the Y direction 
frequencyBodyAcc.mean.Z          | Frequency-domain mean for acceleration of body for the Z direction
frequencyBodyAcc.std.X           | Frequency-domain standard deviation for acceleration of body for the X direction 
frequencyBodyAcc.std.Y           | Frequency-domain standard deviation for acceleration of body for the Y direction 
frequencyBodyAcc.std.Z           | Frequency-domain standard deviation for acceleration of body for the Z direction
frequencyBodyAccJerk.mean.X      | Frequency-domain mean for acceleration jerk for the X direction 
frequencyBodyAccJerk.mean.Y      | Frequency-domain mean for acceleration jerk for the Y direction 
frequencyBodyAccJerk.mean.Z      | Frequency-domain mean for acceleration jerk for the Z direction
frequencyBodyAccJerk.std.X       | Frequency-domain standard deviation for acceleration jerk for the X direction 
frequencyBodyAccJerk.std.Y       | Frequency-domain standard deviation for acceleration jerk for the Y direction 
frequencyBodyAccJerk.std.Z       | Frequency-domain standard deviation for acceleration jerk for the Z direction
frequencyBodyGyro.mean.X         | Frequency-domain mean of body gyroscope measurement for the X direction 
frequencyBodyGyro.mean.Y         | Frequency-domain mean of body gyroscope measurement for the Y direction 
frequencyBodyGyro.mean.Z         | Frequency-domain mean of body gyroscope measurement for the Z direction
frequencyBodyGyro.std.X          | Frequency-domain standard deviation of body gyroscope measurement for the X direction 
frequencyBodyGyro.std.Y          | Frequency-domain standard deviation of body gyroscope measurement for the Y direction 
frequencyBodyGyro.std.Z          | Frequency-domain standard deviation of body gyroscope measurement for the Z direction
frequencyBodyAccMag.mean         | Frequency-domain mean magnitude of body acceleration 
frequencyBodyAccMag.std          | Frequency-domain standard deviation magnitude of body acceleration 
frequencyBodyAccJerkMag.mean     | Frequency-domain mean magnitude of body acceleration jerk
frequencyBodyAccJerkMag.std      | Frequency-domain standard deviation magnitude of body acceleration jerk
frequencyBodyGyroMag.mean        | Frequency-domain mean magnitude of body gyroscope measurement
frequencyBodyGyroMag.std         | Frequency-domain standard deviation magnitude of body gyroscope measurement
frequencyBodyGyroJerkMag.mean    | Frequency-domain mean magnitude of body gyroscope jerk measurement
frequencyBodyGyroJerkMag.std     | Frequency-domain standard deviation magnitude of body gyroscope jerk measurement


## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.