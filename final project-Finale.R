library(readr)
CANCER <- read_csv("https://raw.githubusercontent.com/LIAOMINSHIU/112-1-final-project-1/main/File_22018.csv")
dplyr::glimpse(CANCER)
View(CANCER)

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


#分析----
## 2019年哪一個癌症發生次數最高----
country_data <- subset(CANCER, 縣市別 == "全國")
country_data|>
  dplyr::filter(
    癌症診斷年=="2019"
  ) |>
  dplyr::group_by(
    癌症別
  )|>
  dplyr::summarise(
    癌症平均發生數 = mean(癌症發生數)
  )|>View()
###前三名是：「女性乳房」、「結直腸」以及「肺、支氣管及氣管」

#2019年各縣市各種癌症別癌症發生數男女比----
CANCER |>
  dplyr::filter(
    癌症診斷年=="2019"
  ) |>
  dplyr::select(
    癌症別, 縣市別, 性別, 癌症發生數
  ) |>
  tidyr::pivot_wider(
    names_from = "性別",
    values_from = "癌症發生數"
  ) |>
  dplyr::mutate(
    男女比=男/女
  ) |>
  dplyr::select(
    癌症別, 縣市別,男女比
  ) |>
  tidyr::pivot_wider(
    names_from = "縣市別",
    values_from = "男女比"
  ) ->table1
View(table1)



