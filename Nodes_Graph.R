set.seed(1029)
h=2.7
n=5
m=10
k=m*n/2
M=rep(1+(1:n)*h,m)/(m+1)
N=1:(n*m)/(n*m)
plot(M,N,xlim=c(0,2),ylim=c(0,1))
M1=sample(1:(m*n),k,replace=T)
M2=sample(1:(m*n),k,replace=T)
lines(c(M[M2],M[M1]),c(N[M2],N[M1]),type='l',lty=3,lwd=1,col="red")
M1=sample(1:(m*n),k,replace=T)
M2=sample(1:(m*n),k,replace=T)
lines(c(M[M2],M[M1]),c(N[M2],N[M1]),type='l',lty=3,lwd=1.5,col="blue")
M1=sample(1:(m*n),k,replace=T)
M2=sample(1:(m*n),k,replace=T)
lines(c(M[M2],M[M1]),c(N[M2],N[M1]),type='l',lty=3,lwd=0.5,col="dark green")
