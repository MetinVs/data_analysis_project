# 1 this first question 1

df <- read.csv("/Users/mehmetdemirbilek/Desktop/Akademik /IST2252 Veri Analizi/Odev/Electric_Production.csv")
x = df[[2]]
library(moments)
#mean of electric production
mean(df[[2]])
#median of electric production
median(df[[2]])
#mode of electric production
mode(df[[2]])
#standard deviation of electric production
sd(df[[2]])
#variance of electric production
var(df[[2]])
#skewness of electric production
skewness(df[[2]])
#kurtosis of electric production
kurtosis(df[[2]])
#coefficient of variation of electric production
cv = sd(df[[2]]) / mean(df[[2]]) * 100
cv
#histogram graph for electric production
hist(df[[2]],main = 'Electric Production',xlab='Production',ylab='Frekans',col = "darkblue")  

#polygon
plot(df[[2]],main = "POLYGON",xlab="Values",ylab="Production")
polygon(df[[2]], col = "gray", border = "red")

#dotplot
dotchart(df[[2]], xlab= "electric production", ylab= "values", labels = "dotplot",col = c("darkblue")) 



# line plot graph for electric production
library(ggplot2)
start_date <- as.Date("1985-01-01")
end_date <- as.Date("2018-01-01")
date <- seq(start_date, end_date, by = "1 month")
production = df[[2]]

df <- data.frame(date, production)

ggplot(df, aes(x = as.Date(date), y = production)) +
  geom_line() +
  labs(x = "Year", y = "Production") +
  ggtitle("Production Graph")



#2 box plot graph 
boxplot(df[[2]])

#3 normal distribition
normaldistribituon = rnorm(df[[2]], mean(df[[2]]), sd(df[[2]]))
hist(normaldistribituon)

#4 Distribution of the data 

library(ggplot2)
ggplot(data = df , aes(x = production)) +
  geom_density()



#5 Are there any outliers’ value in your data? Show them at least using three different graphs.
boxplot(df[[2]], main = "Box Plot")
hist(df[[2]], main = "Histogram")
plot(df[[2]], type = "l", main = "Line Plot",xlab="frequency",ylab="electric production")


#6 Triangle (Ternary) graph. (Requires different data).

library(ggplot2)

data <- data.frame(
  x = c(0.3, 0.6, 0.1),
  y = c(0.2, 0.4, 0.4),
  z = c(0.5, 0.1, 0.4)
)
ggplot(data) +
  geom_polygon(aes(x = x, y = y, group = 1), fill = "blue", alpha = 0.5) +
  geom_text(aes(x = x, y = y, label = paste0("(", round(x, 2), ",", round(y, 2), ",", round(z, 2), ")")),
            color = "white", size = 4, fontface = "bold") +
  labs(x = "X", y = "Y", title = "Triangle Graph") +
  theme_minimal()

#7 Star graph. (Requires different data).

library(ggplot2)
data1 <- data.frame(
  x = c(1, 0.5, 0.2, 0.8, 0.3),
  y = c(0, 0.8, 0.4, 0.4, 0.8)
)
ggplot(data1) +
  geom_polygon(aes(x = x, y = y), fill = "blue", alpha = 0.5) +
  labs(x = "X", y = "Y", title = "Star Graph") +
  theme_minimal()

#8 Parallel coordinates (GGOBI(http://www.ggobi.org/)) (Requires different data).

library(GGally)
data2 <- data.frame(
  x1 = rnorm(10),
  x2 = rnorm(10),
  x3 = rnorm(10),
  x4 = rnorm(10),
  x5 = rnorm(10)
)

ggparcoord(data2, columns = 1:5)

# 9. Mosaic drawing (R) (Requires different data)
library(ggplot2)
data <- data.frame(
  Gender = c("Male", "Male", "Female", "Female", "Male", "Female"),
  AgeGroup = c("Young", "Middle", "Young", "Middle", "Old", "Old"),
  Category = c("A", "B", "B", "A", "A", "B")
)

ggplot(data, aes(x = AgeGroup, fill = Category)) +
  geom_bar(position = "fill") +
  facet_wrap(~ Gender)
  

#10d. Crimes (or crime rate ) in Germany, England, Italy and Spain are increasing more slowly than the
#US crimes.

veri <- read.csv("/Users/mehmetdemirbilek/Desktop/Akademik /IST2252 Veri Analizi/Odev/veriseticountry.csv")

library(dplyr)

