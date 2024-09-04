## 5 Queries for NYC_flights ##

# 1. Which airline has the most arrival delay? #

flights %>% 
  select(carrier,arr_delay) %>%
  group_by(carrier) %>%
  summarize(sum_delay = sum(arr_delay,na.rm=TRUE)) %>%
  arrange(desc(sum_delay))

Answer: EV

# 2. Which months have the most delay? #

flights %>%
  select(month,day,arr_delay) %>%
  group_by(month) %>%
  summarize(most_delay_month = sum(arr_delay, na.rm = TRUE)) %>%
  arrange(desc(most_delay_month))

Answer: July


# 3. Which landed destination has the most air time averagely? (so we can give discount on fuel for them as they will fill up a lot of fuel)

flights %>%
select(air_time,dest) %>%
group_by(dest) %>%
summarize(mean_airtime = mean(air_time, na.rm=TRUE)) %>%
arrange(desc(mean_airtime)) 

Answer: HNL

# 4. Please provide each carrier's delay by quarter and by year #

Q1_delay <- flights %>% 
  select(month,carrier,dep_time) %>%
  filter(month==c(1,2,3)) %>%
  group_by(carrier) %>%
  summarize(sum_delay_Q1 = sum(dep_time, na.rm = TRUE))

Q2_delay <- flights %>% 
  select(month,carrier,dep_time) %>%
  filter(month==c(4,5,6)) %>%
  group_by(carrier) %>%
  summarize(sum_delay_Q2 = sum(dep_time, na.rm = TRUE))

Q3_delay <- flights %>% 
  select(month,carrier,dep_time) %>%
  filter(month==c(7,8,9)) %>%
  group_by(carrier) %>%
  summarize(sum_delay_Q3 = sum(dep_time, na.rm = TRUE))

Q4_delay <- flights %>% 
  select(month,carrier,dep_time) %>%
  filter(month==c(10,11,12)) %>%
  group_by(carrier) %>%
  summarize(sum_delay_Q4 = sum(dep_time, na.rm = TRUE))

Sum_Delay_23 <- Q1_delay %>% 
  inner_join(Q2_delay, by="carrier") %>%
  inner_join(Q3_delay, by="carrier") %>%
  inner_join(Q4_delay, by="carrier") %>%
  mutate(total_delay = rowSums(.[, 2:5]))


# 5. Which are the top 5 most frequent flight number throughout the whole year?

flights %>% 
  group_by(flight) %>%
  count() %>%
  arrange(desc(n))

Answer: Flight No. 15, 27, 181, 301, 161
