library(tidyverse)
View(diamonds)

set.seed(45)
ggplot(sample_frac(diamonds,0.05),
       aes(cut,fill=color))+
  geom_bar(position="stack",alpha=0.8) +
  theme_minimal()


set.seed(40)
ggplot(sample_frac(diamonds,0.02),
       aes(depth,price,col=color))+
  geom_boxplot(scale = "area") 


ggplot(sample_frac(diamonds,0.08),
       aes(carat,price, col=clarity))+
  geom_point(alpha=0.5) +
  theme_minimal()+
  labs(
    x = "Price",
    y = "Carat",
  )

ggplot(sample_frac(diamonds,0.08),
       aes(carat,price, col=depth))+
  geom_point(alpha=0.5) +
  theme_minimal() +
  scale_color_gradient(low = "gold",
                       high = "blue") +
  facet_wrap(~cut,ncol=1)


set.seed(40)
ggplot(sample_frac(diamonds,0.02),
       aes(color,price,color=color))+
  theme_minimal() +
  geom_jitter() 
  
