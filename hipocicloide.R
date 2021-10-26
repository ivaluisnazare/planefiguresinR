#hypocycloid

teta <- pi/4.8
tM <- seq(0,pi/2,0.01)
tm <- seq(0,2*pi,0.01)
R <-2
r <- 0.5
OB = (R-r)*cos(teta)
OD = (R-r)*sin(teta)

#______________________________
tet <- seq(0,teta,0.01)
A <-(R-r)*cos(tet)
b <- (R-r)/r
B <- r*cos(b*tet)
x <- A+B
C <- (R-r)*sin(tet)
D <- r*sin(b*tet)
y <- C-D
#_______________________________

xp <- c(0,OB,1.586706681, 1.009035)
yp <- c(0,OD,1.217522858, 0.4432997511 )

#_______________________________

rho <- seq(0,2,0.01)
xl1 <- rho*cos(pi/4.8)
yl1 <- rho*sin(pi/4.8)

#________________________________

xl2 <- seq(0, OB, 0.01 )
yl2 <- OD

#________________________________

xl3 <- c(OB,1.009035)
yl3 <- c(OD, 0.4432997511)

#________________________________

xl4 <- seq(0,OB, 0.01)
yl4 <- 0.4432997511

#________________________________

xl5 <- OB
yl5 <- seq(0,OD,0.01)

#________________________________

xl6 <- 1.009035 
yl6 <- seq(0,OD,0.01)
yl6 <- seq(0,OD,0.01)

#________________________________

xex <- 0
yex <- seq(-1,2.5,0.01)
xey <- seq(-4,2.5,0.01)
yey <- 0

xCM <- R*cos(tM) 
yCM <- R*sin(tM) 

xCm <- r*cos(tm) + OB 
yCm <- r*sin(tm) + OD
#______________________________

teta_m <- seq(4*pi/2.9, 7*pi/3.18,0.01)
xteta_m <- 0.2*cos(teta_m) + OB
yteta_m <- 0.2*sin(teta_m) + OD
#______________________________

teta_M <- seq(0, pi/4.8,0.01)
xteta_M <- 0.4*cos(teta_M) 
yteta_M <- 0.4*sin(teta_M)
#______________________________
dfCM <- data.frame(xCM, yCM )
dfCm <- data.frame(xCm, yCm )
dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df <- data.frame(x,y)
dfl1 <- data.frame(xl1,yl1)
dfl2 <- data.frame(xl2,yl2)
dfl3 <- data.frame(xl3,yl3)
dfl4 <- data.frame(xl4,yl4)
dfl5 <- data.frame(xl5,yl5)
dfl6 <- data.frame(xl6,yl6)
dfp <- data.frame(xp,yp)
dfteta_m <- data.frame(xteta_m, yteta_m)
dfteta_M <- data.frame(xteta_M, yteta_M)

plot(dfp$xp, dfp$yp, pch = 20, xlim = c(-0.5,3), ylim = c(-0.5,2.5), xlab = "", ylab = "",cex = 1.2, col = "black", axes =FALSE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(dfCM$xCM,dfCM$yCM, lwd = 2, col = "black")
lines(dfCm$xCm,dfCm$yCm, lwd = 2, col = "blue")
lines(df$x,df$y, lwd = 2, col = "red")
lines(dfl1$xl1,dfl1$yl1, lty=1, lwd = 2.2, col = "black")
lines(dfl2$xl2,dfl2$yl2, lty=3, lwd = 1.6, col = "black")
lines(dfl3$xl3,dfl3$yl3, lty=1, lwd = 2.2, col = "black")
lines(dfl4$xl4,dfl4$yl4, lty=3, lwd = 1.6, col = "black")
lines(dfl5$xl5,dfl5$yl5, lty=3, lwd = 1.6, col = "black")
lines(dfl6$xl6,dfl6$yl6, lty=3, lwd = 1.6, col = "black")
lines(dfteta_m$xteta_m,dfteta_m$yteta_m, lty=1, lwd = 2, col = "black")
lines(dfteta_M$xteta_M,dfteta_M$yteta_M, lty=1, lwd = 2, col = "black")
text(-0.08,-0.08, "O",  col = "black", cex = 0.7)
text(1.42,0.75, "t",  col = "black", cex = 0.7)
text(0.45,0.14, expression(italic(theta)) , col = "black", cex = 0.8)
text(-0.07,1, "D",  col = "black", cex = 0.7)
text(-0.07,0.52, "T",  col = "black", cex = 0.7)
text(1.009035,-0.1, "Q",  col = "black", cex = 0.7)
text(1.19003,-0.1, "B",  col = "black", cex = 0.7)
text(1.009035,1, "M",  col = "black", cex = 0.7)
text(1.19003,1.02, "O'",  col = "black", cex = 0.7)
text(0.92,0.35, "P",  col = "black", cex = 0.7)
text(2,-0.1, "P'",  col = "black", cex = 0.7)
text(1.26,0.51, "N",  col = "black", cex = 0.7)
text(1.59,1.34, "A",  col = "black", cex = 0.7)
text(2.5,-0.08, "x",  col = "black", cex = 0.7)
text(-0.05,2.45, "y",  col = "black", cex = 0.7)
text(0.1,2.1, "C",  col = "black", cex = 0.8)
text(1,1.5, "C'",  col = "blue", cex = 0.8)