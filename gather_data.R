wd <- "~/GitHub/ICDM-2015-Drawbridge-Cross-Device-Connections"

setwd(wd)

# The following files are provided
#   - dev_train_basic.csv.zip
#   - cookie_all_basic.csv.zip
#   - ipagg_all.csv.zip
#   - dev_test_basic.csv.zip
#   - property_category.csv.zip
#   - sampleSubmission.csv.zip
#   - id_all_ip.csv.zip
#   - id_all_property.csv.zip
#   - database.sqlite.zip

source("~/GitHub/Get-Raw-Data/download.R")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","dev_train_basic.csv.zip","dev_train_basic.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","cookie_all_basic.csv.zip","cookie_all_basic.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","ipagg_all.csv.zip","ipagg_all.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","dev_test_basic.csv.zip","dev_test_basic.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","property_category.csv.zip","property_category.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","sampleSubmission.csv.zip","sampleSubmission.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","id_all_ip.csv.zip","id_all_ip.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","id_all_property.csv.zip","id_all_property.csv")
downloadSingleKaggleZip("icdm-2015-drawbridge-cross-device-connections","database.sqlite.zip","database.sqlite")


trnFile <- "train.csv"
tstFile <- "test.csv"

download.file(trnUrl, paste(wd,"\\train.csv", sep=""), quiet=TRUE)
download.file(tstUrl, paste(wd,"\\test.csv", sep=""), quiet=TRUE)

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )