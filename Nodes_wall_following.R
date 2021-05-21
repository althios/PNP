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
#guardamos varios pares de nodos elegidos uniformemente
set.seed(21459)
Sides_per_Try=rep(0,500)
for(i in 1:500){
M3=sample(M1)
A3=which(M3==sample(M3,1,runif(1)))[1]
M4=sample(M2)
A4=which(M4==sample(M4,1,runif(1)))[1]  
#guardamos el numero de aristas que conecta cada par de nodos
Sides_per_Try[i]=abs(A4-A3)
}
plot(Sides_per_Try/50)
p=mean(Sides_per_Try/50)
s=sd(Sides_per_Try/50)
abline(p+3*s,0)
abline(p,0)
abline(p-3*s,0)
