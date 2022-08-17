#install.packages("ggplot2")
library(ggplot2)
 x <- c("a", "a", "b", "c")
 x
 
 qplot(x)
 
 #data에 mpg, x축에 hwy 변수 지정해서 그래프 출력
 #mpg : 미국 환경 보호국(US Environmental Protection Agency)에서 공개한 자료로, 1999~2008년 사이 미국에서 출시된 자동차 234종의 연비 관련 정보.
 qplot(data=mpg, x=hwy)
 
 ggplot2 : mpg
 
 #x축 cty
 qplot(data = mpg, x=cty)
 
 #x축 drv, y축 hwy, 선 그래프 형태
 qplot(data = mpg, x=drv, y=hwy, geom = "line")
 
 #x축 drv, y축 hwy, 상자 그래프 형태
 qplot(data = mpg, x=drv, y=hwy, geom = "boxplot")
 
 #x축 drv, y축 hwy, 상자 그래프 형태, drv별 색 표현
 qplot(data = mpg, x=drv, y=hwy, geom = "boxplot", colour =drv)
 