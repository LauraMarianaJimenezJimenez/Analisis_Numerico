//Quiz Integracion en python (sin error)
//Laura Mariana Jimenez

//Creacion de la funcion 
import math
def f(x):
    return(math.sqrt(x)*math.sin(x))
    
    
//Solucion trapecio simple
from funcion import f
def trapecio(a,b):
    return(b-a)*(f(a)+f(b))*(0.5)


//Solucion trapecio compuesto 
from trapecio import trapecio
def trapecio_compuesto(a,b,n):
    if(a>b):
        return trapecio_compuesto(b,a,n)
    if(n<0):
        return trapecio_compuesto(a,b,1000)
    i = 1
    x = a
    suma = 0.0
    h = (b-a)/n

    while(i<=n):
        if(x+h<=b):
            suma = suma + trapecio(x,x+h)
        i = i + 1
        x = x + h
    return suma

print(trapecio_compuesto(0,2,1000))
