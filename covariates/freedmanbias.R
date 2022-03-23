rm(list=ls())

set.seed(20140903)

# &nbsp;

avg.bhat = function(Y0,Y1,X,T, sims = 1000) {
  
  sapply(1:sims, function(j) {
    
    t = sample(T)
    
    adj.coef <- coef(lm((Y1*t+Y0*(1-t))~t+X))["t"]
    
    biv.coef <- coef(lm((Y1*t+Y0*(1-t))~t))["t"]
    
    cbind(adj.coef,biv.coef)
    
  })
  
}

# &nbsp;

avg.abs.bias = function(n, sims2 = 100){
  
  Y0 = 1:n
  
  Y1 = Y0+1
  
  T = 1*((1:n)<(n/2))
  
  return(rowMeans(sapply(1:sims2, function(j) abs(rowMeans(avg.bhat(Y0,Y1,rnorm(n),T))-1))))
  
}

# &nbsp;

n = 4:10

bias = sapply(n, avg.abs.bias) # this step may take a while

# &nbsp;

plot(n, bias[1,], col="red", type="b", ylab="Expected absolute bias", xlim=c(3,10))

lines(n, bias[2,], type="b", col="darkgreen")

legend(7,.6, c("With covs","Without covs"),
       
       lty=c(1,1),
       
       lwd=c(2.5,2.5),col=c("red","darkgreen"))
