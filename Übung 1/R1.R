#Übung1 Aufgabe 1 Rstudio

#1
52.3+74.8+3.17

sqrt(144)

log(200, 10)

log(200, 10) * (pi/4)

cumsum(c(1,3,18,20,2))

sample(0:20, 10, replace = TRUE)

#2
x <- 5

y <- 10

x = 5

y = 10


x + y

z <- x * y
z

?vector
myvec <- c(x,y,z)
min(myvec)
max(myvec)
mean(myvec)
remove(myvec)

#3
rainfall <- c(0.1, 0.5, 2.3, 1.1, 11.3, 14.7, 23.4, 15.7, 0, 0.9)

mean_rainfall <- mean(rainfall)
sd_rainfall <- sd(rainfall)

cumulative_rainfall <- cumsum(rainfall) # cumulative rainfall over days

highest_rainfall_day <- which.max(rainfall)

rainfall_over_10 <- rainfall[rainfall > 10]

mean_rainfall_over_5 <- mean(rainfall[rainfall >= 5])

specific_days <- which(rainfall %in% c(0, 1.1)) #???????



