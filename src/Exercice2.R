#1. Soit f définie sur R2 par f(x, y) = exy − ex + 2. Déterminer les éventuels extrema de f. Faire un
#tracé sur [0, 2]2
#2. Soit g définie sur R3 par g(x, y, z) = (x + z2)ex(y2+z2+1). Déterminer les extrema de g.

#3. Soit h définie sur ]0, +∞[3 par h(x, y, z) = ln(xyz) − ln(x) ln(y) ln(z). Déterminer les éventuels
#extrema de h.



f = function(x,y){
#  return( exp(x*y) - exp(x) + 2)
  return(x*2)  
}

fBloc = function(data){
  res = c()
  count = 0
  for (number in data) {
    res[count] = f(number)
    count = count + 1
  }
}

print(f)
print(f(2))

test = D(expression(f),"x")
print(test)
test = D(expression(x*2),"x")
print(test)


plot(seq(0,2), cos(seq(0,2)))


funcToGraph = function(data , func){
  plot(data , func(data), 
       main = "title",
       ylab = "Y label",
       xlab = "X label",
       type = "l"
       )
}

funcToGraph(seq(0,20) , fBloc )