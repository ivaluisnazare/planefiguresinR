#circle translation

t <- seq(0,2*pi,0.01)
r <- 2
x <- r*cos(t)
y <- r*sin(t)
xex <- 0
yex <- seq(-2.5,2.5,0.01)
xey <- seq(-2.5,2.5,0.01)
yey <- 0

dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df <- data.frame(x,y)

plot(0, 0, pch = 20, xlim = c(-2.5,2.5), ylim = c(-2.5,2.5), xlab = "", ylab = "",cex = 0.8, col = "black", axes =TRUE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(df$x,df$y, lwd = 2, col = "blue")
text(-0.2,-0.2, expression(bar(O)),  col = "black", cex = 0.8)
text(2.4,-0.15, expression(bar(x)),  col = "black", cex = 0.7)
text(-0.1,2.4, expression(bar(y)),  col = "black", cex = 0.7)

