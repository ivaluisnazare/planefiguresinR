# Hiperbole


teta <- seq(-pi/2, pi/2, 0.01)
a <- sqrt(39/8)
b <- sqrt(39/32)
xex <- 0
yex <- seq(-10,10,0.01)
xey <- seq(-5,5,0.01)
yey <- 0
#_______________________________________
x_d <- a*(1/cos(teta))
y <- b*tan(teta)

x_e <- -a*(1/cos(teta))
#_______________________________________
df_d <- data.frame(x_d,y)
df_e <- data.frame(x_e,y)
dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)

plot(0, 0, pch = 20, xlim = c(-10,10), ylim = c(-5,5), xlab = "", ylab = "",cex = 0.8, col = "black", axes =TRUE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(df_d$x_d,df_d$y, lwd = 2, col = "blue")
lines(df_e$x_e,df_e$y, lwd = 2, col = "blue")
text(9.5,-0.4, expression(bar(bar(x))),  col = "black", cex = 0.8)
text(-0.4,4.5, expression(bar(bar(y))),  col = "black", cex = 0.7)
text(-0.5,-0.5, expression(bar(bar(O))),  col = "black", cex = 0.7)