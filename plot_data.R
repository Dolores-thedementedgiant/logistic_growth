#Script to plot the logistic growth data

# Import data from simulation
growth_data <- read.csv("experiment1.csv")

# install packages 
install.packages("ggplot2")
library(ggplot2)

# Plot N against t over time
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

# Plot log10(N) against t over time 
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
