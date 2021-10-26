#parable
x <- seq(1,5,0.01)
y_A <- sqrt(4*(x-1))
y_B <- -sqrt(4*(x-1))
xex <- 0
yex <- seq(-6,6,0.01)
xey <- seq(-5,5,0.01)
yey <- 0

dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df_A <- data.frame(x,y_A)
df_B <- data.frame(x,y_B)

x_c <- c(0,1,2)
y_c <- c(0,0,0)
df_c <- data.frame(x_c,y_c)
plot(df_c$x_c, df_c$y_c, pch = 20, xlim = c(-1,6), ylim = c(-5,5), xlab = "", ylab = "",cex = 0.8, col = "black", axes =TRUE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(df_A$x,df_A$y_A, lwd = 2, col = "blue")
lines(df_B$x,df_B$y_B, lwd = 2, col = "blue")
text(-0.2,-0.5, expression(bar(O)),  col = "black", cex = 0.8)
text(5.8,-0.4, expression(bar(x)),  col = "black", cex = 0.7)
text(-0.15,4.5, expression(bar(y)),  col = "black", cex = 0.7)
text(0.8,0.4, "V",  col = "black", cex = 0.7)
text(1.8,0.4, "F",  col = "black", cex = 0.7)