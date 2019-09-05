set.seed(1)
sims = 3

 outmat = sapply(1:sims,function(x){
  N0 = 1
  times = 50
  N = vector(length = times)

  bi = dbinom(0:2,2,1-exp(-100/(2*N0)))
  N[1] = N0*(sample(c(0,1,2),1,replace = FALSE,bi))

 sum(replicate(100,sample(c(0,1,2),1,replace = FALSE,bi)))

  for (t in 2:times) {
    bi = dbinom(0:2,2,1-exp(-100/(2*N[t-1])))
    N[t] = sum(replicate(N[t-1],(sample(c(0,1,2),1,replace = FALSE,bi))))
  }
   N
 })

matplot(1:times, outmat,type = "l",las = 1, ylab = "Population", xlab= "seasons")

