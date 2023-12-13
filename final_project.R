library(readr)
CANCER <- read_csv("https://raw.githubusercontent.com/LIAOMINSHIU/112-1-final-project-1/main/File_22018.csv")
dplyr::glimpse(CANCER)
#paring----
##癌症別 46種----
class(CANCER$癌症別)
factor (CANCER$癌症別)
CANCER$癌症別<-factor(CANCER$癌症別)
class(CANCER$癌症別)
fct_CancerType<-factor(CANCER$癌症別)
levels(fct_CancerType)
unique_CancerType <- unique(CANCER$癌症別)
unique_CancerType

##癌症診斷年_1979----
class(CANCER$癌症診斷年)
factor (CANCER$癌症診斷年)
CANCER$癌症診斷年<-factor(CANCER$癌症診斷年)
class(CANCER$癌症診斷年)
fct_CancerTime<-factor(CANCER$癌症診斷年)
levels(fct_CancerTime)

##區域（縣市別）----
class(CANCER$縣市別)
factor (CANCER$縣市別)
CANCER$縣市別<-factor(CANCER$縣市別)
class(CANCER$縣市別)
fct_CancerCity<-factor(CANCER$縣市別)
levels(fct_CancerCity)
unique_CancerType <- unique(CANCER$縣市別)
unique_CancerType

##性別----
class(CANCER$性別)
factor (CANCER$性別)
CANCER$性別<-factor(CANCER$性別)
class(CANCER$性別)
fct_CancerGender<-factor(CANCER$性別)
levels(fct_CancerGender)

#歷年各種癌症別癌症發生數變化----
result <- grep("全國", CANCER$縣市別)
print(result)
print(CANCER$縣市別[result])

#歷年各種癌症別癌症平均年齡----


#歷年各種癌症別癌症平均年齡中位數----

#性別與各種癌症別癌症發生數變化----



