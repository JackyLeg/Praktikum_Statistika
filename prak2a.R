a <- c(1,2,-5,0.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical vector
print(a)
print(b)
print(c)

#MATRIKS
cells <- c(3,15,-27,38)
r_made <- c("R1", "R2")
c_made <- c("C1", "C2") 
made_matrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(r_made, c_made))
print(made_matrix)

#DATA FRAME
made1 <- c(1,2,3,4)
made2 <- c("red", "white", "red", NA)
made3 <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(made1, made2, made3)
names(dataku) <- c("ID","Color","Passed") # variable names 
print(dataku)

data_made <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (data_made)

#KONEKSI KE DATABASE
install.packages("RMySQL")
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "SELECT * FROM `made___houseprices`;"
df <- dbGetQuery(con, myQuery)

#TEKNIK FILTER DATA
install.packages("dplyr")
library(dplyr)
df<-filter(df,Brick=="No")
print(df)

library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con) 
myQuery <- "SELECT * FROM `made___houseprices`;"
df <- dbGetQuery(con, myQuery)
library(dplyr)
df<-filter(df,Brick=="No" | Neighborhood == "East")
print(df)

