#coplanar lines

x <- seq(-3,3,0.01)
xex <- 0
yex <- seq(-2,2,0.01)
xey <- seq(-2,2,0.01)
yey <- 0

y_1 <- -3*x
y_2 <- -x

dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df_1 <- data.frame(x,y_1)
df_2 <- data.frame(x,y_2)

plot(0, 0, pch = 20, xlim = c(-2,2), ylim = c(-2,2), xlab = "", ylab = "",cex = 0.8, col = "black", axes =TRUE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(df_1$x,df_1$y_1, lwd = 2, col = "blue")
lines(df_2$x,df_2$y_2, lwd = 2, col = "red")
text(-0.1,-0.16, expression(bar(O)),  col = "black", cex = 0.8)
text(1.95,-0.12, expression(bar(x)),  col = "black", cex = 0.7)
text(-0.07,1.8, expression(bar(y)),  col = "black", cex = 0.7)
text(-0.55,2, "r",  col = "blue", cex = 0.8)
text(-1.8,2, "s",  col = "red", cex = 0.8)
