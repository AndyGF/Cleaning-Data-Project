The complete list of variables included in the final tidy data set are listed below.


"Subject" - The id number of the subject being measured, running from 1 to 30

"Activity" - The activity for which the measurements were taken


For the remaining variables, the value contained in the tidy data set
is the average measurement of that value for each subject in each activity.

Variables which include mean in their name represent the mean of the observations collected.
Variables which include std in their name represent the std of the observations collected.
meanFreq is a weighted average of the frequency components.

A 't' prefix means that this variable was measured in the time domain.
An 'f' prefix identifies that a Fast Fourier Transform was applied to the signal.

Variables marked with an X, Y or Z identify that the variable measures the component
of the measurement on one of the 3-axis.

Body refers to the fact that the variable represents the body portion of the acceleration signal,
while Gravity identifies the gravity portion.

Jerk variables refer to the rate of change of acceleration,
and are based on the body linear accelaration and angular velocity.

Mag represent the Magnitude of the 3-dimensional variable, and so have no XYZ split.

Angle variables represent the angle between two vectors

"tBodyAcc.mean...X"
"tBodyAcc.mean...Y"
"tBodyAcc.mean...Z"
"tBodyAcc.std...X"
"tBodyAcc.std...Y"
"tBodyAcc.std...Z"
"tGravityAcc.mean...X"
"tGravityAcc.mean...Y"
"tGravityAcc.mean...Z"
"tGravityAcc.std...X"
"tGravityAcc.std...Y"
"tGravityAcc.std...Z"
"tBodyAccJerk.mean...X"
"tBodyAccJerk.mean...Y"
"tBodyAccJerk.mean...Z"
"tBodyAccJerk.std...X"
"tBodyAccJerk.std...Y"
"tBodyAccJerk.std...Z"
"tBodyGyro.mean...X"
"tBodyGyro.mean...Y"
"tBodyGyro.mean...Z"
"tBodyGyro.std...X"
"tBodyGyro.std...Y"
"tBodyGyro.std...Z"
"tBodyGyroJerk.mean...X"
"tBodyGyroJerk.mean...Y"
"tBodyGyroJerk.mean...Z"
"tBodyGyroJerk.std...X"
"tBodyGyroJerk.std...Y"
"tBodyGyroJerk.std...Z"
"tBodyAccMag.mean.."
"tBodyAccMag.std.."
"tGravityAccMag.mean.."
"tGravityAccMag.std.."
"tBodyAccJerkMag.mean.."
"tBodyAccJerkMag.std.."
"tBodyGyroMag.mean.."
"tBodyGyroMag.std.."
"tBodyGyroJerkMag.mean.."
"tBodyGyroJerkMag.std.."
"fBodyAcc.mean...X"
"fBodyAcc.mean...Y"
"fBodyAcc.mean...Z"
"fBodyAcc.std...X"
"fBodyAcc.std...Y"
"fBodyAcc.std...Z"
"fBodyAcc.meanFreq...X"
"fBodyAcc.meanFreq...Y"
"fBodyAcc.meanFreq...Z"
"fBodyAccJerk.mean...X"
"fBodyAccJerk.mean...Y"
"fBodyAccJerk.mean...Z"
"fBodyAccJerk.std...X"
"fBodyAccJerk.std...Y"
"fBodyAccJerk.std...Z"
"fBodyAccJerk.meanFreq...X"
"fBodyAccJerk.meanFreq...Y"
"fBodyAccJerk.meanFreq...Z"
"fBodyGyro.mean...X"
"fBodyGyro.mean...Y"
"fBodyGyro.mean...Z"
"fBodyGyro.std...X"
"fBodyGyro.std...Y"
"fBodyGyro.std...Z"
"fBodyGyro.meanFreq...X"
"fBodyGyro.meanFreq...Y"
"fBodyGyro.meanFreq...Z"
"fBodyAccMag.mean.."
"fBodyAccMag.std.."
"fBodyAccMag.meanFreq.."
"fBodyBodyAccJerkMag.mean.."
"fBodyBodyAccJerkMag.std.."
"fBodyBodyAccJerkMag.meanFreq.."
"fBodyBodyGyroMag.mean.."
"fBodyBodyGyroMag.std.."
"fBodyBodyGyroMag.meanFreq.."
"fBodyBodyGyroJerkMag.mean.."
"fBodyBodyGyroJerkMag.std.."
"fBodyBodyGyroJerkMag.meanFreq.."
"angle.tBodyAccMean.gravity."
"angle.tBodyAccJerkMean..gravityMean."
"angle.tBodyGyroMean.gravityMean."
"angle.tBodyGyroJerkMean.gravityMean."
"angle.X.gravityMean."
"angle.Y.gravityMean."
"angle.Z.gravityMean."