# using librayr plyr to arrange and select the data
library(dplyr)
library(plyr)

# download the data for the project
filedownload <- function(){
  destfile="getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  fileURL <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"   
  if (!file.exists(destfile)) {
    download.file(fileURL ,destfile,method="auto") }
  else { txt <- message("file already exists in the current directory!") }
}


# read file in the data zip file given its name, type ("", "test", "train") and column names
fileRead <- function(name = "features", type = "", cnames = c("features")){
  file_zip = "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  if(type == "") typen = "" else typen = paste(type,"/", sep = "")
  if(!file.exists(file_zip)){ stop("Coudn't find zip file in the current directory")}
  file_name <- paste("UCI HAR Dataset/", typen, name, ".txt",sep = "")
  list <- suppressWarnings(read.table(unz(file_zip, file_name), col.names = cnames))
}

# run analysis where we calculate the overall mean and std for each variable
run_analysis <- function(){
  # download the data of the project
  filedownload() 
  # read the list of features to appropriately label the data set with descriptive variable names.
  features <- fileRead(name = "features", type = "", cnames = c("id", "features"))[,2] 
  # read the list of activities to appropriately label them in the output
  activity_labels <- fileRead(name = "activity_labels", type = "", cnames = c("id", "activities"))[,2] 
  

  # subject test data
  subject_test_rownames <- fileRead(name = "subject_test", type = "test", cnames = c("subject"))
  # activity test data
  activity_test_rownames <- fileRead(name = "y_test", type = "test", cnames = c("activities"))
  # subject train data
  subject_train_rownames <- fileRead(name = "subject_train", type = "train", cnames = c("subject"))
  # activity train data
  activity_train_rownames <- fileRead(name = "y_train", type = "train", cnames = c("activities"))
  
  # reading the test and train data
  train_data <- fileRead(name = "X_train", type = "train", cnames = features)
  test_data <- fileRead(name = "X_test", type = "test", cnames = features)
  
  # Merge the training and the test sets to create one data set.
  dat <- rbind(test_data, train_data)
  
  # rows are determined by the subjects along with their activities 
  subject <- rbind(subject_test_rownames, subject_train_rownames)
  activities <- rbind(activity_test_rownames, activity_train_rownames)
  
  # Extract only the measurements on the mean and standard deviation for each measurement.
  dat_extract <- dat[grepl("mean\\(|std\\(", features)]
  dat_extract_all <- cbind(subject, dat_extract)
  # Assigning descriptive activity names to name the activities in the data set based on the activity label file
  dat_extract_all <- mutate(dat_extract_all, activities = activity_labels[activities$activities])
  result <- dat_extract_all %>% 
            group_by(subject, activities) %>% 
            summarise_all(mean) %>%
            print
}
