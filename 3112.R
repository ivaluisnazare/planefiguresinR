#Cassegrain's telescope

x_h <- seq(-0.18,0.18,0.01)
x_p <- seq(-0.45,0.45,0.01)
x_R <- seq(-0.11,0,0.01)
x_Rp <- seq(-0.2,-0.11,0.01)
a <- 0.1
b <- 0.2
k_d <- 4*sqrt(a^2+b^2)
c <- k_d/4
k <- 1/k_d
x_r <- -0.2
y_r <- seq(0.45, 0.05, -0.001)
y_R <- 1.986068*x_R + 0.4472136
y_Rp <- 1.986068*x_Rp + 0.4472136

x_Rf <- c(-0.11,0)
y_Rf <- c(1.986068*(-0.11) + 0.4472136, -2*c) 

x_f <- c(0,0)
y_f <- c(2*c,-2*c)
y_ha <- (a/b)*sqrt(x_h^2+b)
y_hb <- -(a/b)*sqrt(x_h^2+b)
y_p <- k*x_p^2
xex <- 0
yex <- seq(-2.5,2.5,0.01)
xey <- seq(-2.5,2.5,0.01)
yey <- 0

dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df_h <- data.frame(x_h,y_ha)
df_hb <- data.frame(x_h,y_hb)
df_p <- data.frame(x_p,y_p)
df_f <- data.frame(x_f,y_f)
df_r <- data.frame(x_r,y_r)
df_R <- data.frame(x_R,y_R)
df_Rp <- data.frame(x_Rp,y_Rp)
df_Rf <- data.frame(x_Rf,y_Rf)

plot(df_f$x_f, df_f$y_f, pch = 20, xlim = c(-0.45,0.45), ylim = c(-0.5,0.5), xlab = "", ylab = "",cex = 0.8, col = "black", axes =FALSE)
     
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(df_h$x_h,df_h$y_ha, lwd = 2.2, col = "red")
lines(df_hb$x_h,df_hb$y_hb, lwd = 2.2, lty=3, col = "red")
lines(df_p$x_p,df_p$y_p, lwd = 2.2, col = "blue")
lines(df_r$x_r,df_r$y_r, lwd = 1.6, col = "black")
lines(df_R$x_R,df_R$y_R, lwd = 1.6, lty=3, col = "black")
lines(df_Rp$x_Rp,df_Rp$y_Rp, lwd = 1.6, lty=1, col = "black")
lines(df_Rf$x_Rf,df_Rf$y_Rf, lwd = 1.6, lty=1, col = "black")
text(0.025,-0.025,"O",  col = "black", cex = 0.7)
text(0.05,0.45,"F '",  col = "black", cex = 0.6)
text(0.05,-0.45,"F",  col = "black", cex = 0.6)
text(-0.2,0.48,"P",  col = "black", cex = 0.6)
text(-0.2,0.02,"R",  col = "black", cex = 0.6)
text(-0.08,0.2,"Q",  col = "black", cex = 0.6)
text(0.3,0.45,"Parable",  col = "blue", cex = 0.6)
text(0.3,0.4,"Hyperbole",  col = "red", cex = 0.6)

