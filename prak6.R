#1 - Boxplot
iris = read.csv("D:/iris.csv")
View(iris)
summary(iris)
head(iris)
by(iris$petal_length, iris$species, summary)
mean(iris$sepal_length)
var(iris$sepal_length)
boxplot(iris$petal_length)
boxplot(petal_length ~ species, data = iris, main = "Petal Length", xlab = "Species", ylab = "Length")

#2 - Histogram 'n his density
hist(iris$petal_length)
hist(iris$sepal_width)
hist(iris$sepal_width[iris$species == "setosa"])
hist(iris$sepal_width[iris$species == "versicolor"])
d = density(iris$petal_length)
plot(d)
d = density(iris$sepal_width[iris$species == "versicolor"])
plot(d)

#3 - Scatter Plot
#install.packages("ggplot2")
#^ must install, if you haven't ^
library(ggplot2)
data_made = read.csv("D:/DirectMarketing.csv")
View(data_made)
qplot(data_made$AmountSpent, data_made$Salary)
plot(data_made$AmountSpent, data_made$Salary)

#4 - Histogram + Density of AmountSpent from DirectMarketing.csv file
library(ggplot2)
data_novandy = read.csv("D:/DirectMarketing.csv")
View(data_novandy)
hist(data_novandy$AmountSpent)
plot_kece = density(data_novandy$AmountSpent)
plot(plot_kece)

#4b - Compare var Price with other numeric var
data_asardi = read.csv("D:/houseprice.csv")
View(data_asardi)

#4b.1 - Price with SqFt
qplot(data_asardi$Price, data_asardi$SqFt)
plot(data_asardi$Price, data_asardi$SqFt)

#4b.2 - Price with Bedrooms
qplot(data_asardi$Price, data_asardi$Bedrooms)
plot(data_asardi$Price, data_asardi$Bedrooms)

#4b.3 - Price with Bathrooms
qplot(data_asardi$Price, data_asardi$Bathrooms)
plot(data_asardi$Price, data_asardi$Bathrooms)

#4b.4 - Price with Offers
qplot(data_asardi$Price, data_asardi$Offers)
plot(data_asardi$Price, data_asardi$Offers)

