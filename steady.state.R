steady.state = function(lambda, mu, K)
{
  # Normal: lambda < mu:
  P_n <- c()
  rho <- c()
  P_n.dummy <- c()
  E_X.dummy <- c()
  E_X.dummy.2 <- c()
  E_X <- c()
  for (i in 0:K+1) {
    if (lambda < mu) {
      rho <- lambda/ mu
      P_n.dummy <- rho^(i-1)*(1-rho)/(1-rho^(i-1+1))
      P_n <- rbind(P_n, P_n.dummy)
    }
    
    else {
      rho <- mu/ lambda
      P_n.dummy <- -rho^(i-1)*(1-rho)/(1-rho^(i-1+1))
      P_n <- rbind(P_n, P_n.dummy)	
    }
  }
  
  for (i in 1:K+1) {
    E_X.dummy <- (i-1)*P_n[i]
    E_X.dummy.2 <- rbind(E_X.dummy.2, E_X.dummy)
    E_X <- sum(E_X.dummy.2)
  }
  
  output<-list(P_n,E_X)
  return(output)
  
}  
