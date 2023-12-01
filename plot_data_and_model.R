#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}
# Estimate of N0 was taken from model1 where we log transformed N, to use the figure from model1, we need to back transform the intercept using exp()
N0 <- exp(6.894) #
# Estimate of t from model1
r <- 0.01 #
# Estimate of intercept from model2
K <- 5.993e+10 #

# N on y-axis against t
plot1 <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()
plot1

# log10(N) on y-axis against t
plot2 <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() +

  scale_y_continuous(trans='log10')
plot2
# The red line is a good fit for the black dots indicating that our model is a good fit for the data and estimates of parameters are quite accurate

# Result: N0 = 986
# K = 5.993 x 10^10
# r = 0.01

sink(file = "package-versions.txt")
sessionInfo()
sink()
