1:12 # you can create vector by using number start : number end
# [1]  1  2  3  4  5  6  7  8  9 10 11 12

v <- 1:12 # assign to variable (v) by using <-
v
# [1]  1  2  3  4  5  6  7  8  9 10 11 12

matrix(v)
 #     [,1]
# [1,]    1
# [2,]    2
# [3,]    3
# [4,]    4
# [5,]    5
# [6,]    6
# [7,]    7
# [8,]    8
# [9,]    9
#[10,]   10
#[11,]   11
#[12,]   12

matrix(v, nrow = 3)
    # [,1] [,2] [,3] [,4]
#[1,]    1    4    7   10
#[2,]    2    5    8   11
#[3,]    3    6    9   12

> matrix(1:15, byrow = FALSE, nrow = 5) # can change FALSE to F
   #  [,1] [,2] [,3]
#[1,]    1    6   11
#[2,]    2    7   12
#[3,]    3    8   13
#[4,]    4    9   14
#[5,]    5   10   15

matrix(1:15, byrow = TRUE, nrow = 5) # can change TRUE to T
    # [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#[3,]    7    8    9
#[4,]   10   11   12
#[5,]   13   14   15

stock1 <- c(101, 102, 103, 100, 110)
stock2 <- c(219, 199, 218, 217, 156)
# combine vector
newstocks <- c(stock1, stock2)
newstocks # or run print(newstocks)
# [1] 101 102 103 100 110 219 199 218 217 156

#create matrix
newstocks.matrix <- matrix(newstocks, byrow = TRUE, nrow = 2)
newstocks.matrix
    # [,1] [,2] [,3] [,4] [,5]
#[1,]  101  102  103  100  110
#[2,]  219  199  218  217  156

# create column name and row name
day
#[1] "Mo" "Tu" "We" "Th" "Fr"
stock.name <- c('TESL', 'BORI')
stock.name
#[1] "TESL" "BORI"
 
colnames(newstocks.matrix) <- day
rownames(newstocks.matrix) <- stock.name

newstocks.matrix # print(newstock.matrix)
    #   Mo  Tu  We  Th  Fr
# TESL 101 102 103 100 110
# BORI 219 199 218 217 156
