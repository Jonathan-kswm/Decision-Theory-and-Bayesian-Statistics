# Problem 1
# n = 20 iid bernoulli trials with theta prob of succsess
# y = 16 success, n-y =4 fails
# theta ~ Un(0,1)

# P(0.5 < theta < 0.75 | y)

set.seed(765)
nsamp <- 100000
theta <- rbeta(nsamp, 17, 5) # see lecture notes on Un prior
sum(theta > 0.5 & theta < 0.75) / nsamp

mean(theta)

median(theta)

quantile(theta, probs = c(0.025, 0.975))
