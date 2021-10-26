#Ellipse translation

theta <- seq(0,2*pi, 0.01)

a <- sqrt(193/1152)
b <- sqrt(193/2048)


x <- a*cos(theta)
y <- b*sin(theta)
xex <- 0
yex <- seq(-0.5,0.5,0.01)
xey <- seq(-0.5,0.5,0.01)
yey <- 0

dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df <- data.frame(x,y)

plot(0, 0, pch = 20, xlim = c(-0.5,0.5), ylim = c(-0.5,0.5), xlab = "", ylab = "",cex = 0.8, col = "black", axes =TRUE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(df$x,df$y, lwd = 2, col = "blue")
text(0.47,-0.035, expression(bar(bar(x))),  col = "black", cex = 0.7)
text(-0.02,0.45, expression(bar(bar(y))),  col = "black", cex = 0.7)
text(-0.03,-0.05, expression(bar(bar(O))),  col = "black", cex = 0.8)