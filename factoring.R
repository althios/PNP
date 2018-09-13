gcd <- function(a,b) ifelse (b==0, a, gcd(b, a %% b)) 
f=function(X,Y){

xi=1
composed=X*Y
y=composed-1

i=0
xi1=1
centinel=1
m=0
while(centinel>0){
i=i+1

xi2=(((xi1*(xi1+1)*(2*xi1+1)/6)-xi1)%%composed)
if(gcd((xi1),composed)>1){


xi1=gcd(floor(xi1),composed)

m=i
centinel=-1
break
}
y=floor(as.numeric((i)^2*y+as.numeric(xi2))%%composed)






j=1
xi=y

while(j>=0 & j<6/pi^2*log(X*Y)){


z=xi

for(l in 1:17){
xi=floor(as.numeric(-(xi)*z)%%composed)
}
error=1
for(l in 1:17){
error=floor(as.numeric(-(y+17*xi)*error)%%composed)
}

xi1=floor(((-1)*i^2+error)%%composed)
if(floor(as.numeric(y+17*xi)%%composed)>0){
j=j+1j
}else{
j=-1

}
}

}

return(c(xi1,m))
}

steps=rep(0,50)
length=rep(0,50)

primes=c(797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997)
for(counter in 1:50){
X=sample(primes,1)
Y=sample(primes,1)
verify=f(X,Y)
print(c(verify[1],X,Y))
steps[counter]=verify[2]

length[counter]=X*Y

}

qqplot((steps),(length))
lines(seq(min(steps),max(steps),50),300000+90000*log(seq(min(steps),max(steps),50)),col="blue")













