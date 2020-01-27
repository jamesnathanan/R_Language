animal <- c('d', 'c', 'd', 'c', 'c')
animal
#[1] "d" "c" "d" "c" "c"
id <- c(1,2,3,4,5)
 
factor(animal)
#[1] d c d c c
#Levels: c d

factor(animal)
#[1] d c d c c
#Levels: c d

fact.ani <- factor(animal)
fact.ani
#[1] d c d c c
#Levels: c d

#nominal = no order such as animal cat dog
#ordinal = order

ord.cat <- c('cold', 'medium', 'hot')

temps <- c('cold', 'med', 'hot', 'hot', 'hot', 'cold', 'med')
temps
#[1] "cold" "med"  "hot"  "hot"  "hot"  "cold" "med" 
fact.temp <- factor(temps, ordered = TRUE, levels = c('cold', 'med', 'hot'))
fact.temp
#[1] cold med  hot  hot  hot  cold med 
#Levels: cold < med < hot

summary(fact.temp)
#cold  med  hot 
#   2    2    3 

summary(temps)
#   Length     Class      Mode 
#        7 character character 
