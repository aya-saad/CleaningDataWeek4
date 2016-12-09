library(memisc)

Data <- data.set(
  subject = sample(c(1:30), size = 30),
  activities = sample(c("LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"), size = 6),
  tBodyAcc.mean...X	= seq(from = -1, to =1),
  tBodyAcc.mean...Y	= seq(from = -1, to =1),
  tBodyAcc.mean...Z = seq(from = -1, to =1),
  tBodyAcc.std...X = seq(from = -1, to =1),
  tBodyAcc.std...Y	= seq(from = -1, to =1),
  tBodyAcc.std...Z	= seq(from = -1, to =1),
  tGravityAcc.mean...X	= seq(from = -1, to =1),
  tGravityAcc.mean...Y	= seq(from = -1, to =1),
  tGravityAcc.mean...Z	= seq(from = -1, to =1),
  tGravityAcc.std...X	= seq(from = -1, to =1),
  tGravityAcc.std...Y	= seq(from = -1, to =1),
  tGravityAcc.std...Z	= seq(from = -1, to =1),
  tBodyAccJerk.mean...X = seq(from = -1, to =1),
  tBodyAccJerk.mean...Y	= seq(from = -1, to =1),
  tBodyAccJerk.mean...Z	= seq(from = -1, to =1),
  tBodyAccJerk.std...X	= seq(from = -1, to =1),
  tBodyAccJerk.std...Y	= seq(from = -1, to =1),
  tBodyAccJerk.std...Z	= seq(from = -1, to =1),
  tBodyGyro.mean...X	= seq(from = -1, to =1),
  tBodyGyro.mean...Y	= seq(from = -1, to =1),
  tBodyGyro.mean...Z	= seq(from = -1, to =1),
  tBodyGyro.std...X	= seq(from = -1, to =1),
  tBodyGyro.std...Y	= seq(from = -1, to =1),
  tBodyGyro.std...Z	= seq(from = -1, to =1),
  tBodyGyroJerk.mean...X	= seq(from = -1, to =1),
  tBodyGyroJerk.mean...Y	= seq(from = -1, to =1),
  tBodyGyroJerk.mean...Z	= seq(from = -1, to =1),
  tBodyGyroJerk.std...X	= seq(from = -1, to =1),
  tBodyGyroJerk.std...Y	= seq(from = -1, to =1),
  tBodyGyroJerk.std...Z	= seq(from = -1, to =1),
  tBodyAccMag.mean..	= seq(from = -1, to =1),
  tBodyAccMag.std..	= seq(from = -1, to =1),
  tGravityAccMag.mean..	= seq(from = -1, to =1),
  tGravityAccMag.std..	= seq(from = -1, to =1),
  tBodyAccJerkMag.mean..	= seq(from = -1, to =1),
  tBodyAccJerkMag.std..	= seq(from = -1, to =1),
  tBodyGyroMag.mean..	= seq(from = -1, to =1),
  tBodyGyroMag.std..	= seq(from = -1, to =1),
  tBodyGyroJerkMag.mean..	= seq(from = -1, to =1),
  tBodyGyroJerkMag.std..	= seq(from = -1, to =1),
  fBodyAcc.mean...X	= seq(from = -1, to =1),
  fBodyAcc.mean...Y	= seq(from = -1, to =1),
  fBodyAcc.mean...Z	= seq(from = -1, to =1),
  fBodyAcc.std...X	= seq(from = -1, to =1),
  fBodyAcc.std...Y	= seq(from = -1, to =1),
  fBodyAcc.std...Z	= seq(from = -1, to =1),
  fBodyAccJerk.mean...X	= seq(from = -1, to =1),
  fBodyAccJerk.mean...Y	= seq(from = -1, to =1),
  fBodyAccJerk.mean...Z	= seq(from = -1, to =1),
  fBodyAccJerk.std...X	= seq(from = -1, to =1),
  fBodyAccJerk.std...Y	= seq(from = -1, to =1),
  fBodyAccJerk.std...Z	= seq(from = -1, to =1),
  fBodyGyro.mean...X	= seq(from = -1, to =1),
  fBodyGyro.mean...Y	= seq(from = -1, to =1),
  fBodyGyro.mean...Z	= seq(from = -1, to =1),
  fBodyGyro.std...X	= seq(from = -1, to =1),
  fBodyGyro.std...Y	= seq(from = -1, to =1),
  fBodyGyro.std...Z	= seq(from = -1, to =1),
  fBodyAccMag.mean..	= seq(from = -1, to =1),
  fBodyAccMag.std..	= seq(from = -1, to =1),
  fBodyBodyAccJerkMag.mean.. = seq(from = -1, to =1),
  fBodyBodyAccJerkMag.std..	= seq(from = -1, to =1),
  fBodyBodyGyroMag.mean..	= seq(from = -1, to =1),
  fBodyBodyGyroMag.std..	= seq(from = -1, to =1),
  fBodyBodyGyroJerkMag.mean..	= seq(from = -1, to =1),
  fBodyBodyGyroJerkMag.std..	= seq(from = -1, to =1)	
)

