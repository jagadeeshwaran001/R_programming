library(readxl)
data<-read_excel(file.choose(),col_names=FALSE)
ref<-as.double(data[1,-1])
testwave1<-as.double(data[2,-1])
testwave2<-as.double(data[3,-1])
testwave3<-as.double(data[4,-1])
testwave4<-as.double(data[5,-1])
print(length(ref))