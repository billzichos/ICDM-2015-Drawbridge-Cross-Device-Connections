wd <- "~/GitHub/ICDM-2015-Drawbridge-Cross-Device-Connections"

setwd(wd)

# read in the training file and prepare for combining with test.
train <- read.csv("dev_train_basic.csv", as.is = TRUE)
train$Source <- "Train"

# read in the test file and prepare for combining with train.
test <- read.csv("dev_test_basic.csv", as.is = TRUE)
test$Source <- "Test"

# combine the data files for feature generation
library("dplyr")
train <- select(train, drawbridge_handle, device_id, device_type, device_os, country, anonymous_c0, anonymous_c1, anonymous_c2, anonymous_5, anonymous_6, anonymous_7)
test <- select(test, drawbridge_handle, device_id, device_type, device_os, country, anonymous_c0, anonymous_c1, anonymous_c2, anonymous_5, anonymous_6, anonymous_7)

df <- rbind(train, test)