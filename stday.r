
rm(list=ls())
memory.size(max = FALSE) #내 컴퓨터 용량
memory.limit(size = 30000)#30Gb할당하기

setwd("C:/Users/성태주/OneDrive/바탕 화면/brofold/R/Rproject/corps/public_data")


install.packages("data.table")
library(data.table)
library(GGally)
library(dplyr)
train <- data.frame(fread('train.csv', encoding = 'UTF-8'))

head(train)
colSums(is.na(train))

setwd("C:/Users/성태주/OneDrive/바탕 화면/brofold/R/Rproject/corps/public_data/train_AT_TSALET_ALL")

dir<-("C:/Users/성태주/OneDrive/바탕 화면/brofold/R/Rproject/corps/public_data/train_AT_TSALET_ALL")
file_list<-list.files(dir)
data<-data.frame()

aa<-length(file_list)


for (i in 1:aa){
  assign(paste0("day_", i), 
         data.frame(fread(paste0(dir,"/",file_list[i]), encoding = 'UTF-8')))
  print(i) # check progress
}

head(day_57)












