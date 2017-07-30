#Code Book for the Getting and Cleaning Data Course Project - Tidy UCI HAR Dataset


##Data Origin

The dataset is from the Human Activity Recognition Using Smartphones Dataset.The experiments have been carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the experiment  captured 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz.The experiment  captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected 
for generating the training data and  30% the test data. 


Please refer to [features.txt](features.txt) and [features_info.txt](features_info.txt) and [Readme.txt](Readme.txt) for the original dataset descriptions.

##Variable Name Changes

The Following rules were applied to the existing data column names for readablity
- Replace Acc with Acceleration
- Replace Gyro with Gyroscope
- Replace Mag with magnitude
- Replace  all time variable that started with "t" with "Time:"
- Replace  all frequnecy variable that started with "f" with "Frequency:
- Replace "BodyBody" With "Body"
- remove the '()' 
- Convert all to lower case
 

## Final New Tidy Data Set Variables

 - Measurement: Please refer to list of variables in the Measurement Variables section
 - mean       : Average value
 - Activity   : refers to following activities in the [activity_labels.txt](activity_labels.txt)
 - Subject    : 1-30 ( refers to the 30 volunteers)

## Measurement Variables
 time-bodyacceleration-mean-x 
 time-bodyacceleration-mean-y                 
 time-bodyacceleration-mean-z
 time-bodyacceleration-std-x                  
 time-bodyacceleration-std-y 
 time-bodyacceleration-std-z                  
 time-gravityacceleration-mean-x 
 time-gravityacceleration-mean-y             
 time-gravityacceleration-mean-z 
 time-gravityacceleration-std-x               
 time-gravityacceleration-std-y 
 time-gravityacceleration-std-z               
 time-bodyaccelerationjerk-mean-x
 time-bodyaccelerationjerk-mean-y             
 time-bodyaccelerationjerk-mean-z 
 time-bodyaccelerationjerk-std-x              
 time-bodyaccelerationjerk-std-y 
 time-bodyaccelerationjerk-std-z             
 time-bodygyroscope-mean-x 
 time-bodygyroscope-mean-y                    
 time-bodygyroscope-mean-z 
 time-bodygyroscope-std-x                     
 time-bodygyroscope-std-y                       
 time-bodygyroscope-std-z                     
 time-bodygyroscopejerk-mean-x 
 time-bodygyroscopejerk-mean-y                
 time-bodygyroscopejerk-mean-z 
 time-bodygyroscopejerk-std-x                 
 time-bodygyroscopejerk-std-y
 time-bodygyroscopejerk-std-z                 
 time-bodyaccelerationmagnitude-mean 
 time-bodyaccelerationmagnitude-std          
 time-gravityaccelerationmagnitude-mean        
 time-gravityaccelerationmagnitude-std        
 time-bodyaccelerationjerkmagnitude-mean
 time-bodyaccelerationjerkmagnitude-std       
 time-bodygyroscopemagnitude-mean 
 time-bodygyroscopemagnitude-std             
 time-bodygyroscopejerkmagnitude-mean 
 time-bodygyroscopejerkmagnitude-std          
 frequency-bodyacceleration-mean-x 
 frequency-bodyacceleration-mean-y            
 frequency-bodyacceleration-mean-z 
 frequency-bodyacceleration-std-x             
 frequency-bodyacceleration-std-y 
 frequency-bodyacceleration-std-z             
 frequency-bodyaccelerationjerk-mean-x 
 frequency-bodyaccelerationjerk-mean-y        
 frequency-bodyaccelerationjerk-mean-z 
 frequency-bodyaccelerationjerk-std-x         
 frequency-bodyaccelerationjerk-std-y 
 frequency-bodyaccelerationjerk-std-z        
 frequency-bodygyroscope-mean-x                
 frequency-bodygyroscope-mean-y               
 frequency-bodygyroscope-mean-z  
 frequency-bodygyroscope-std-x               
 frequency-bodygyroscope-std-y                
 frequency-bodygyroscope-std-z               
 frequency-bodyaccelerationmagnitude-mean       
 frequency-bodyaccelerationmagnitude-std      
 frequency-bodyaccelerationjerkmagnitude-mean 
 frequency-bodyaccelerationjerkmagnitude-std  
 frequency-bodygyroscopemagnitude-mean          
 frequency-bodygyroscopemagnitude-std        
 frequency-bodygyroscopejerkmagnitude-mean
 frequency-bodygyroscopejerkmagnitude-std     
 Subject 
 Activity