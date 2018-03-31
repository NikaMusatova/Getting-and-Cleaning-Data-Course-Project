#reading data
train_set<-read.table('./train/X_train.txt')
test_set<-read.table('./test/X_test.txt')
train_set_activityl<-read.table('./train/y_train.txt')
test_set_activityl<-read.table('./test/y_test.txt')
train_set_subj<-read.table('./train/subject_train.txt')
test_set_subj<-read.table('./test/subject_test.txt')
activity_names<-read.table('activity_labels.txt', stringsAsFactors = F)

#merging the training and the test sets to create one data set
activityl<-rbind(train_set_activityl,test_set_activityl)
subjects<-rbind(train_set_subj,test_set_subj)
all_data<-rbind(train_set,test_set)

#adding header
headers<-read.table('features.txt', stringsAsFactors = F)
names(all_data)<-headers$V2

#extracting only the measurements on the mean and standard deviation for each measurement
all_means_stds<-all_data[,c(grep('mean', names(all_data)), grep('std', names(all_data)))]

#adding activities, adding subjects, using descriptive activity names to name the activities in the data set
all_means_stds$Activity<-activityl$V1
all_means_stds$Subject<-subjects$V1

for (b in activity_names$V1){
  all_means_stds$Activity[which(all_means_stds$Activity==b)]<-activity_names$V2[which(activity_names$V1==b)]
}

#getting new dataset with average of each variable for each activity and each subject

newtable<-data.frame(colnames(names(all_means_stds)))
a<-1
for (i in 1:30){
  for (k in activity_names$V2){
    for (l in names(all_means_stds)){
      if (length(which((all_means_stds$Subject==i)&(all_means_stds$Activity==k)))>0){
      newtable[a,l]<-mean(all_means_stds[which((all_means_stds$Subject==i)&(all_means_stds$Activity==k)),l])
      newtable[a,"Activity"]<-k
      newtable[a,"Subject"]<-i}
    }
  a<-a+1}
}

names_new<-paste(names(newtable), "Average", sep="_")
names_new[which(names_new=="Activity_Average")]<-"Activity"
names_new[which(names_new=="Subject_Average")]<-"Subject"
names(newtable)<-names_new
newtable<-newtable[,c(2,3,1,4:ncol(newtable))]

#writing data
write.table(newtable, "tidy.txt", row.names = FALSE, quote = FALSE)
