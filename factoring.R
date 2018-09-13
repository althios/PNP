f=function(X,Y){
gcd <- function(a,b) ifelse (b==0, a, gcd(b, a %% b)) 

xi=1
composed=X*Y
y=composed-1

i=0
output=1
centinel=1
steps=0
while(centinel>0){
i=i+1

xi2=(((output*(output+1)*(2*output+1)/6)-output)%%composed)
if(gcd((output),composed)>1){


output=gcd(floor(output),composed)

steps=i
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

output=floor(((-1)*i^2+error)%%composed)
if(floor(as.numeric(y+17*xi)%%composed)>0){
j=j+1
}else{
j=-1

}
}

}

return(c(output,steps))
}