#toriod

t <- seq(0,2*pi,0.01)
r <- 1
R <- 2
xex <- 0
yex <- seq(-1,4)
xey <- seq(-4,3)
yey <- 0

x1 <- r*cos(t) 
y1 <- r*sin(t) +1

x2 <- r*cos(t) + 2.5
y2 <- r*sin(t) +1

xl1 <- seq(-1,4,0.01)
yl1 <- 1

xop <- c(0.671368150  , 2.5)
yop <- c(2.240723224, 1)

teta <- seq(-pi,3*pi/2,0.01)
xti <- r*teta -R*sin(teta) 
yti <- r-R*cos(teta)

trx1 <- 0.671368150 
try1 <- seq(0,2.240723224,0.01)

trx2 <- 2.5 
try2 <- seq(0,2.240723224,0.01)

trx3 <- seq(0,2.5,0.01) 
try3 <- 2.240723224

te <- seq(2*pi/2.51,3*pi/2,0.01)
xt2 <- 0.2*cos(te) + 2.5
yt2 <- 0.2*sin(te) +1

xp <- c(0,0,0.671368150,2.5,0.671368150,0.671368150)
yp <- c(-1,2.240723224, 2.240723224,2.240723224,0,1)

xpp <- c(0,2.5,2.5)
ypp <- c(1,1,0)

df1 <- data.frame(x1,y1)
df2 <- data.frame(x2,y2)
dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
dft <- data.frame(xti,yti)
dfl <- data.frame(xl1,yl1)
dfop <- data.frame(xop,yop)
dftr1 <- data.frame(trx1,try1)
dftr2 <- data.frame(trx2,try2)
dftr3 <- data.frame(trx3,try3)
dft2 <- data.frame(xt2,yt2)
dfp <- data.frame(xp,yp)
dfpp <- data.frame(xpp,ypp)

plot(dfpp$xpp,dfpp$ypp, pch = 20, xlim = c(-2,4), ylim = c(-1.5,4), xlab = "", ylab = "",cex = 1.2, col = "black", axes =FALSE)
points(dfp$xp,dfp$yp, pch = 20 , cex = 1.2, col = "red")
lines(df1$x1,df1$y1, lwd = 2, col = "blue")
lines(df2$x2,df2$y2, lwd = 2, col = "blue")
lines(dft$xti,dft$yti, col = "red", lwd = 2.5)
lines(dfop$xop,dfop$yop, col = "black", lwd = 2.5)
lines(dftr1$trx1, dftr1$try1,lty=3, lwd = 1.6 )
lines(dftr2$trx2, dftr2$try2,lty=3, lwd = 1.6 )
lines(dftr3$trx3, dftr3$try3,lty=3, lwd = 1.6 )
lines(dft2$xt2, dft2$yt2,lty=1, lwd = 1.6 )
lines(dfl$xl1,dfl$yl1)
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
text(-0.1,-0.12, "O", font = 25 , cex = 0.8)
text(0.16,0.8, "O'", font = 25 , cex = 0.8)
text(2.7,0.8, "O''", font = 25 , cex = 0.8)
text(2.24,0.88, "t", font = 25 , cex = 0.8)
text(0.85 ,-0.2, "Q", font = 25 , cex = 0.8)
text(2.5,-0.2, "A", font = 25 , cex = 0.8)
text(2.5,2.4, "N", font = 25 , cex = 0.8)
text(0.671368150,2.4, "P", font = 25 , cex = 0.8)
text(0.53,1.15, "M", font = 25 , cex = 0.8)
text(-0.1,2.4, "T", font = 25 , cex = 0.8)
text(0.55,-1.25, "(0,r - R)", font = 25 , cex = 0.8)
text(-1,1.7, "C'", font = 25 , cex = 0.8)
text(3.5,1.7, "C''", font = 25 , cex = 0.8)
text(4,-0.15, "x", font = 25 , cex = 0.8)
text(-0.1,3, "y", font = 25 , cex = 0.8)
text(-1,0.1, "s", font = 25 , cex = 0.8)
text(4,1.2, "y=r", font = 25 , cex = 0.8)