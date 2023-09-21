library(nycflights13)

View(flights)

View(airlines)


#review data structure
glimpse(flights)

flights %>%
  filter(month==2) %>%
  count(carrier) %>%
  arrange(-n)%>%
  head(5) %>%
  left_join(airlines, by = "carrier")


#homework

#Top 5 The most destination
flights %>%
  count(dest) %>%
  arrange(-n) %>%
  head(5)

#The most flight to SYR
flights %>%
  select(flight,dest,carrier) %>%
  filter(dest=="SYR") %>%
  group_by(carrier) %>%
  summarise(flight=n()) %>%
  arrange(-flight) %>%
  left_join(airlines, by = "carrier")

#The most carrier to BQN destination
flights %>%
  select(flight,carrier,dest)%>%
  filter(dest=="BQN")%>%
  group_by(carrier) %>%
  summarise(dest=n()) %>%
  arrange(-dest) %>%
  left_join(airlines, by = "carrier")

#Total airtime each destination
flights %>%
  select(dest,air_time)%>%
  filter(air_time !="NA") %>%
  group_by(dest)%>%
  summarise(total_air_time = sum(air_time)) 


#Depart time with delay
flights %>%
  select(flight,carrier,dep_time,dep_delay)%>%
  mutate(dep_time_with_delay = dep_time + dep_delay) %>%
  group_by(flight) %>%
  left_join(airlines, by = "carrier") %>%
  head(5)



