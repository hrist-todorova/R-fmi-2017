# ВРЕМЕВИ ДАННИ
# date-time формат(вид структура) -> година-месец-дата час:минути:секунди - 
# time series се превежда като "времеви редове"

# работим с времеви измервания като превръщаме стрингове в date/time с оператора as.POSIXct()
start.date = as.POSIXct("2004-01-01 00:00", tz = "GMT")
end.date = as.POSIXct("2004-12-31 23:00", tz = "GMT")

# селектиране на подмножество от елементи от data frame (datetime e колоната с дати)
df[df.datetime >= start.date & df.datetime <= end.date, ] # !използваме само един & за обединяване

# как да преформатираме date/time?
format(datetime, "%Y-%m-%d %H-%M-%S")
strptime() # как работи?????

difftime(t1,t2, units = 'mins')  # разликата t1-t2 в минути 

as.POSIXlt()  # календарно време?

date()  # Returns a character string of the current system date and time
  
# само за POSIXlt обекти можем да достъпваме така
lt$year
lt$hour = lt$hour + 1  # променихме обекта lt

# ЦИКЛИ
for(i in 1:10) print(1:i)

sum = 0
i = 1
while(i <= 5){
  sum = sum + i
  i = i + 1
}
sum

# ФУНКЦИИ
x = 5
foo = function(a){
  x = 4
  return(a+x)
}
foo(2)
x


# ЗАДАЧА 1

data = read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/Shares_price_ts.csv")
data

# графика на цените
plot(as.POSIXct(data$Timestamp), data$Price, type = "b")
# графика на цените с обемите
# ???

startdate = as.POSIXct("2012-01-12 12:00")
enddate = as.POSIXct("2012-01-12 14:00")
data$Timestamp = as.POSIXct(data$Timestamp)

data$Price[enddate >= data$Timestamp & data$Timestamp >= startdate]

# ЗАДАЧА 2 - to-do
