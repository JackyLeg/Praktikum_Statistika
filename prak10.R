#Latihan I
#1
1-pbinom(3,15,0.1)

#2
pbinom(1,15,prob=0.1)

#3
1-pbinom(6,15,prob=0.9)
1-pbinom(5,15,prob=0.9)

#4
dbinom(10, 15, prob=0.9)

#5
dbinom(15, 15, prob=0.9)


#Latihan II
#1
dbinom(4, size=12, prob=0.2)

#2
dbinom(0, size=12, prob=0.2) + 
  dbinom(1, size=12, prob=0.2) + 
  dbinom(2, size=12, prob=0.2) + 
  dbinom(3, size=12, prob=0.2) + 
  dbinom(4, size=12, prob=0.2)

#3
pbinom(4, size=12, prob=0.2)


#Latihan III
#1
dbinom(5,20,0.85)

#2
dbinom(3,20,0.15)

#3
dbinom(8,20,0.85)

#4
dbinom(2,20,0.15)
