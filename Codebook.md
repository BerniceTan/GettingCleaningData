Codebook variables Description
==============================

The variables for this data set were derived from the Master data set described in
README.md.Part of the description below has been taken from the orignial data description.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Only the measurements on the mean and standard deviation for each measurement were selected.
The mean for each selected variables for each activity and each subject were calculated and a tidy data set 
with the variables as below are then created.


Variables
=========

1	subject		 
ID indicating the subject from whom data was collected
2	activity	 
Activity being performed
3	tBodyAccmeanX	
4	tBodyAccmeanY	
5	tBodyAccmeanZ	
6	tGravityAccmeanX	
7	tGravityAccmeanY	
8	tGravityAccmeanZ	
9	tBodyAccJerkmeanX	
10	tBodyAccJerkmeanY	
11	tBodyAccJerkmeanZ	
12	tBodyGyromeanX	
13	tBodyGyromeanY	
14	tBodyGyromeanZ	
15	tBodyGyroJerkmeanX	
16	tBodyGyroJerkmeanY	
17	tBodyGyroJerkmeanZ	
18	tBodyAccMagmean	
19	tGravityAccMagmean	
20	tBodyAccJerkMagmean	
21	tBodyGyroMagmean	
22	tBodyGyroJerkMagmean	
23	fBodyAccmeanX	
24	fBodyAccmeanY	
25	fBodyAccmeanZ	
26	fBodyAccmeanFreqX	
27	fBodyAccmeanFreqY	
28	fBodyAccmeanFreqZ	
29	fBodyAccJerkmeanX	
30	fBodyAccJerkmeanY	
31	fBodyAccJerkmeanZ	
32	fBodyAccJerkmeanFreqX	
33	fBodyAccJerkmeanFreqY	
34	fBodyAccJerkmeanFreqZ	
35	fBodyGyromeanX	
36	fBodyGyromeanY	
37	fBodyGyromeanZ	
38	fBodyGyromeanFreqX	
39	fBodyGyromeanFreqY	
40	fBodyGyromeanFreqZ	
41	fBodyAccMagmean	
42	fBodyAccMagmeanFreq	
43	fBodyBodyAccJerkMagmean	
44	fBodyBodyAccJerkMagmeanFreq	
45	fBodyBodyGyroMagmean	
46	fBodyBodyGyroMagmeanFreq	
47	fBodyBodyGyroJerkMagmean	
48	fBodyBodyGyroJerkMagmeanFreq	
49	angletBodyAccMeangravity	
50	angletBodyAccJerkMeangravityMean	
51	angletBodyGyroMeangravityMean	
52	angletBodyGyroJerkMeangravityMean	
53	angleXgravityMean	
54	angleYgravityMean	
55	angleZgravityMean	
56	tBodyAccstdX	
57	tBodyAccstdY	
58	tBodyAccstdZ	
59	tGravityAccstdX	
60	tGravityAccstdY	
61	tGravityAccstdZ	
62	tBodyAccJerkstdX	
63	tBodyAccJerkstdY	
64	tBodyAccJerkstdZ	
65	tBodyGyrostdX	
66	tBodyGyrostdY	
67	tBodyGyrostdZ	
68	tBodyGyroJerkstdX	
69	tBodyGyroJerkstdY	
70	tBodyGyroJerkstdZ	
71	tBodyAccMagstd	
72	tGravityAccMagstd	
73	tBodyAccJerkMagstd	
74	tBodyGyroMagstd	
75	tBodyGyroJerkMagstd	
76	fBodyAccstdX	
77	fBodyAccstdY	
78	fBodyAccstdZ	
79	fBodyAccJerkstdX	
80	fBodyAccJerkstdY	
81	fBodyAccJerkstdZ	
82	fBodyGyrostdX	
83	fBodyGyrostdY	
84	fBodyGyrostdZ	
85	fBodyAccMagstd	
86	fBodyBodyAccJerkMagstd	
87	fBodyBodyGyroMagstd	
88	fBodyBodyGyroJerkMagstd	



