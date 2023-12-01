# logistic_growth
R scripts for a reproducible analysis of logistic growth
Q1: Results from analysing the simulation data in experiment1.csv
N0 = 986
K = 5.993 x 10 ^10
R = 0.01

Q2: Population size at t=4980min according to the exponential growth model
N(t) = N0(1+r)^t
N(4980) = 986 x (1+0.01) ^ 4980 = 3.27 x 10 ^24
According to the logistic growth model, N = 5.993 x 10 ^10 at t = 4980 min
The population size predictd by exponential growth model at t=4980min is much larger than that predicted by the logistic growth model.
This is because the logistic growth model takes into account the slowing rate of population growth as N(t) approaches the carrying capacity K.