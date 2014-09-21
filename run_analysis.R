library(reshape2)
if(!file.exists("./data")) {
    dir.create("./data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./accel.zip")) {
    download.file(fileUrl, destfile="./accel.zip", method="curl")
}
unzip("./accel.zip",exdir="./data")

features <- read.table("./data/UCI HAR Dataset/features.txt")
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
colnames(test) <- features$V2
testY <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
test$activity <- testY$V1
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
test$subject <- testSubject$V1

train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
colnames(train) <- features$V2
trainY <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
train$activity <- trainY$V1
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
train$subject <- trainSubject$V1

merged <- rbind(train,test)
merged$activity = activityLabels[merged$activity,]$V2

extracted <- merged[,grep('mean|std|activity|subject',names(merged))]
extracted <- extracted[order(extracted$subject,extracted$activity),]
names(extracted) <- gsub('\\(\\)','',names(extracted))

meltExtract <- melt(extracted, id=c("subject","activity"))
meltCast <- dcast(meltExtract, subject + activity ~ variable, mean)
write.table(meltCast, file="mean_measures_by_subject_and_activity.txt",row.name=FALSE)
