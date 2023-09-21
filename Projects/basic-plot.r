library(tidyverse)

#basic plot (base R)

##analyzing horse power

hist(mtcars$hp)
mean(mtcars$hp)
median(mtcars$hp)

str(mtcars)

#change to factor
mtcars$am <- factor(mtcars$am,
                    levels = c(0,1),
                    labels = c("auto","Manual"))

##Bar Plot - One Qualitative Variable
barplot(table(mtcars$am))

##Box plot
##use single  qualative
boxplot(mtcars$hp)
fivenum(mtcars$hp)

#wjosler calculation
Q3 <- quantile(mtcars$hp, probs = .75)
Q1 <- quantile(mtcars$hp, probs = .25)
IQR_hp <- Q3 - Q1

#top arm
Q3 + 1.5*IQR_hp
#bottom arm
Q1 + 1.5*IQR_hp


boxplot.stats(mtcars$hp,coef =1.5)
