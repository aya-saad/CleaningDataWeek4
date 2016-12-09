# CleaningDataWeek4
clean data set
# List of files
<ol>
<li>readme.md</li> contains information about the contents of the directory
<li>run_analysis.R</li> source code to produce the tidy data
<li>create_codebook.R</li> source code to create the codebook that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
<li>datacodebook.txt</li> the output codebook created using the create_codebook.R 
<li>tidy.txt</li> the tidy data set created with write.table() using row.name=FALSE.
</ol>
# run_analysis.R 
### Download the data of the project from the following location
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Read the list of features to appropriately label the data set with descriptive variable names.
Read file in the data zip file given its name, type ("", "test", "train") and column names
Read the list of activities to appropriately label them in the output
Get the subject test data
Get the activity test data
Get the subject train data
Get the activity train data
Reading the test and train data
<dl><dt>Step 1. Merge the training and the test sets to create one data set.</dt></dl>
Rows are determined by the subjects along with their activities 

### Run analysis where we calculate the overall mean and std for each variable
<dl>
<dt>Step 2. Extract only the measurements on the mean and standard deviation for each measurement.</dt>
<dt>Step 3. Uses descriptive activity names to name the activities in the data set based on the activity label file</dt>
<dt>Step 4. Appropriately labels the data set with descriptive variable names.</dt>
<dt>Step 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.</dt>
Use the group_by(subject, activities) and summarize_all(mean) to create a second, independent tidy data set with the average of each variable for each activity and each subject.
</dl>
