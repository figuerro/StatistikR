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

#4

lengths <- c(2.5, 3.4, 4.8, 3.1, 1.7)  # in cm
diameters <- c(0.7, 0.4, 0.5, 0.5, 0.9)  # in cm


volumes_cm3 <- pi * (diameters / 2)^2 * lengths  # in cubic cm


volumes_mm3 <- volumes_cm3 * 1000  # 1 cubic cm = 1000 cubic mm

volumes_mm3 

#5

x <- c(1,2,3,4,5)
y <- c(3,5,7,9)

intersect(x,y) #1
setdiff(x,y) #2
setdiff(y,x) #2
union(x, y)#3 Vereinigung

c(x,y) #union macht ne mathe Vereinigung und c(x,y) fast nur zusammen

#6
matrix_data <- matrix(0, nrow = 8, ncol = 10)
matrix_data[1, ] <- seq(0, 18, by = 2)

matrix_data[2:8, ] <- matrix(as.integer(runif(70, min = 0, max = 11)), nrow = 7)

row_means <- rowMeans(matrix_data)
std_dev_row_means <- sd(row_means)

sub_matrix <- matrix_data[2:8, ]
column_means <- colMeans(sub_matrix)
hist(column_means, main = "Histogram of Column Means", xlab = "Column Means", col = "lightblue")

#7
install.packages("ggplot2")
library(ggplot2)

# Part (a):
mpg_data <- mpg
str(mpg_data)  # Display structure of mpg dataset
summary(mpg_data)  # Summary of mpg dataset

# Part (b):
sapply(mpg_data, class)  # Shows data types of each variable
categorical_vars <- names(mpg_data)[sapply(mpg_data, is.factor)]
continuous_vars <- names(mpg_data)[sapply(mpg_data, is.numeric)]

#8
# Creating the list for the family with names of parents and ages of children
family <- list(father = "John", mother = "Mary", children_ages = c(4, 6, 10))
family

# Creating a list for the names of the children
children_names <- list(children_names = c("Bob", "Cate", "Susan"))
children_names

# Concatenating lists using c()
concatenated_c <- c(family, children_names)

# Concatenating lists using list()
concatenated_list <- list(family, children_names)

# Displaying results to observe differences
concatenated_c
concatenated_list #????????

# Assuming each child corresponds to the age in the same position:
# Names are "Bob", "Cate", "Susan", and ages are 4, 6, 10
child_list <- list(
  child1 = list(name = concatenated_c$children_names[1], age = concatenated_c$children_ages[1]),
  child2 = list(name = concatenated_c$children_names[2], age = concatenated_c$children_ages[2]),
  child3 = list(name = concatenated_c$children_names[3], age = concatenated_c$children_ages[3])
)

# Display the list for each child with name and age
child_list