Data <- within(Data,{
  description(subject) <- "30 volunteers"
  wording(subject) <- "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years."
  description(activities) <- "six activities"
  wording(activities) <- "Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)"
  description(tBodyAcc.mean...X) <- "The mean value of the body acceleration signal X"
  description(tBodyAcc.mean...Y) <- "The mean value of the body acceleration signal Y"
  description(tBodyAcc.mean...Z) <- "The mean value of the body acceleration signal Z"
  description(tBodyAcc.std...X) <- "The std value of the body acceleration signal X"
  description(tBodyAcc.std...Y) <- "The std value of the body acceleration signal Y"
  description(tBodyAcc.std...Z) <- "The std value of the body acceleration signal Z"
  description(tGravityAcc.mean...X) <- "The mean value of the gravity acceleration signal X"
  description(tGravityAcc.mean...Y) <- "The mean value of the gravity acceleration signal Y"
  description(tGravityAcc.mean...Z) <- "The mean value of the gravity acceleration signal Z"
  description(tGravityAcc.std...X) <- "The std value of the gravity acceleration signal X"
  description(tGravityAcc.std...Y) <- "The std value of the gravity acceleration signal Y"
  description(tGravityAcc.std...Z) <- "The std value of the gravity acceleration signal Z"
  description(tBodyAccJerk.mean...X) <- "The mean value of the body linear acceleration X"
  description(tBodyAccJerk.mean...Y) <- "The mean value of the body linear acceleration Y"
  description(tBodyAccJerk.mean...Z) <- "The mean value of the body linear acceleration Z"
  description(tBodyAccJerk.std...X) <- "The std value of the body linear acceleration X"
  description(tBodyAccJerk.std...Y) <- "The std value of the body linear acceleration Y"
  description(tBodyAccJerk.std...Z) <- "The std value of the body linear acceleration Z"
  description(tBodyGyro.mean...X) <- "The mean value of the gyroscope axial raw signal X"
  description(tBodyGyro.mean...Y) <- "The mean value of the gyroscope axial raw signal Y"
  description(tBodyGyro.mean...Z) <- "The mean value of the gyroscope axial raw signal Z"
  description(tBodyGyro.std...X) <- "The std value of the gyroscope axial raw signal X"
  description(tBodyGyro.std...Y) <- "The std value of the gyroscope axial raw signal Y"
  description(tBodyGyro.std...Z) <- "The std value of the gyroscope axial raw signal Z"
  description(tBodyGyroJerk.mean...X) <- "The mean value of the angular velocity acceleration X"
  description(tBodyGyroJerk.mean...Y) <- "The mean value of the angular velocity acceleration Y"
  description(tBodyGyroJerk.mean...Z) <- "The mean value of the angular velocity acceleration Z"
  description(tBodyGyroJerk.std...X) <- "The std value of the angular velocity acceleration X"
  description(tBodyGyroJerk.std...Y) <- "The std value of the angular velocity acceleration Y"
  description(tBodyGyroJerk.std...Z) <- "The std value of the angular velocity acceleration Z"
  description(tBodyAccMag.mean..) <- "the mean value of the body linear acceleration magnitude"
  description(tBodyAccMag.std..) <- "the std value of the body linear acceleration magnitude"
  description(tGravityAccMag.mean..) <- "the mean value of the gravity acceleration magnitude"
  description(tGravityAccMag.std..) <- "the std value of the gravity acceleration magnitude"
  description(tBodyAccJerkMag.mean..) <- "the mean value of the angular velocity acceleration magnitude"
  description(tBodyAccJerkMag.std..) <- "the std value of the angular velocity acceleration magnitude"
  description(tBodyGyroMag.mean..) <- "the mean value of the gyroscope axial magnitude"
  description(tBodyGyroMag.std..) <- "the std value of the gyroscope axial magnitude"
  description(tBodyGyroJerkMag.mean..) <- "the mean value of the angular velocity gyroscope axial magnitude"
  description(tBodyGyroJerkMag.std..) <- "the std value of the angular velocity gyroscope axial magnitude"
  description(fBodyAcc.mean...X) <- "The mean value of the Fast Fourier Transform (FFT) body acceleration signal X"
  description(fBodyAcc.mean...Y) <- "The mean value of the Fast Fourier Transform (FFT) body acceleration signal Y"
  description(fBodyAcc.mean...Z) <- "The mean value of the Fast Fourier Transform (FFT) body acceleration signal Z"
  description(fBodyAcc.std...X) <- "The std value of the Fast Fourier Transform (FFT) body acceleration signal X"
  description(fBodyAcc.std...Y) <- "The std value of the Fast Fourier Transform (FFT) body acceleration signal Y"
  description(fBodyAcc.std...Z) <- "The std value of the Fast Fourier Transform (FFT) body acceleration signal Z"
  description(fBodyAccJerk.mean...X) <- "The mean value of the Fast Fourier Transform (FFT) body linear acceleration X"
  description(fBodyAccJerk.mean...Y) <- "The mean value of the Fast Fourier Transform (FFT) body linear acceleration Y"
  description(fBodyAccJerk.mean...Z) <- "The mean value of the Fast Fourier Transform (FFT) body linear acceleration Z"
  description(fBodyAccJerk.std...X) <- "The std value of the Fast Fourier Transform (FFT) body linear acceleration X"
  description(fBodyAccJerk.std...Y) <- "The std value of the Fast Fourier Transform (FFT) body linear acceleration Y"
  description(fBodyAccJerk.std...Z) <- "The std value of the Fast Fourier Transform (FFT) body linear acceleration Z"
  description(fBodyGyro.mean...X) <- "The mean value of the Fast Fourier Transform (FFT) gyroscope axial raw signal X"
  description(fBodyGyro.mean...Y) <- "The mean value of the Fast Fourier Transform (FFT) gyroscope axial raw signal Y"
  description(fBodyGyro.mean...Z) <- "The mean value of the Fast Fourier Transform (FFT) gyroscope axial raw signal Z"
  description(fBodyGyro.std...X) <- "The std value of the Fast Fourier Transform (FFT) gyroscope axial raw signal X"
  description(fBodyGyro.std...Y) <- "The std value of the Fast Fourier Transform (FFT) gyroscope axial raw signal Y"
  description(fBodyGyro.std...Z) <- "The std value of the Fast Fourier Transform (FFT) gyroscope axial raw signal Z"
  description(fBodyAccMag.mean..) <- "the mean value of the Fast Fourier Transform (FFT) body linear acceleration magnitude"
  description(fBodyAccMag.std..) <- "the std value of the Fast Fourier Transform (FFT) body linear acceleration magnitude"
  description(fBodyBodyAccJerkMag.mean..) <- "the mean value of the Fast Fourier Transform (FFT) angular velocity acceleration magnitude"
  description(fBodyBodyAccJerkMag.std..) <- "the std value of the Fast Fourier Transform (FFT) angular velocity acceleration magnitude"
  description(fBodyBodyGyroMag.mean..) <- "the mean value of the Fast Fourier Transform (FFT) gyroscope axial magnitude"
  description(fBodyBodyGyroMag.std..) <- "the std value of the Fast Fourier Transform (FFT) gyroscope axial magnitude"
  description(fBodyBodyGyroJerkMag.mean..) <- "the mean value of the Fast Fourier Transform (FFT) angular velocity gyroscope axial magnitude"
  description(fBodyBodyGyroJerkMag.std..) <- "the std value of the Fast Fourier Transform (FFT) angular velocity gyroscope axial magnitude"
  
    
  foreach(x=c(subject,activities),{
    measurement(x) <- "nominal"
  })
  labels(subject) <- c(
    "1" =  1, "2" =  2, "3" =  3, "4" =  4, "5" =  5, "6" = 6,"7" = 7,"8" = 8,"9" = 9,"10" = 10,
    "11" =  11, "12" =  12, "13" =  13, "14" =  14, "15" =  15, "16" = 16,"17" = 17,"18" = 18,"19" = 19,"20" = 20,
    "21" =  21, "22" =  22, "23" =  23, "24" =  24, "25" =  25, "26" = 26,"27" = 27,"28" = 28,"29" = 29,"30" = 30)
  labels(activities) <- c(
    "WALKING"            =  1,
    "WALKING_UPSTAIRS"   =  2,
    "WALKING_DOWNSTAIRS" =  3,
    "SITTING"            =  4,
    "STANDING"           =  5,
    "LAYING"             = 6)
  foreach(x=c(tBodyAcc.mean...X, tBodyAcc.mean...Y, tBodyAcc.mean...Z, tBodyAcc.std...X,
              tBodyAcc.std...Y, tBodyAcc.std...Z, tGravityAcc.mean...X, tGravityAcc.mean...Y,
              tGravityAcc.mean...Z, tGravityAcc.std...X, tGravityAcc.std...Y, tGravityAcc.std...Z,
              tBodyAccJerk.mean...X, tBodyAccJerk.mean...Y, tBodyAccJerk.mean...Z, tBodyAccJerk.std...X,
              tBodyAccJerk.std...Y, tBodyAccJerk.std...Z, tBodyGyro.mean...X, tBodyGyro.mean...Y, 
              tBodyGyro.mean...Z, tBodyGyro.std...X, tBodyGyro.std...Y, tBodyGyro.std...Z, 
              tBodyGyroJerk.mean...X, tBodyGyroJerk.mean...Y, tBodyGyroJerk.mean...Z, tBodyGyroJerk.std...X,
              tBodyGyroJerk.std...Y, tBodyGyroJerk.std...Z, tBodyAccMag.mean.., tBodyAccMag.std.., 
              tGravityAccMag.mean.., tGravityAccMag.std.., tBodyAccJerkMag.mean.., tBodyAccJerkMag.std.., 
              tBodyGyroMag.mean.., tBodyGyroMag.std.., tBodyGyroJerkMag.mean.., tBodyGyroJerkMag.std.., 
              fBodyAcc.mean...X, fBodyAcc.mean...Y, fBodyAcc.mean...Z, fBodyAcc.std...X, fBodyAcc.std...Y,
              fBodyAcc.std...Z, fBodyAccJerk.mean...X, fBodyAccJerk.mean...Y, fBodyAccJerk.mean...Z,
              fBodyAccJerk.std...X, fBodyAccJerk.std...Y, fBodyAccJerk.std...Z, fBodyGyro.mean...X, 
              fBodyGyro.mean...Y, fBodyGyro.mean...Z, fBodyGyro.std...X, fBodyGyro.std...Y, 
              fBodyGyro.std...Z, fBodyAccMag.mean.., fBodyAccMag.std.., fBodyBodyAccJerkMag.mean.., 
              fBodyBodyAccJerkMag.std.., fBodyBodyGyroMag.mean.., fBodyBodyGyroMag.std.., fBodyBodyGyroJerkMag.mean.., fBodyBodyGyroJerkMag.std..),{
    measurement(x) <- "ratio"
  })
  foreach(x=c(tBodyAcc.mean...X, tBodyAcc.mean...Y, tBodyAcc.mean...Z, tBodyAcc.std...X,
              tBodyAcc.std...Y, tBodyAcc.std...Z, tGravityAcc.mean...X, tGravityAcc.mean...Y,
              tGravityAcc.mean...Z, tGravityAcc.std...X, tGravityAcc.std...Y, tGravityAcc.std...Z,
              tBodyAccJerk.mean...X, tBodyAccJerk.mean...Y, tBodyAccJerk.mean...Z, tBodyAccJerk.std...X,
              tBodyAccJerk.std...Y, tBodyAccJerk.std...Z, tBodyGyro.mean...X, tBodyGyro.mean...Y, 
              tBodyGyro.mean...Z, tBodyGyro.std...X, tBodyGyro.std...Y, tBodyGyro.std...Z, 
              tBodyGyroJerk.mean...X, tBodyGyroJerk.mean...Y, tBodyGyroJerk.mean...Z, tBodyGyroJerk.std...X,
              tBodyGyroJerk.std...Y, tBodyGyroJerk.std...Z, tBodyAccMag.mean.., tBodyAccMag.std.., 
              tGravityAccMag.mean.., tGravityAccMag.std.., tBodyAccJerkMag.mean.., tBodyAccJerkMag.std.., 
              tBodyGyroMag.mean.., tBodyGyroMag.std.., tBodyGyroJerkMag.mean.., tBodyGyroJerkMag.std.., 
              fBodyAcc.mean...X, fBodyAcc.mean...Y, fBodyAcc.mean...Z, fBodyAcc.std...X, fBodyAcc.std...Y,
              fBodyAcc.std...Z, fBodyAccJerk.mean...X, fBodyAccJerk.mean...Y, fBodyAccJerk.mean...Z,
              fBodyAccJerk.std...X, fBodyAccJerk.std...Y, fBodyAccJerk.std...Z, fBodyGyro.mean...X, 
              fBodyGyro.mean...Y, fBodyGyro.mean...Z, fBodyGyro.std...X, fBodyGyro.std...Y, 
              fBodyGyro.std...Z, fBodyAccMag.mean.., fBodyAccMag.std.., fBodyBodyAccJerkMag.mean.., 
              fBodyBodyAccJerkMag.std.., fBodyBodyGyroMag.mean.., fBodyBodyGyroMag.std.., fBodyBodyGyroJerkMag.mean.., fBodyBodyGyroJerkMag.std..),{
    storage.mode(x) <- "double"
  })
  
  
  
})

description(Data)
capture.output(codebook(Data), file="./datacodebook.txt")
Write(description(Data),
      file="./Data-desc.txt")
