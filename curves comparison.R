install.packages("ggplot2")
library(ggplot2)

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

exponential_fun <- function(t) {
  
  N <- N0*(1+r)^t
  
  return(N)
  
}

N0 <- exp(6.894) #

r <- 0.01 #

K <- 5.993e+10 #

# Plot exponential and logistic curves with the same parameters
comp <- ggplot() +
  geom_function(fun = logistic_fun, aes(colour="Logistic"), linewidth=0.75 ) +
  geom_function(fun = exponential_fun, aes(colour="Exponential"), linewidth=0.75) +
  scale_x_continuous(limits = c(0, 5000)) +
  scale_y_continuous(limits = c(0, 6e+10)) + labs(x="time(min)", y="N (no. of cells)") +
  geom_label()

comp   

ggsave("comparison.png", plot=comp)