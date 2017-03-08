# factor()
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata
levels(fdata)

rdata = factor(data,labels=c("I","II","III"))
rdata

levels(fdata) = c('I','II','III')
fdata


# table()
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


# ЗАДАЧА 1
x = list(1,2,3,4) # създава лист от 4 вектора с по 1 елемент
x2 = list(1:4) # създава лист от 1 вектор с 4 елемента

x[1]
x[[1]]
# връщат еднакъв резултат, защото векторът 1 се състои от 1 елемент

# ЗАДАЧА 2


