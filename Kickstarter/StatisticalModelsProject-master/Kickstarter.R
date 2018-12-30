#Set wd for your own computer
library(glmnet)

setwd("C:/Users/ericv/OneDrive/Documents/MGSC310/")
KickDF <- read.csv("C:/Users/ericv/OneDrive/Documents/MGSC310/ks-projects-201612.csv")

trainSize <- 0.75
trainInd <- sample(1:nrow(KickDF), size = floor(nrow(KickDF) * trainSize))

KickTrain <- KickDF[trainInd, ]
KickTest <-  KickDF[-trainInd, ]

logitTrain <- glm()

KickDF$SucceedOrFail <- ifelse(KickDF$state == "Success", 1, 0)