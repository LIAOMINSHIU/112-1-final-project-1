##library(readr)
##banking <- read_csv("https://raw.githubusercontent.com/LIAOMINSHIU/112-1-final-project-1/main/banking14.csv")
##View(banking14)


library(readr)
CANCER <- read_csv("https://raw.githubusercontent.com/LIAOMINSHIU/112-1-final-project-1/main/File_22018.csv")
View(CANCER)

dplyr::glimpse(File_22018)
table(CANCER$癌症診斷年)
View(CANCER$癌症診斷年)

library(dplyr)
CANCER |>
  rename(
    newName = olName,
    
  )

dplyr::glimpse(banking)
str(banking)
