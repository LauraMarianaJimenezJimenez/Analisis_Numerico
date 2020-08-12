#-------------------------------------------------------------------------------

coseno <- function()
{
  teorico <- cos(0.01)
  error <- 1e-9
  exponente <- 2
  experimental <- 0
  conta <- 0
  k <- abs((experimental-teorico)/teorico)
 
  while ( k > error)
  {
    conta <- conta + 1
    
    if ((conta %% 2) > 0)
    {
      experimental = experimental - ((0.01)^exponente)/factorial(exponente)
      cat('experi 1 ', experimental)
    }
    else 
    {
      experimental = experimental + ((0.01)^exponente)/factorial(exponente) 
      cat('experi 2 ', experimental)
    }
    
    experimental = experimental + 1
    
    k <- abs((experimental-teorico)/teorico)
  }
  cat("Teorico", teorico, "\n")
  cat("Experimental", experimental, "\n")
  cat("Tolerancia", error, "\n")
  cat("Error Relativo", k, "\n")
  cat("Error Absoluto", abs(experimental-teorico), '\n')
  cat("Iteraciones", conta, "\n")
  
}

#-------------------------------------------------------------------------------

euler <- function(x)
{
  options(digits = 8)
  error <- 1e-8
  teorico <- exp(x)
  experimental <- 0.5
  exponente = 0
  conta = 0
  K <- abs((experimental - teorico)/teorico)
  while ( K > error)
  {
    conta = conta + 1
    if(conta == 1)
    {
      experimental = (x^exponente)/factorial(exponente)
      
    }
    else
    {
      experimental = experimental + ((x^exponente)/factorial(exponente))  
    }
    
    K <- abs((experimental - teorico)/teorico)
    exponente = exponente + 1
  }
  
  cat (" Valor: ", x )
  cat (" Teorico: ", teorico)
  cat (" Experimental: ", experimental)
  cat (" Iteraciones: ", conta)
  cat (" Error Absoluto: ", K)
  cat (" Error Relativo: ", abs(experimental - teorico))
  cat ("\n")
  cat ("\n")
  
}


ejercicio_dos <- function()
{
  i = -1
  while (i <= 1)
  {
    euler (i)
    i = i + 0.1
  }
  
}


#-------------------------------------------------------------------------------


errorAritmetica <- function()
{
  velocidad <- 4
  errorV <- 0.1
  tiempo <- 5
  errorT <- 0.1
  
  velocidadMin <- velocidad - errorV
  velocidadMax <- velocidad + errorV
  tiempoMin <- tiempo - errorT
  aux <- tiempo - errorT
  tiempoMax <- tiempo + errorT
  teorico <- velocidad * tiempo
  conta <- 0
  while(velocidadMin <= velocidad + errorV)
  {
    while(tiempoMin <= tiempo + errorT)
    {
      experimental <- tiempoMin * velocidadMin
      errorRela <- (abs(experimental-teorico)/teorico)
      errorAbs <- (abs(experimental - teorico))
      
      cat("Velocidad: ", velocidadMin, "Tiempo: ", tiempoMin, "Distancia: ", experimental, "ErrorAbsoluto: ", errorAbs, "Error Relativo: ", errorRela, "\n")
      cat("\n")
      tiempoMin <- tiempoMin + errorT 
    }
    
    tiempoMin <- aux
    velocidadMin <- velocidadMin + errorV
    
  }
  
}

#-------------------------------------------------------------------------------


#errorAritmetica()
#coseno()
#ejercicio_dos()