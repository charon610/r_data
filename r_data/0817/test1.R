#install.packages("readxl")
library(readxl)

#엑셀파일 불러오기
df_exam <- read_excel("0817/data/excel_exam.xlsx")
df_exam

#속성이름이 없을때 제일 상단 데이터가 잘림
df_exam1 <- read_excel("0817/data/excel_nt_exam.xlsx")
df_exam1

#속성이름이 없을때 불러오는 방법
df_exam1 <- read_excel("0817/data/excel_nt_exam.xlsx", col_names = F)
df_exam1

#csv 파일 불러오기
df_csvfile <- read.csv("0817/data/excel_exam.csv")
df_csvfile

#데이터 프레임 만들기
df_midterm <- data.frame(class=c(1,1,2,2),english=c(90,80,70,60),math=c(50,80,40,90))
df_midterm

#csv 파일로 저장하기
write.csv(df_midterm, file = "df_midterm.csv")

