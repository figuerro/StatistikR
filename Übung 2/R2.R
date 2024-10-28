library(ggplot2)
install.packages("tidyverse")

library(tidyverse)

student1 <- tibble(
  student = c("Adam","Bernd","Christian","Doris"),
  algebra = c(NA, 5, 3, 4),
  analysis = c(2, NA, 1,3),
  diskrete.math = c(3,NA,2,4),
)
student2 <- tibble(
  name = rep(c("Adam", "Bernd", "Christian", "Doris"), each = 2),
  type = rep(c("height", "weight"), 4),
  measure = c(1.83, 81, 1.75, 71, 1.69, 55, 1.57, 62))
student3 <- tibble(
  name = c("Adam", "Bernd", "Christian", "Doris"),
  ratio = c("81/1.83", "71/1.75", "55/1.69", "62/1.57"))

#c

# student1
student1_tidy <- student1 %>%
  pivot_longer(cols = c(algebra, analysis, diskrete.math),
               names_to = "fach",
               values_to = "note")

# student2
student2_tidy <- student2 %>%
  pivot_wider(names_from = type, values_from = measure)

# student3
student3_tidy <- student3 %>%
  separate(ratio, into = c("gewicht", "groesse"), sep = "/", convert = TRUE) %>%
  mutate(ratio = gewicht / groesse)

#2
# Berechnung von sin(log(sqrt(5)+3))
sin(log(sqrt(5) + 3))

# Mit %>%
sqrt(5) + 3 %>% 
  log() %>% 
  sin()

# Vektor v und Berechnung der Summe
v <- seq(0.5, 5, by = 0.5)
v %>%
  .^2 %>%
  log() %>%
  round(digits = 2) %>%
  sum()

#3
library(tidyverse)

# Create the initial dataframe
df <- tibble(
  id = 1:10,
  sex = sample(x = c("f", "m"), size = 10, replace = TRUE),
  age = round(runif(10, 20, 35)),
  score1 = round(runif(10, 0, 25))
)

# Add a new student
df <- df %>%
  add_row(id = 11, sex = "m", age = 25, score1 = 24)

# Add two new score columns
df <- df %>%
  mutate(score2 = round(runif(11, 0, 25)),
         score3 = round(runif(11, 0, 25)))

# Calculate the total score
df <- df %>%
  mutate(score_sum = score1 + score2 + score3)

# Assign grades
df <- df %>%
  mutate(grade = case_when(
    score_sum >= 65 ~ 5,
    score_sum >= 55 ~ 4,
    score_sum >= 45 ~ 3,
    score_sum >= 37 ~ 2,
    TRUE ~ 1
  ))

# Find values of id, sex, and grade for students who passed (assuming a passing grade is 3 or above)
passed_students <- df %>%
  filter(grade >= 3) %>%
  select(id, sex, grade) %>%
  arrange(sex)

# Calculate summary statistics
summary_stats <- df %>%
  group_by(sex) %>%
  summarize(
    mean_score = mean(score_sum),
    min_score = min(score_sum),
    max_score = max(score_sum),
    median_score = median(score_sum)
  )

#4

#a)
# Anzahl der Studierenden pro Gruppe mit n()
exercise.results %>%
  group_by(group) %>%
  summarise(count = n())

# Gleiches Ergebnis mit count()
count(exercise.results, group)

#b)
# Ohne rowwise() (falsch)
exercise.results %>%
  mutate(sum_scores = sum(ex1:ex5),
         mean_scores = mean(ex1:ex5))

# Mit rowwise() (korrekt)
exercise.results %>%
  rowwise() %>%
  mutate(sum_scores = sum(ex1:ex5),
         mean_scores = mean(ex1:ex5))

