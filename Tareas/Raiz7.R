n <- 7
E <- 1e-9
X <- 2
Y <- (X + n / X) / 2

conta <- 0
K = (abs(X - Y)/Y)

while ( K > E)
{
  X <- Y
  Y <- (X + n / X) / 2
  conta = conta + 1
  K <- (abs(X - Y)/Y)
}

cat("Valor Real: ", sqrt(7), "Aproximacion: ", Y, "iteraciones: ", conta, "error: " , K , ".\n")
