setwd("C:/Users/user/Documents/DataScienceRepo/Getting and Cleaning Data/UCI HAR Dataset")


# Reading data into R

xtrain <- read.table("X_train.txt")
xtest <- read.table("X_test.txt")

ytrain <- read.table ("y_train.txt")
ytest <- read.table("y_test.txt")

strain <- read.table("subject_train.txt")
stest <- read.table("subject_test.txt")

activity <- read.table ("activity_labels.txt")
features <- read.table("features.txt")


# Use descriptive activity names to name the activities in the data set.

ytrain$V1 [which(ytrain$V1==1)] <- "WALKING"
ytrain$V1 [which(ytrain$V1==2)] <- "WALKING_UPSTAIRS"
ytrain$V1 [which(ytrain$V1==3)] <- "WALKING_DOWNSTAIRS"
ytrain$V1 [which(ytrain$V1==4)] <- "SITTING"
ytrain$V1 [which(ytrain$V1==5)] <- "STANDING"
ytrain$V1 [which(ytrain$V1==6)] <- "LAYING"

ytest$V1 [which(ytest$V1==1)] <- "WALKING"
ytest$V1 [which(ytest$V1==2)] <- "WALKING_UPSTAIRS"
ytest$V1 [which(ytest$V1==3)] <- "WALKING_DOWNSTAIRS"
ytest$V1 [which(ytest$V1==4)] <- "SITTING"
ytest$V1 [which(ytest$V1==5)] <- "STANDING"
ytest$V1 [which(ytest$V1==6)] <- "LAYING"


# Combine and merge to create a full data set

Xdata <- rbind(xtrain,xtest)
names(Xdata) <- features$V2

Subject <- rbind(strain,stest)
names(Subject) <- "subject"

Activity <- rbind(ytrain,ytest)
names(Activity) <- "activity"

Data <- cbind(Xdata,Subject,Activity)


# Check for duplicated variable name

which(duplicated(names(Data)))
length(which(duplicated(names(Data))))


# Adding X,Y,Z to duplicated variable name

for (i in 303:316) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "x", sep="") 	}
for (i in 317:330) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "y", sep="") 	}
for (i in 331:344) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "z", sep="") 	}

for (i in 382:395) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "x", sep="") 	}
for (i in 396:409) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "y", sep="") 	}
for (i in 410:423) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "z", sep="") 	}

for (i in 461:474) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "x", sep="") 	}
for (i in 475:488) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "y", sep="") 	}
for (i in 489:502) 
	{  colnames(Data)[i] <- paste(colnames(Data)[i], "z", sep="") 	}



# Making the names of the variables legal

colnames(Data) <- gsub('\\(|\\)',"",names(Data), perl = TRUE)
# Remove brackets

colnames(Data) <- gsub('\\-',"",names(Data), perl = TRUE)
# Remove hyphens

colnames(Data) <- gsub('\\,',"",names(Data), perl = TRUE)
# Remove commas



# Extracting only the variables with the measurements on the mean and standard deviation.

meanColNum<- grep("[Mm]ean", colnames(Data))
stdColNum<- grep("[Ss]td", colnames(Data))
subData<- Data[, c(meanColNum, stdColNum, 562, 563)]


# Calculate the average of each variable in the subData and create an independent
# tidy data set.

library(data.table)
Data2 <- data.table(subData)
tidyData <- Data2[, lapply(.SD, mean), by=c("subject", "activity")]
tidyData <- tidyData[order(tidyData$subject),]


#Exporting data into a .txt file.

write.table(tidyData, "tidyData.txt", sep="\t")