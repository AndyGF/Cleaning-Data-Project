run_analysis <- function(){
     
     ## First, the script extract the two label files
     activity_labels <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
     variable_labels <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
     
     ## Next, it extracts the train data files
     X_train_data <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
     Y_train_data <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
     subject_train_data <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
     
     ## After this it extracts the test data files
     X_test_data <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
     Y_test_data <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
     subject_test_data <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
     
     ## For each set of files, the train and test sets are combined
     X_data <- rbind(X_train_data,X_test_data)
     Y_data <- rbind(Y_train_data,Y_test_data)
     subject_data <- rbind(subject_train_data,subject_test_data)
     
     ## The features file is used to name each of the variables in X
     colnames(X_data) <- make.names(as.character(variable_labels$V2))
     
     ## The X data is then subsetted for only the variables which mention "mean" or "std"
     used_X_data <- X_data[,grep("mean|std", names(X_data), ignore.case = TRUE)]
     
     ## The Y data is restrctured to name each activity, as taken from the activity label file
     y_as_factors<-factor(Y_data$V1, labels = activity_labels$V2)
     
     ## The subject, Y and X data sets are combined into one set
     full_data_set <- cbind(subject_data, y_as_factors, used_X_data)
     
     ## The Subject and Activity variables are renamed. The other variables retain their original names
     colnames(full_data_set)[1] <- "Subject"
     colnames(full_data_set)[2] <- "Activity"
     
     ##The data set is grouped by subject and activity
     grouped_data_set <- group_by(full_data_set,Subject,Activity)
     
     ## A new tidied data set is created which contains the mean of each used variable for each activity, for each subject
     final_tidy_set <<- summarise_each(grouped_data_set,funs(mean))
     
     ## The data set is written to a file in the working directory
     write.table(final_tidy_set,file = "tidy_data_set.txt",row.names = FALSE)
     
}