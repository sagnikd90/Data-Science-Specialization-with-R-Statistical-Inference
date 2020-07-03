### Data Science with R:Coursera

### Course Project

### Hypothesis Testing Exercise

### Question 2)

### Basic Inferential Data Analysis Instructions

library(datasets)
library(ggplot2)

dat<- as.data.frame(ToothGrowth)

head(dat)
names(dat)

dat$dose<- as.factor(dat$dose)

str(dat)
summary(dat)

table(dat$supp,dat$dose)

table(dat$len,dat$dose)

p1<- ggplot(dat, aes(x=dose,y=len,fill=dose)) + geom_boxplot() + theme(legend.position = "right") + facet_grid(.~supp)
p1

p2<- ggplot(dat, aes(x=supp,y=len,fill=supp)) + geom_boxplot() + theme(legend.position = "right") + facet_grid(.~dose)
p2

### Using confidence interval and hypothesis testing to compare between tooth growth by supplement and dose

### Hypothesis 1

### Hypothesis to check if there are statistically significant difference in the mean growth of length of tooth 
### according to the difference in the supplements

hyp1<- t.test(dat$len~dat$supp)
hyp1$conf.int
hyp1$p.value

###Hypothesis 2

### Hypothesis to check if there are statistically significant difference in the mean growth of length of tooth 
### according to the difference in the supplements when dose==0.5

hyp2<- t.test(len~supp,data = subset(dat,dose==0.5))
hyp2$conf.int
hyp2$p.value


###Hypothesis 3

### Hypothesis to check if there are statistically significant difference in the mean growth of length of tooth 
### according to the difference in the supplements when dose==1

hyp3<- t.test(len~supp,data = subset(dat,dose==1))
hyp3$conf.int
hyp3$p.value


###Hypothesis 4

### Hypothesis to check if there are statistically significant difference in the mean growth of length of tooth 
### according to the difference in the supplements when dose==2

hyp4<- t.test(len~supp,data = subset(dat,dose==2))
hyp4$conf.int
hyp4$p.value



