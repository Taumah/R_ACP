#1. Soit f définie sur R2 par f(x, y) = exy − ex + 2. Déterminer les éventuels extrema de f. Faire un
#tracé sur [0, 2]2
#2. Soit g définie sur R3 par g(x, y, z) = (x + z2)ex(y2+z2+1). Déterminer les extrema de g.

#3. Soit h définie sur ]0, +∞[3 par h(x, y, z) = ln(xyz) − ln(x) ln(y) ln(z). Déterminer les éventuels
#extrema de h.


install.packages("Deriv")

f = function(x,y){
  return( exp(x*y) - exp(x) + 2)
}

test = Deriv(f)
