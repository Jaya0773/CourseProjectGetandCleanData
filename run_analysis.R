#Download the files from the given website.
#Check if the directory already exists
MainDir = getwd()
DataDirectory = "./UCI HAR Dataset"
if (!file.exists(DataDirectory)) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","hardata.zip", quiet = TRUE, mode = "wb")
  unzip("hardata.zip")
  file.remove("hardata.zip")
}
stopifnot(file.exists(DataDirectory))
setwd(DataDirectory)

#Step4: Format Names - Doing this step earlier before appending the names to the data
#before that format the column names for further readability
features <- read.table("features.txt", sep = "")
#format the names
# Replace Acc with Acceleration
# Replace Gyro with Gyroscope
# Replace "t" with "-Time"
# Replace "f" with "-Frequency
# Replace "BodyBody" With "Body"
# Replace "Mag" with "Magnitude"
# Replace () with ""

features$V2 <- gsub("\\(\\)", "",features$V2)
features$V2 <- gsub("BodyBody", "Body", features$V2)
features$V2 <- gsub("^t(.*)$", "Time-\\1", features$V2)
features$V2 <- gsub("^f(.*)$", "Frequency-\\1", features$V2)
features$V2 <- gsub("Acc", "Acceleration", features$V2)
features$V2 <- gsub("Gyro", "Gyroscope", features$V2)
features$V2 <- gsub("Mag", "Magnitude", features$V2)
features$V2 <- tolower(features$V2)
attrnames <- features$V2

Activity <- read.table("activity_labels.txt", sep = "")

#read the   train files
x_train <- read.table("./train/X_train.txt",sep = "")
names(x_train) <- attrnames
subject_train <- read.table("./train/subject_train.txt", col.names=c("Subject"))
y_train <- read.table("./train/y_train.txt", col.names=c("Activity"))
#replace the activity with description in the original Activity file part of Step 4
y_train$Activity <- Activity[match(y_train$Activity,Activity$V1),2]
y_train$Activity <- as.factor(y_train$Activity)
train <- cbind(x_train, subject_train, y_train)

#read the test files
x_test <- read.table("./test/X_test.txt",sep = "")
names(x_test) = attrnames
subject_test <- read.table("./test/subject_test.txt", col.names=c("Subject"))
y_test <- read.table("./test/y_test.txt", col.names=c("Activity"))
#replace the activity with description in the original Activity file part of Step 4
y_test$Activity <- Activity[match(y_test$Activity,Activity$V1),2]
y_test$Activity <- as.factor(y_test$Activity)
test <- cbind(x_test, subject_test, y_test)

#Step 1. merge the data

test_train <- rbind(test,train)

#Step 2 - Extract the mean and std from merged data

colnames <- names(test_train)
colnames_final <- colnames[grepl("mean|std|Subject|Activity", colnames)]
colnames_final <- colnames_final[!(grepl("^angle",colnames_final))]
colnames_final <- colnames_final[!(grepl("meanfreq",colnames_final))]
test_train <- test_train[,colnames_final]

#step 5 -  independent tidy data set with the average of each variable for each activity and each subject.

new_data <- tbl_df(test_train) %>% group_by( Subject , Activity) %>% summarise_all(funs(mean)) %>% gather(Measurement, mean, -Activity, -Subject)
#write the new data to file
if (!file.exists("tidy_data.txt")){
  write.table(new_data, file="tidy_data.txt", row.name=FALSE)
}
#set the directory back to original directory
setwd("../")