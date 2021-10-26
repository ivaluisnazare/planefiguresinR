#toriod

teta <- seq(-pi,3*pi/2,0.01)
r1 = 1
R1 = 0.5
x1<- r1*teta -R1*sin(teta) 
y1 <- r1-R1*cos(teta)

r2 = 1
R2 = 1
x2<- r2*teta -R2*sin(teta) 
y2 <- r2-R2*cos(teta)

r3 = 1
R3 = 1.5
x3<- r3*teta -R3*sin(teta) 
y3 <- r3-R3*cos(teta)

df1 <- data.frame(x1,y1)
df2 <- data.frame(x2,y2)
df3 <- data.frame(x3,y3)

plot(0,0, pch = 20, xlim = c(-2,2), ylim = c(-1,3), xlab = "", ylab = "",cex = 1.2, col = "black", axes =TRUE)
lines(df1$x1,df1$y1, lwd = 2, col = "blue")
lines(df2$x2,df2$y2, lwd = 2, col = "red")
lines(df3$x3,df3$y3, lwd = 2, col = "green")
text(-0.1,-0.12, "O", font = 25 , cex = 0.8)
text(-1.7,1, "R < r", font = 25 , cex = 0.8, col = "blue")
text(-1.7,1.5, "R = r", font = 25 , cex = 0.8, col = "red")
text(-1.7,2, "R > r", font = 25 , cex = 0.8, col = "green")

