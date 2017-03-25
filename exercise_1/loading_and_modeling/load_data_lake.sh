#!/bin/bash

# save my current directory
MY_CWD=$(pwd)

# creating staging directories
mkdir ~/staging
mkdir ~/staging/exercise_1

# change to staging directory
cd ~/staging/exercise_1

# get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip

# unzip the data.zip
unzip medicare_data.zip

#remove first line of files and rename
OLD_FILE="Hospital General Information.csv"
NEW_FILE="hospitals.csv"

tail -n +2 "$OLD_FILE" > $NEW_FILE

# create our hdfs directory

hdfs dfs -mkdir /user/w205/hospital_compare

# copy the files to hdfs
hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare/hospitals

#remove first line of files and rename
OLD_FILE="Timely and Effective Care - Hospital.csv"
NEW_FILE="effective_care.csv"

tail -n +2 "$OLD_FILE" > $NEW_FILE

# create our hdfs directory

hdfs dfs -mkdir /user/w205/hospital_compare

# copy the files to hdfs

hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare/effective_care

#remove first line of files and rename
OLD_FILE="Readmissions and Deaths - Hospital.csv"
NEW_FILE="readmissions.csv"

tail -n +2 "$OLD_FILE" > $NEW_FILE

# create our hdfs directory

hdfs dfs -mkdir /user/w205/hospital_compare

# copy the files to hdfs

hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare/readmissions

#remove first line of files and rename
OLD_FILE="Measure Dates.csv"
NEW_FILE="Measures.csv"

tail -n +2 "$OLD_FILE" > $NEW_FILE

# create our hdfs directory

hdfs dfs -mkdir /user/w205/hospital_compare

# copy the files to hdfs

hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare/measures

#remove first line of files and rename
OLD_FILE="hvbp_hcahps_11_10_2016.csv"
NEW_FILE="surveys_responses.csv"

tail -n +2 "$OLD_FILE" > $NEW_FILE

# create our hdfs directory

hdfs dfs -mkdir /user/w205/hospital_compare

# copy the files to hdfs

hdfs dfs -mkdir /user/w205/hospital_compare/surveys_responses
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare/surveys_responses


#change directory back to the original

cd $MY_CWD

#clean exit

exit
