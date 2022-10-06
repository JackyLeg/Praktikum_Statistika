#1 - Read CSV
data_made=read.delim("clipboard")
View(data_made)

#2 - Subset Data
made <- data_made[data_made$tinggi.badan== 180,] 
View(made)

#3 - Mengubah Nilai Suatu Variabel
data_made$tinggi.badan <- ifelse(data_made$tinggi.badan > 170, c("Tinggi"), c("Pendek"))
View(data_made)

#4 - Menambah Variabel
data_made$jurusan <- ifelse(data_made$angkatan == 2021, c("Infor21"), c("Infor19"))
data_made$fakultas <- "FTI"
View(data_made)

#5 - Delete Variabel
data_made$fakultas<-NULL
View(data_made)

#6 - Merge Data Frame
data_made.nama_gender <- data_made[,1:2] 
data_made.angkatan_tinggiBadan <- data_made[,3:4] 
data_made.kolom1sd4<-cbind(data_made.nama_gender, data_made.angkatan_tinggiBadan) 
View(data_made.kolom1sd4)

#7 - Merge Baris
data_made.barisA <- data_made[1:5,] 
data_made.barisB <- data_made[25:30,] 
data_made.barisAB <- rbind(data_made.barisA, data_made.barisB) 
View(data_made.barisAB)

#8 - Sort Data Frame
data_made.urut<-data_made[order(data_made$waktu.perjalanan),] 
View(data_made.urut)
