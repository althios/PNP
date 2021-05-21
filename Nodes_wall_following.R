set.seed(1029)
# valores iniciales
h=2.7
n=5
m=10
k=m*n/2
#probabilidad de elegir dos nodos conectados en la primera capa
prob_1=0.87
prob_2=0.75
#nodos
M=rep(1+(1:n)*h,m)/(m+1)
N=1:(n*m)/(n*m)
#nube de puntos
plot(M,N,xlim=c(0,2),ylim=c(0,1))
#muestreo
M1=sample(1:(m*n),k,replace=T)
A1=which(M1==sample(M1,1,prob=prob_1))
M2=sample(1:(m*n),k,replace=T)
A2=which(M2==sample(M2,1,prob=prob_2))
#aristas del grafo
lines(c(M[M2],M[M1]),c(N[M2],N[M1]),type='l',lty=3,lwd=1,col="grey")
lines(c(M[M2[A1:(A2-1)]],M[M1[(A1+1):A2]]),c(N[M2[A1:(A2-1)]],N[M1[(A1+1):A2]]),col="dark blue")
#total de aristas
legend(0,0.95,title=c("Aristas"),legend=c(A2-A1))
