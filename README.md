## Readme file for the R script "run_analysis"

### Location

The script, alongside the readme and codebook can be found on the same github repo.

### Requirements

The script will require the dplyr package to be loaded in R. It also requires script and the relevant data to be present in the working directory.

The data can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This should be unzipped into the working directory, so it contains the directory "getdata-projectfiles-UCI HAR Dataset".


### Operation

Once the script is loaded, the function run_analysis() can be called.
The function requires no arguments, it assumes the data is present as set out above.

The script loads two files whcih provide labels to the data.

It then loads the train and test data files, with three files for each.

For each of the X, Y and subject sets, the Train and Test data are combined.

The X data set is then provided with variable names, loaded earlier. The data is then subset to only contain variables which mention 'mean' or 'std'.

The Y data set is restructured to include actual activity names.

The three sets (subject, Y and X) are then combined, and grouped by subject and activity.

The average of each remaining variable is then calculated by subject and activity.