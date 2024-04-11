library(datasets)
data("mtcars")
View(mtcars)
head(mtcars,5)
?mtcars

# Create scatter plot for disp vs mpg

library(ggplot2)
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon")+ labs(x = "Displacement", y = "Miles per Gallon")


#make vs a factor
mtcars$vs = as.factor(mtcars$vs)

# create box plot of the istribution for a v-shaped and staright line engline
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#adding colour to the box to differentiate
ggplot(aes(x=vs, y=mpg, fill=vs), data = mtcars) + geom_boxplot(alpha=1.5) +theme(legend.position = "none")

#Histogram of weight (wt)
ggplot(aes(x=wt), data=mtcars) + geom_histogram(binwidth=0.5)

View(mtcars)
