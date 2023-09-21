#load library
library(tidyverse)

View(diamonds)

head(mtcars)

#first plot
ggplot(data = mtcars,
       mapping = aes(x = mpg))+
  #การแสดงผล
  #bins hyper parameters เปลี่ยนหน้าตา chrt
  geom_histogram(bins=5)


#2 variable discrete
base2 <- ggplot(mtcars,aes(x=hp,y=mpg))

base2 + geom_point()


# 2 vairable ,1 discrete, 1 continuous
ggplot(diamonds,
       aes(x=cut, y=price)) + 
       geom_boxplot()
#summarize data => build geom_col
agg <- diamonds %>%
  group_by(cut) %>%
  summarise(med_price = median(price))

ggplot(agg,
       aes(cut,med_price)) +
       geom_col()


#ggplot()
##overplotting

ggplot(sample_n(diamonds,5000),
       aes(carat,price))+
  geom_point(alpha=0.5)


#lock result sudo random
set.seed(42)
#sample 8 %
#use color palette
ggplot(sample_frac(diamonds,0.08),
       aes(carat,price, col=cut))+
  geom_point(alpha=0.5) +
  theme_minimal() +
  scale_color_brewer(type="seq",
                     palette = 1)


ggplot(sample_frac(diamonds,0.08),
       aes(carat,price, col=price))+
  geom_point(alpha=0.5) +
  theme_minimal() +
  scale_color_gradient(low = "gold",
                       high = "blue")

###highlight facet
#segment our charts into groups
ggplot(sample_frac(diamonds,0.08),
       aes(carat,price, col=price))+
  geom_point(alpha=0.5) +
  theme_minimal() +
  scale_color_gradient(low = "gold",
                       high = "blue") +
  #separate big chart into small
  facet_wrap(~cut,ncol=1)


#label
ggplot(mtcars,aes(hp,mpg))+
  geom_point() +
  theme_minimal()+
  labs(
    title = "My first scatter plot",
    subtitle = "Awesome work!",
    x = "horse Power",
    y = "Miles per Gallon",
    caption = "Source: R Studio"
  )


library(ggthemes)

ggplot(diamonds,aes(cut,fill=color))+
  geom_bar(position= "fill")+
  theme_wjs()

