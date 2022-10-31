library(dslabs)
data(murders)

murders <- mutate(murders, rate = total/population * 10^5)

#filter
filter(murders, rate <= 0.71)

filter(murders, region == "South", rate <= 5, total >100)

#select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

#Operator pipe
new_df_2 <- murders %>% 
  select(state, region, rate) %>%
  filter(region == "South")

#sum
library(dplyr)
library(dslabs)
data("heights")

s = height %>% 
  filter(sex == "Female") %>%
  summarise(average = mean(height), standard_deviation = sd(height))
  
average standard_deviation

murders %>%
  group_by(state) %>%
  summarise(rata_rata = mean(population))

murders %>%
  arrange(region, desc(population), total)
  head()

  murders %>%
    arrange(region, desc(population)) %>%
  top_n(5) #top_n tidak disarankan digunakan