#Italyanın yıllara gore suc oranları
barplot(veri[[2]], xlab = "ITALY",ylab = "suç oranları",names.arg = veri[[1]],main = "2023 e kadar ITALY suç ülke grafiği",col="green")

#İspanyanın yıllara gore suc oranları
barplot(veri[[3]], xlab = "Spain",ylab = "suç oranları",names.arg = veri[[1]],main = "2023 e kadar  SPAIN suç ülke grafiği",col="yellow")

#Almanyanın yıllara gore suc oranları
barplot(veri[[4]], xlab = "Germany",ylab = "suç oranları",names.arg = veri[[1]],main = "2023 e kadar GERMANY suç ülke grafiği",col="orange")

#İngiltere yıllara gore suc oranları
barplot(veri[[5]], xlab = "England",ylab = "suç oranları",names.arg = veri[[1]],main = "2023 e kadar ENGLAND suç ülke grafiği",col="blue")

#Amerikanın yıllara gore suc oranları
barplot(veri[[6]], xlab = "US",ylab = "suç oranları",names.arg = veri[[1]],main = "2023 e kadar US suç ülke grafiği",col="red")

#Ülkelerin yıllara göre suç oranları hepsi beraber
library(ggplot2)
ggplot() +
  geom_line(data = veri, aes(x = year, y = veri[[2]], color = "Italy"), linewidth = 2) +
  geom_line(data = veri, aes(x = year, y = veri[[3]], color = "Spain"), linewidth = 2) +
  geom_line(data = veri, aes(x = year, y = veri[[4]], color = "Germany"), linewidth = 2) +
  geom_line(data = veri, aes(x = year, y = veri[[5]], color = "England"), linewidth = 2) +
  geom_line(data = veri, aes(x = year, y = veri[[6]], color = "US"), linewidth = 2) +
  labs(title = "Crime Rate by Countries", x = "Years", y = "Crime Rate") +
  scale_color_manual(values = c("Italy" = "green", "Spain" = "yellow", "Germany" = "orange", "England" = "blue", "US" = "red")) +
  scale_x_continuous(breaks = seq(2013, 2023, 1), labels = seq(2013, 2023, 1)) +
  theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5),
        axis.title.y = element_text(size = 20))

yesilveri <- read.csv("/Users/mehmetdemirbilek/Desktop/Akademik /IST2252 Veri Analizi/Odev/yesilenerji.csv")
library(dplyr)
deuveri = yesilveri %>% filter(Location == "DEU") %>% select(Location,Time,Value)
barplot(deuveri[[3]],names.arg = deuveri[[2]],main= "Germany value of years",xlab="Years",ylab="Values",col="orange")

itaveri = yesilveri %>% filter(Location == "ITA") %>% select(Location,Time,Value)
barplot(itaveri[[3]],names.arg = itaveri[[2]],main= "Italy value of years",xlab="Years",ylab="Values",col="green")

spaveri = yesilveri %>% filter(Location == "ESP") %>% select(Location,Time,Value)
barplot(spaveri[[3]],names.arg = spaveri[[2]],main= "Spain value of years",xlab="Years",ylab="Values",col="yellow")

ukveri = yesilveri %>% filter(Location == "GBR") %>% select(Location,Time,Value)
barplot(ukveri[[3]],names.arg = ukveri[[2]],main= "United Kingdom value of years",xlab="Years",ylab="Values",col="blue")

usveri = yesilveri %>% filter(Location == "USA") %>% select(Location,Time,Value)
barplot(usveri[[3]],names.arg = usveri[[2]],main= "United States value of years",xlab="Years",ylab="Values",col="red")




library(ggplot2)
ggplot() +
  geom_line(data = itaveri, aes(x = Time, y = itaveri[[3]], color = "Italy"), linewidth = 2) +
  geom_line(data = spaveri, aes(x = Time, y = spaveri[[3]], color = "Spain"), linewidth = 2) +
  geom_line(data = deuveri, aes(x = Time, y = deuveri[[3]], color = "Germany"), linewidth = 2) +
  geom_line(data = ukveri, aes(x = Time, y = ukveri[[3]], color = "England"), linewidth = 2) +
  geom_line(data = usveri, aes(x = Time, y = usveri[[3]], color = "US"), linewidth = 2) +
  labs(title = "Ulkelerın yesil enerji uretimi", x = "Years", y = "Values") +
  scale_color_manual(values = c("Italy" = "green", "Spain" = "yellow", "Germany" = "orange", "England" = "blue", "US" = "red")) +
  theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5),
        axis.title.y = element_text(size = 20))







