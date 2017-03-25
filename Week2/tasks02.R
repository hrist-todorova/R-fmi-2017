# КАТЕГОРИЗАЦИЯ НА ДАННИ
# factor() - групиране на данните по признак
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata
levels(fdata)

rdata = factor(data,labels=c("I","II","III"))
rdata

levels(fdata) = c('I','II','III')
fdata


# table() - сечения между различните фактори
mons = c("March","April","January","November","January",
         "September","October","September","November","August",
         "January","November","November","February","May","August",
         "July","December","August","August","September","November",
         "February","April")
mons = factor(mons)
table(mons)

mons = factor(mons,levels=c("January","February","March","April","May","June","July","August",
                            "September", "October","November","December"), ordered=TRUE)
table(mons)

fert = c(10,20,20,50,10,20,10,50,20)
fert = factor(fert, levels=c(10,20,50), ordered = TRUE) 
mean(as.numeric(levels(fert)[fert])) # факторизирани данни отново в целочислени данни

t = table(mons)
prop.table(t) # нормиране на данните в таблицата


# list()
mylist = list(a = 1:5, b = "Hi There", c = function(x) x * sin(x))
mylist[1]  # връщане на елемент като лист
mylist[[3]] # или mylist[["c"]] - връщане на елемент в оригинален вид
mylist$c # същото

mylist$d = "New Item" # добавяне на нов елемент
mylist$b = NULL # премахване на елемент

unlist(mylist) #produce a vector which contains all the atomic components which occur in mylist

# Не се препоръчва да ползваме for, while и рекурсия

# !!!!!! един стринг е 1 елемент, а НЕ лист от char-ове

head(df, n = 3)   # извежда първите n елемента
tail(df, n = 3)   # извежда последните n елемента

# .RData - разширение, което запазва всичко, заредено в студиото
# csv - comma-separated values

# scan("Път") - ???? dat,txt,csv,ascii

# setenv() - сетва в R текущата директория, където е R(там е и файла) ???

read.table()
read.csv()
read.csv2()


# ЗАДАЧА 1
x = list(1,2,3,4) # създава лист от 4 вектора с по 1 елемент
x2 = list(1:4) # създава лист от 1 вектор с 4 елемента

x[1]
x[[1]]
# връщат еднакъв резултат, защото векторът 1 се състои от 1 елемент

# ЗАДАЧА 2
mtcars[which(mtcars$cyl==8),]
mean(mtcars[which(mtcars$gear==5),]$mpg)

# ЗАДАЧА 3
library("MASS")

barplot(table(survey$Sex, survey$Smoke), beside = TRUE, legend = rownames(table(survey$Sex)))

# median(x) - нарежда цялата статистика по големина и взима стойността точно в средата

boxplot(survey$Height~survey$Sex)

boxplot(survey$Height)
median(survey$Height[-which(is.na(survey$Height))])

# !! In statistics, an outlier is an observation point that is distant from other observations.
# това са точките в boxplot-а


# ТЕОРИЯ: персентил - ?
# горен квантил - 3/4
# долен квантил - 1/4

hist(survey$Pulse, freq = FALSE, density = 8)
plot(density(survey$Pulse, na.rm = TRUE))

smokers = table(round(survey$Age[-(which(survey$Smoke=="Never"))]))
barplot(smokers)