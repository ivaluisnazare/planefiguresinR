#epicycloid
teta <- pi/4
tM <- seq(0,pi/2,0.01)
tm <- seq(0,2*pi,0.01)
R <-1
r <- 0.5
OB = (R+r)*cos(teta)
OD = (R+r)*sin(teta)
#______________________________
tet <- seq(0,teta,0.01)
A <-(R+r)*cos(tet)
b <- (R+r)/r
B <- r*cos(b*tet)
x <- A-B
C <- (R+r)*sin(tet)
D <- r*sin(b*tet)
y <- C-D
#_______________________________

xp <- c(0,OB,1.414152 )
yp <- c(0,OD,0.6956867323)

xDM <- seq(0,1.414152,0.01)
yDM <- OD

xMQ <- 1.414152
yMQ <- seq(0,OD,0.01)

xTP <- seq(0,1.414152,0.01)
yTP <- 0.6956867323 

xO2B <- OB
yO2B <- seq(0, OD, 0.01)

xex <- 0
yex <- seq(-1,2)
xey <- seq(-4,2)
yey <- 0

xCM <- R*cos(tM) 
yCM <- R*sin(tM) 

xCm <- r*cos(tm) + OB 
yCm <- r*sin(tm) + OD

#_____________________________________
tmi <- seq(5*pi/4,11*pi/6.3,0.01)
xmi <- 0.2*cos(tmi) + OB 
ymi <- 0.2*sin(tmi) + OD
#______________________________________
tMi <- seq(0,pi/4,0.01)
xMi <- 0.3*cos(tMi) 
yMi <- 0.3*sin(tMi) 
#______________________________________

dfCM <- data.frame(xCM, yCM )
dfCm <- data.frame(xCm, yCm )
dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
df <- data.frame(x,y)
dfDM <- data.frame(xDM, yDM)
dfMQ <- data.frame(xMQ,yMQ)
dfTP <- data.frame(xTP,yTP)
dfO2B <- data.frame(xO2B,yO2B)
dfp <- data.frame(xp,yp)
dfmi <- data.frame(xmi,ymi)
dfMi <- data.frame(xMi,yMi)
plot(dfp$xp, dfp$yp, pch = 20, xlim = c(-0.5,2.5), ylim = c(-0.5,1.5), xlab = "", ylab = "",cex = 1.2, col = "black", axes =FALSE)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(dfCM$xCM,dfCM$yCM, lwd = 2, col = "black")
lines(dfCm$xCm,dfCm$yCm, lwd = 2, col = "blue")
lines(df$x,df$y, lwd = 2, col = "red")
lines(dfDM$xDM, dfDM$yDM, lty=3, lwd = 1.6 )
lines(dfMQ$xMQ, dfMQ$yMQ, lty=3, lwd = 1.6 )
lines(dfTP$xTP, dfTP$yTP, lty=3, lwd = 1.6 )
lines(dfO2B$xO2B, dfO2B$yO2B, lty=3, lwd = 1.6 )
lines(dfp$xp, dfp$yp, lty=1, lwd = 2.2 )
lines(dfmi$xmi,dfmi$ymi, lwd = 2, col = "black")
lines(dfMi$xMi,dfMi$yMi, lwd = 2, col = "black")
text(0.35,0.14, expression(italic(theta)) , col = "black", cex = 0.8)
text(1.1,0.8, "t",  col = "black", cex = 0.7)
text(-0.08,-0.08, "O",  col = "black", cex = 0.7)
text(-0.07,1.12, "D",  col = "black", cex = 0.7)
text(-0.07,0.75, "T",  col = "black", cex = 0.7)
text(1.4,1.15, "M",  col = "black", cex = 0.7)
text(1.1,1.15, "O'",  col = "black", cex = 0.7)
text(0.96,-0.1, "P'",  col = "black", cex = 0.7)
text(1.1,-0.1, "B",  col = "black", cex = 0.7)
text(1.4,-0.1, "Q",  col = "black", cex = 0.7)
text(1.5,0.6, "P",  col = "black", cex = 0.7)
text(1.11,0.635, "N",  col = "black", cex = 0.7)
text(0.48,0.94, "C",  col = "black", cex = 0.8)
text(1.4,1.52, "C'",  col = "blue", cex = 0.8)
text(0.7,0.635, "A",  col = "black", cex = 0.8)
text(2,-0.05, "x",  col = "black", cex = 0.8)
text(-0.04,1.55, "y",  col = "black", cex = 0.8)