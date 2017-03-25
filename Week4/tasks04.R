
# ЗАДАЧА 1

data = read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/Shares_price_ts.csv")

tapply(data[,2], INDEX = data[,3], FUN = mean)
tapply(data[,2], INDEX = data[,3], FUN = var)


# ЗАДАЧА 2

A = c(0, 1.5, 2)
B = c(2, 0, 1.5)
C = c(2, 1, 0.5)
M = matrix(c(A,B,C),3,3, byrow = TRUE)

r = apply(M, 1, function(x,m) (sum(x)*m)/sum(rep(m,3)), m = 2.5)
r


# ЗАДАЧА 3 - СМЕСЕНИ РАЗПРЕДЕЛЕНИЯ
# маргинали - вероятностите, зависещи от x1 и x2 по отделно
#
#  1зар\2зар| ези | тура
#     ези   | 1/4 | 1/4
#     тура  | 1/4 | 1/4

# вероятността на първия зар да се падне ези е 1/4 + 1/4 = 1/2


# случайни величини
x1 = c(0:2)
x2 = c(0:3)

# разпределение
A = c(1/8, 1/8, 0, 0)
B = c(0, 2/8, 2/8, 0)
C = c(0, 0, 1/8, 1/8)
M = matrix(c(A,B,C),3,4, byrow = TRUE)

# проверка за вероятностите
m1 = apply(M, 1, sum)
sum(m1) == 1
m2 = apply(M, 2, sum)
sum(m2) == 1

# математическо очакване EX
EX1 = x1*m1
EX2 = x2*m2

# дисперсия
DX1 = (x1^2)*m1 - EX1^2
DX2 = (x2^2)*m2 - EX2^2


# ЗАДАЧА 4

library("MASS")
answer = aggregate(mtcars, by = list(mtcars$cyl, mtcars$gear), FUN = mean)

