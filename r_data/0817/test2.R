df_exam <- read_excel("0817/data/excel_exam.xlsx")
df_exam

#위에서부터 6개의 데이터 출력
head(df_exam)

#위에서부터 n개의 데이터 출력
head(df_exam, 3)

#밑에서부터 6개의 데이터 출력
tail(df_exam)

#데이터 전체조회
View(df_exam)

#데이터 개수
dim(df_exam)

#데이터 구조
str(df_exam)

#데이터 요약
summary(df_exam)
