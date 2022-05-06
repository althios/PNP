library(Rmpfr)
n=190
zy=rep(0,n)
zy3=rep(0,n)
zdiff=rep(0,n)
for(steps in 1:n){
y=rep(0,200)
for(j in 1:50){
  a=(proc.time()[1])
plot.new() 
lines(c(0.025*20,0.025*21),c(0.4,0.4),col="Black")
 
y[j]=proc.time()[1]-a

}
hist(y)
mean(y)
y2=rep(0,200)
 
for(j in 1:50){
  a=(proc.time()[1])
 
plot.new()  
points((0.025*1:20),c(rep(0.4,20)),col="black",pch=1)
points((0.025*1:19),c(rep(0.4,19)),col="white",pch=1)   

 
y2[j]=(proc.time()[1]-a)
  
}

mean((y)[1:200]) 
mean(y[1:200])-mean((y2)[1:200])
 
y3=rep(0,200)

for(j in 1:50){
  a=(proc.time()[1])
  
  plot.new()  
  lines(c(0.025*1,0.025*21),c(0.4,0.4),col="black",pch=1)
  lines(c(0.025*1,0.025*20),c(0.4,0.4),col="white",pch=1)   
  
  
  y3[j]=(proc.time()[1]-a)
  
}

zy[steps]=mean((y)[1:200]) 
zy3[steps]=mean(y3[1:200])
zdiff[steps]=mean(y[1:200])-mean((y3)[1:200])
}
par(mfrow=c(1,1))

hist(zy*50000,breaks=25)
 
curve(390*dchisq(x-2,36),add=T) 
 
hist(zy3*50000,breaks=25)
curve(390*dchisq(x-2,36),add=T) 

hist((zy-zy3)*50000,breaks=25)
curve(dt(x,5),add=T)
a=rep(0,77)
b=rep(0,77)
c=rep(0,77*2)
for( i in 1:77){
a[i]=length(which(zy*50000<i))
b[i]=length(which(zy3*50000<i))
}
for( i in 1:77*2){
c[i]=length(which((zdiff*50000)<(-77+i) ))

}
plot(a/190)
lines(a/190)
 
hist(zdiff/190)
length(which(zdiff>0))/190
length(which(zdiff<0))/190
length(which(zdiff==0))/190
 
