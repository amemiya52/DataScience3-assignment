run_analysis <- function(X, ...) {
        
        # load the dplyr and plyr package library
        library(dplyr)
        library(plyr)
        
        ### For executing this script, the UCI HAR Dataset folder MUST be
        ### in the same directory.
        
        ## Reading from features.txt, from Xtrain and Xtest files
        features0 <- read.table("./UCI HAR Dataset/features.txt")
        xtest0 <- read.table("./UCI HAR Dataset/test/X_test.txt")
        xtrain0 <- read.table("./UCI HAR Dataset/train/X_train.txt")
        
        
        # second column of features set as names
        datanam <- as.vector(features0[,2])
        
        #insert column name in each dataframe
        colnames(xtest0) <- datanam
        colnames(xtrain0) <- datanam
        
        # merge both datasets using "join" from the plyr package
        newdf <- join(xtest0, xtrain0)
        
        ## Creating a new data.frame with descriptive measures
        
        # vector with columns that we want to keep
        tokeep <- c(a =1:6, b = 41:46, c =81: 86, d = 121:126, e=161:166, g= 201:202, h=214:215, i=227:228, j=240:241, k=253:254,
                    l=266:271, m=345:350, n=516:517, p=529:530, q=542:543)
       
        #new data frame with the desired output
        
        newdf1 <- subset(newdf, select = tokeep)
        
        outputdata <- write.table(newdf1, file="outputdata.txt", sep="\t", row.names = FALSE)      
       
}