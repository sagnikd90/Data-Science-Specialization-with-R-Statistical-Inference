### Data Science with R:Coursera

### Course Project

### Simulation exercise

### Question 1)

### Generating an exponential distribution

set.seed(100)

lambda<- 0.2

### number of samples

n<- 40

### number of simulations

sim<- 1000

### simulated data

sim_data<- replicate(sim, rexp(n,lambda))

### mean of the simulated distribution

mean_simp<- apply(sim_data,2,mean)

### Question 1

### Comparing the sample mean to the mean of the distribution

### Smaple Mean

sample_mean<- mean(mean_simp)
sample_mean

### Population Mean

pop_mean<- 1/lambda
pop_mean

### Visualizing the sampling and the population distributions

hist(mean_simp, xlab = "mean", main = "Simulated Exponential Distribution") 
abline(v=4.999702, col="red", lwd=2)
abline(v=5, col="blue",lwd=2)


### Question 2

### Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.

### standard deviation of the means of the simulated sample distribution

std_sim_dist<- sd(mean_simp)
std_sim_dist

### Standard deviation of the population

std_pop_dist<- (1/lambda)/sqrt(n)
std_pop_dist


### Variance of the means of simulated sample distribution

var_sim_dist<- (std_simp_dist)^2
var_sim_dist

### Variance of the population distribution

var_pop_dist<- ((1/lambda)*(1/sqrt(n)))^2
var_pop_dist


### Show that the distribution is approximately normal.

xfit <- seq(min(mean_simp), max(mean_simp), length=100)
yfit <- dnorm(xfit, mean=1/lambda, sd=(1/lambda/sqrt(n)))

hist(mean_simp,breaks=n,prob=T,col="red",xlab = "means",main="Density of means",ylab="density")
lines(xfit, yfit, pch=20, col="black", lty=5)


### Comparing the average of the 40 exponentials to a normal distribution

qqnorm(mean_simp)
qqline(mean_simp,col=4)


