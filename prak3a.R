data_made=read.delim("clipboard", sep=";")
View(data_made)

made <- data_made[data_made$Bedrooms==2,] 
View(made)

made$Bathrooms <- ifelse(made$Bathrooms > 2, c("large"), c("small"))
View(made)

made$novandy <- ifelse(made$Offers > 2, c("large"), c("small"))
View(made)

made$novandy <- made$Price/made$SqFt
View(made)

made$novandy<-NULL
View(made)

data_made.kolom1dan2 <- data_made[,1:2] 
View(data_made.kolom1dan2)

data_made.kolom3dan4 <- data_made[,3:4] 
View(data_made.kolom3dan4)

data_made.kolom1sd4<-cbind(data_made.kolom1dan2, data_made.kolom3dan4) 
View(data_made.kolom1sd4)

data_made.baris1sd3 <- data_made[1:3,] 
data_made.baris4sd6 <- data_made[4:6,] 
data_made.baris1sd6 <- rbind(data_made.baris1sd3, data_made.baris4sd6) 
View(data_made.baris1sd6)

data_made.sort<-data_made[order(data_made$Price),] 
View(data_made.sort)
