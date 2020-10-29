#Quiz de Integracion
#Laura Mariana Jimenez
#Consulta https://www.rdocumentation.org/packages/pracma/versions/1.9.9/topics/trapz

require(pracma)

f<-function(x) sqrt(x)*sin(x)

# Calculate the area under the sine curve from 0 to 2:

a = 0
b = 2 
n = b
tol = 0.0001
res = 0
e = 1

while(e > tol)
{
  n = n + 1
  x <- seq(0, 2, len = n)
  y <- f(x)
  res <- trapz(x, y)
  
  h  <- x[2] - x[1]
  ca <- (y[2]-y[1]) / h
  cb <- (y[n]-y[n-1]) / h
  
  e = abs(h^2/12 * (cb - ca))
}


cat("cantidad de trapecios: ", n, " Resultado de la aproximacion: ", res)
