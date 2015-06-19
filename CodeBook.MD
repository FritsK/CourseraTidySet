### Codebook for the data in tidyset.txt

information about the data is derived from the features_info.txt and Readme.txt in the zip-file
located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For the assesment only the measurements on the mean and standard deviation for each measurement are extracted.
the the following 79 variables (from in total 477) are selected:
nr   V1                     featurename
- 1.     1               tBodyAcc-mean()-X
- 2.     2               tBodyAcc-mean()-Y
- 3.     3               tBodyAcc-mean()-Z
- 41.   41            tGravityAcc-mean()-X
- 42.   42            tGravityAcc-mean()-Y
- 43.   43            tGravityAcc-mean()-Z
- 81.   81           tBodyAccJerk-mean()-X
- 82.   82           tBodyAccJerk-mean()-Y
- 83.   83           tBodyAccJerk-mean()-Z
- 121. 121              tBodyGyro-mean()-X
- 122. 122              tBodyGyro-mean()-Y
- 123. 123              tBodyGyro-mean()-Z
- 161. 161          tBodyGyroJerk-mean()-X
- 162. 162          tBodyGyroJerk-mean()-Y
- 163. 163          tBodyGyroJerk-mean()-Z
- 201. 201              tBodyAccMag-mean()
- 214. 214           tGravityAccMag-mean()
- 227. 227          tBodyAccJerkMag-mean()
- 240. 240             tBodyGyroMag-mean()
- 253. 253         tBodyGyroJerkMag-mean()
- 266. 266               fBodyAcc-mean()-X
- 267. 267               fBodyAcc-mean()-Y
- 268. 268               fBodyAcc-mean()-Z
- 294. 294           fBodyAcc-meanFreq()-X
- 295. 295           fBodyAcc-meanFreq()-Y
- 296. 296           fBodyAcc-meanFreq()-Z
- 345. 345           fBodyAccJerk-mean()-X
- 346. 346           fBodyAccJerk-mean()-Y
- 347. 347           fBodyAccJerk-mean()-Z
- 373. 373       fBodyAccJerk-meanFreq()-X
- 374. 374       fBodyAccJerk-meanFreq()-Y
- 375. 375       fBodyAccJerk-meanFreq()-Z
- 424. 424              fBodyGyro-mean()-X
- 425. 425              fBodyGyro-mean()-Y
- 426. 426              fBodyGyro-mean()-Z
- 452. 452          fBodyGyro-meanFreq()-X
- 453. 453          fBodyGyro-meanFreq()-Y
- 454. 454          fBodyGyro-meanFreq()-Z
- 503. 503              fBodyAccMag-mean()
- 513. 513          fBodyAccMag-meanFreq()
- 516. 516      fBodyBodyAccJerkMag-mean()
- 526. 526  fBodyBodyAccJerkMag-meanFreq()
- 529. 529         fBodyBodyGyroMag-mean()
- 539. 539     fBodyBodyGyroMag-meanFreq()
- 542. 542     fBodyBodyGyroJerkMag-mean()
- 552. 552 fBodyBodyGyroJerkMag-meanFreq()
- 4.     4                tBodyAcc-std()-X
- 5.     5                tBodyAcc-std()-Y
- 6.     6                tBodyAcc-std()-Z
- 44.   44             tGravityAcc-std()-X
- 45.   45             tGravityAcc-std()-Y
- 46.   46             tGravityAcc-std()-Z
- 84.   84            tBodyAccJerk-std()-X
- 85.   85            tBodyAccJerk-std()-Y
- 86.   86            tBodyAccJerk-std()-Z
- 124. 124               tBodyGyro-std()-X
- 125. 125               tBodyGyro-std()-Y
- 126. 126               tBodyGyro-std()-Z
- 164. 164           tBodyGyroJerk-std()-X
- 165. 165           tBodyGyroJerk-std()-Y
- 166. 166           tBodyGyroJerk-std()-Z
- 202. 202               tBodyAccMag-std()
- 215. 215            tGravityAccMag-std()
- 228. 228           tBodyAccJerkMag-std()
- 241. 241              tBodyGyroMag-std()
- 254. 254          tBodyGyroJerkMag-std()
- 269. 269                fBodyAcc-std()-X
- 270. 270                fBodyAcc-std()-Y
- 271. 271                fBodyAcc-std()-Z
- 348. 348            fBodyAccJerk-std()-X
- 349. 349            fBodyAccJerk-std()-Y
- 350. 350            fBodyAccJerk-std()-Z
- 427. 427               fBodyGyro-std()-X
- 428. 428               fBodyGyro-std()-Y
- 429. 429               fBodyGyro-std()-Z
- 504. 504               fBodyAccMag-std()
- 517. 517       fBodyBodyAccJerkMag-std()
- 530. 530          fBodyBodyGyroMag-std()
- 543. 543      fBodyBodyGyroJerkMag-std()

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter 
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
- mean(): Mean value
- std(): Standard deviation

for each subject (testperson) multiple of these measurements were made.
In the tidyset.txt all measurements per variable per subject are averaged. So each row contains averaged data for the selected variables for one subject.

measurements that couldn't be attributed to a variable or subject were omitted by selecting only the number of rows and columns that match the number of rows of the subject-files and feature-file

