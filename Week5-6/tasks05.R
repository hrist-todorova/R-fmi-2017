# ЗАДАЧА 1

dbinom(29,79,1/2)
choose(79,29)*(1/2)^50*(1/2)^29

# ЗАДАЧА 2

y = c(0:4)
r = 2
lapply(y, function (x) choose(x+r-1, r-1)*(1/2)^x*(1/2)^r)

pnbinom(4,2,1/2, lower.tail = FALSE)

# ЗАДАЧА 3

fails = qnbinom(1-0.18522, 3, 0.7)
result = fails + 3
result

# ЗАДАЧА 4

phyper(35, 600000*0.4, 600000*0.6, 100)
pop = rep(c(0,1),c(360000,240000))
vec = c(0:1000)
res = sapply(vec, function (x) sum(sample(pop,100)))
sum(res<=35) / 1000

# ЗАДАЧА 5

dpois(2,10)
ppois(1,10)
ppois(1,10, lower.tail = FALSE)
