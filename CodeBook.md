FILE: CodeBook.md
DESCRIPTION: This explains the data items in the tidy data set that is produced by the Samsung Fitness R script, run_analysis.R
             Only the mean and standard deviations were taken from the test and training raw data sets.

DATA CODE BOOK:

    Body Acceleration: Body accelartion during activity. Mean and standard deviations are calculated for each X,Y, and Z
        NOTE: Values proceeded by f indicate "frequency domain signals"
        	"tBodyAcc-mean-X"           "tBodyAcc-mean-Y"           "tBodyAcc-mean-Z"  
       	 	"tBodyAcc-std-X"            "tBodyAcc-std-Y"            "tBodyAcc-std-Z"  
			"fBodyAcc-mean-X" "fBodyAcc-mean-Y" "fBodyAcc-mean-Z"           
			"fBodyAcc-std-X" "fBodyAcc-std-Y"  "fBodyAcc-std-Z" 

    Gravity: Gravity acceleration jerk during activity. Mean and standard deviations are calculated for each X,Y, and Z       
			"tGravityAcc-mean-X"        "tGravityAcc-mean-Y"        "tGravityAcc-mean-Z" 
			"tGravityAcc-std-X"         "tGravityAcc-std-Y"         "tGravityAcc-std-Z" 
 

    Body Acceleration Jerk: Body acceleration jerk during activity. Mean and standard deviations are calculated for each X,Y, & Z 
        NOTE: Values proceeded by f indicate "frequency domain signals"    
			"tBodyAccJerk-mean-X"       "tBodyAccJerk-mean-Y"       "tBodyAccJerk-mean-Z"
			"tBodyAccJerk-std-X"        "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z" 
			"fBodyAccJerk-mean-X"  "fBodyAccJerk-mean-Y"       "fBodyAccJerk-mean-Z"       
			"fBodyAccJerk-std-X" "fBodyAccJerk-std-Y"   "fBodyAccJerk-std-Z" 

   	Body Gyro: Body gyro components during activity. Mean and standard deviations are calculated for each X,Y, & Z  
        NOTE: Values proceeded by f indicate "frequency domain signals"  
			"tBodyGyro-mean-X"          "tBodyGyro-mean-Y"          "tBodyGyro-mean-Z"  
			"tBodyGyro-std-X"           "tBodyGyro-std-Y"           "tBodyGyro-std-Z"
			"fBodyGyro-mean-X"         "fBodyGyro-mean-Y"          "fBodyGyro-mean-Z"  
			"fBodyGyro-std-X"  "fBodyGyro-std-Y"           "fBodyGyro-std-Z"

    Body Gyro Jerk: Body jerk gyro components during activity. Mean and standard deviations are calculated for each X,Y, & Z
			"tBodyGyroJerk-mean-X"      "tBodyGyroJerk-mean-Y"      "tBodyGyroJerk-mean-Z"   
			"tBodyGyroJerk-std-X"       "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"	
		
	Body Acceleration Magnitude: Body acceleration components during activity. Mean and standard deviations for magnitudes		  
			"tBodyAccMag-mean"  "tBodyAccMag-std"    

	Gravity Acceleration Magnitude: Gravity acceleration magnitudes during activity. Mean and standard deviations for magnitudes
        NOTE: Values proceeded by f indicate "frequency domain signals" 
			"tGravityAccMag-mean"    "tGravityAcc-std-Y"   
			"fBodyAccMag-mean"  "fBodyAccMag-std" 

	Body Acceleration Jerk Magnitude: Body acceleration jerk magnitudes during activity. Mean and standard deviations for magnitude	 
        NOTE: Values proceeded by f indicate "frequency domain signals"  
			"tBodyAccJerkMag-mean"  "tBodyAccJerkMag-std"    
			"fBodyBodyAccJerkMag-mean"  "fBodyBodyAccJerkMag-std"

	Body Gyro Magnitude: Body gyro magnitudes during activity. Mean and standard deviations for magnitude	
        NOTE: Values proceeded by f indicate "frequency domain signals"   
			"tBodyGyroMag-mean"  "tBodyGyroMag-std" 
			"fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"

	Body Gyro Jerk Magnitude: Body gyro acceleration jerk magnitudes during activity. Mean and standard deviations for magnitude
        NOTE: Values proceeded by f indicate "frequency domain signals" 	  
			"tBodyGyroJerkMag-mean"  "tBodyGyroJerkMag-std" 
			"fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std"       