y=c(3, 3.7, 3.9, 4.5, 5.7, 6.69, 7.12, 6.7, 4.45, 7, 6.1, 5.6, 5.87, 5.15, 4.1, 4.3, 4.1, 3, 2.1, 2, 2.1, 2, 1.8, 2, 2, 1.8, 2, 2.5, 2, 3, 3, 2.8, 3.1)

x=c(1, 2, 5, 6, 7, 8.1, 10, 13, 17.6, 20, 24, 24.5, 25.5, 27.5, 28, 28.5, 29.5, 30.5, 29.5, 28.2, 26, 22, 18.5, 15, 14, 10.5, 8, 7.5, 8, 6, 6, 1.5, 1)

x = x * 2



y1 = y[1:4]  ; x1 = x[1:4]
y2 = y[4:6]  ; x2 = x[4:6]
y3 = y[6:9]  ; x3 = x[6:9]
y4 = y[9:12] ; x4 = x[9:12]     
y5 = y[12:15] ; x5 = x[12:15]
y6 = y[15:18] ; x6 = x[15:18]
y7 = y[18:21] ; x7 = x[18:21]
y8 = y[21:24] ; x8 = x[21:24]
y9 = y[24:27] ; x9 = x[24:27]
y10 = y[27:30] ; x10 = x[27:30]
y11 = y[30:33] ; x11 = x[30:33]


plot(x, 
     y,
     main = "Perrito",
     xlab = "eje X",
     ylab = "eje Y",
     xlim=c(0,70),
     ylim=c(1,15))

lines(spline(x1, y1, n = 500), col = "blue")
lines(spline(x2, y2, n = 500), col = "blue")
lines(spline(x3, y3, n = 500), col = "blue")
lines(spline(x4, y4, n = 500), col = "blue")
lines(spline(x5, y5, n = 500), col = "blue")
lines(spline(x6, y6, n = 500), col = "blue")
lines(spline(x7, y7, n = 500), col = "blue")
lines(spline(x8, y8, n = 500), col = "blue")
lines(spline(x9, y9, n = 500), col = "blue")
lines(spline(x10, y10, n = 500), col = "blue")
lines(spline(x11, y11, n = 500, ties = min), col = "blue")  
      
      