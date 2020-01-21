price1 <- c(10, 20, 30, 40)
price1
#[1] 10 20 30 40

price2 <- c(50, 60, 70, 80)
price2
#[1] 50 60 70 80
prices <- c(price1, price2)
prices
#[1] 10 20 30 40 50 60 70 80
prices.matrix <- matrix(prices, byrow = T, nrow = 2)
prices.matrix
#     [,1] [,2] [,3] [,4]
#[1,]   10   20   30   40
#[2,]   50   60   70   80
 
days <- c('Mo','Tu','We','Th')
prices.name <- c('Pork', 'Beef')
 
colnames(prices.matrix) <- days
rownames(prices.matrix) <- prices.name
prices.matrix
#     Mo Tu We Th
#Pork 10 20 30 40
#Beef 50 60 70 80

colSums(prices.matrix)
# Mo  Tu  We  Th 
# 60  80 100 120 
rowSums(prices.matrix)
#Pork Beef 
# 100  260 
rowMeans(prices.matrix)
#Pork Beef 
#  25   65 
colMeans(prices.matrix)
# Mo Tu We Th 
# 30 40 50 60 

# Adding more row with rbind()
fish <- c(45, 46, 47, 48)
prices.matrix <- rbind(prices.matrix, fish)

prices.matrix
#     Mo Tu We Th
#Pork 10 20 30 40
#Beef 50 60 70 80
#fish 45 46 47 48

# Adding coloumn by cbind()
total <- rowSums(prices.matrix)
total
#Pork Beef fish 
# 100  260  186 
prices.matrix <- cbind(prices.matrix, total)
prices.matrix
#     Mo Tu We Th total
#Pork 10 20 30 40   100
#Beef 50 60 70 80   260
#fish 45 46 47 48   186
