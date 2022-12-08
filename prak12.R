#Latihan Pertama
df_made = read.delim("clipboard")
head(df_made)
model_reg = lm(df_made$Y~df_made$X)
summary(model_reg)

#Latihan Kedua
#1
df_novandy = read.delim("clipboard")
df_novandy$brick_dummy <- ifelse(df_novandy$Brick == "Yes", 1, 0)
df_novandy$N_dummy1 <- ifelse(df_novandy$Neighborhood == "West", 1, 0)
df_novandy$N_dummy2 <- ifelse(df_novandy$Neighborhood == "North", 1, 0)
model = lm(df_novandy$Price~df_novandy$SqFt + 
             df_novandy$Bedrooms + 
             df_novandy$Bathrooms + 
             df_novandy$brick_dummy + 
             df_novandy$N_dummy1 + 
             df_novandy$N_dummy2)
summary(model)

#2
by(df_novandy$Price, df_novandy$Neighborhood, mean)
by(df_novandy$Price, df_novandy$Brick, mean)
