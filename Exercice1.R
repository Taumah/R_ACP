#On considère trois suites (un), (vn), (wn) telles que : un+1 = un + 2wn, vn+1 = −vn, wn+1 = 2un + wn,
#avec u0 = 1, v0 = 2, w0 = 3
#En utilisant la diagonalisation, exprimer un, vn, wn en fonction de n


install.packages("expm")
library(expm)


def = function(syst){
  # Xn = A^n * Xo
  #  A = PDP^-1
  # Xn = PD^nP^-1 * X0
  
  
  X0 = c(1,2,3)
  
  mat = eigen(syst)
  
  P = round(mat$vectors,2)
  D = diag(round(mat$values))
  inv_P = solve(P)
  
  
  print(P)
  print(D)
  print(inv_P)
  
  print(P %*% (D %^% 3) %*% inv_P%*% X0)
  
}

A = rbind( 
  c(1,0,2), 
  c(0,-1,0), 
  c(2,0,1))

A %^% 2

def(A)
