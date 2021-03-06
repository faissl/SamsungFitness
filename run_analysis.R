run_Analysis <- function(){
  ## FUNCTION:
  ##    Assumes the Samsung fitness data files have been downloaded, unzipped, and placed
  ##    in the "dataset" directory for both test and training data. The mean and standard
  ##    deviations are extracted from both the test data and the training data, labels are
  ##    applied, then merged, resulting in a tidy data set that only.
  
  ##    Creates a new tidy data set with the average of each variable for each given 
  ##    activity and subject. 
  ##
  
  ## Get the Activity IDs and Names 
  activityRawFile = "./dataset/activity_labels.txt"
  activityRaw = read.table(activityRawFile, sep="\t", stringsAsFactors=FALSE)
  activityTbl = strsplit(activityRaw$V1," ") 
  activityID = as.integer(sapply(activityTbl, function(x){x[1]}))
  activityName = sapply(activityTbl, function(x){x[2]})
 
  ## Get the Feature IDs and Names
  featuresRaw = read.table("./dataset/features.txt", sep="\t", stringsAsFactors=FALSE)
  featuresTbl = strsplit(featuresRaw$V1," ") 
  featureID = as.integer(sapply(featuresTbl, function(x){x[1]}))
  featureName = sapply(featuresTbl, function(x){x[2]})
  
  ## Get the indices of the features associated with means and standard deviations.
  ## Delete the mean frequency values. Get the feature name labels associated with these,
  ## then clean them up.
  relevantFeatInd = c(grep("mean\\(", featureName), grep("std", featureName))
  relevantFeatNames = featureName[relevantFeatInd]
  relevantFeatNames = gsub("\\(\\)","",relevantFeatNames)
  
  ## Get the Test and Training Activity Levels vectors associated with the test and training data
  testActivityLabels = as.vector(read.table("./dataset/test/y_test.txt"))
  trainActivityLabels = as.vector(read.table("./dataset/train/y_train.txt"))
  trainSubjectID = read.table("./dataset/train/subject_train.txt")
  names(testActivityLabels)[1] = "activity"
  names(trainActivityLabels)[1] = "activity"
  names(trainSubjectID)[1] = "subject"
  trainSubjectID$subject = as.factor(trainSubjectID$subject)

  
  ## Read in the Test and Training data 
  trainRaw = read.table("./dataset/train/X_train.txt", header=FALSE, stringsAsFactors=FALSE)
  str(trainRaw)
  testRaw = read.table("./dataset/test/X_test.txt", header=FALSE, stringsAsFactors=FALSE)
  trainData = trainRaw[,relevantFeatInd]
  testData = testRaw[,relevantFeatInd]
  names(trainData) = relevantFeatNames
  names(testData) = relevantFeatNames
  
  ## Bind the subject IDs to the training data set.
  trainActivityData = cbind(subject = trainSubjectID$subject, trainData)
  splitTrainData = split(trainActivityData, trainActivityData$subject)
  meanTrainData = lapply(splitTrainData[[1]],mean)
  splitTrainBlock = as.data.frame(splitTrainData[[1]])
  
  
  ## Bind the activity levels to their associated train/test data sets.
  testActivityData = cbind(activity = testActivityLabels$activity, testData)

  write.table(splitTrainBlock,file="cleanDataAssignment.txt")
  
  
  
  
 
  
  
  
  


