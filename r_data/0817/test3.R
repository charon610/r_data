# mpg 데이터 분석
library(ggplot2)

#ggplot2의 mpg 데이터를 데이터프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)

dim(mpg)

head(mpg)

tail(mpg)

str(mpg)

#변수명 바꾸기
df_raw <- data.frame(var1=c(1,2,1), var2=c(2,3,2))
df_raw

install.packages("dplyr")
library(dplyr)

#복사본 생성
df_new <- df_raw

#var2를 v2로 수정
df_new <- rename(df_new, v2=var2)
df_new


df <- df_raw

#파생 변수
df$var_sum <- df$var1 + df$var2
df

head(mpg)

#통합연비 구하기
mpg$total <- (mpg$cty + mpg$hwy)/2

#통합연비의 평균
mean(mpg$total)

summary(mpg$total)

#total이 20이상이면 pass 그렇지 않으면 fail
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
View(mpg)

table(mpg$test)

#fail과 pass를 시각화
library(ggplot2)
qplot(mpg$test)

#grade 파생변수로 total이 30이상이면 A, 20이상이면 B, 20미만이면 C
mpg$grade <- ifelse(mpg$total >=30, "A", ifelse(mpg$total >=20, "B", "C"))
head(mpg)

