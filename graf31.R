#
xex <- 0
yex <- seq(-5,23)
xey <- seq(-12,3)
yey <- 0

xr <- seq(-0.7,2.7,0.1)
yr = xr

t <- seq(0,2*pi,0.0001)
tc <- 2*cos(t)
r <- 2+tc
x<- r*cos(t)
y<- r*sin(t)
df <- data.frame(x,y)
dfex <- data.frame(xex,yex)
dfey <- data.frame(xey,yey)
dfr <- data.frame(xr,yr)

plot(0,0, pch = 20, xlim = c(-0.5,4), ylim = c(-2.5,2.5), xlab = "x", ylab = "y",cex = .8, col = "black" ) 
lines(df$x,df$y, lwd = 2, col = "blue")
lines(dfex$yex,dfex$xex,  lwd = 1)
lines(dfey$yey,dfey$xey, lwd = 1 )
lines(dfr$xr,dfr$yr, lwd = 2, col = "red" )
text(0.3,-0.3, "O", font = 25 , cex = 0.6)
text(3.4,2, "C1", font = 25 , cex = 0.6, col = "blue")
text(1,1.3, "C2", font = 25 , cex = 0.6, col = "red")