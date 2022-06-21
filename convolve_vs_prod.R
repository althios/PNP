x=c(0,1,0,0,1,1,0,1,1)
y=c(0,1,1,1,1,0,0,1,1)

n=4
times1=rep(0,50)
for (j in 1:50){
  times1[j]=proc.time()[1]
  for(i in 1:1000){
    sum(x[1:n]*2^(0:(n-1)))*sum(y[1:n]*2^(0:(n-1)))
    
  }
  times1[j]=((proc.time()[1]-times1[j]))/1000
}
times1[1:10]
hist(times1)
times2=rep(0,50)
for (j in 1:50){
  times2[j]=proc.time()[1]
  for(i in 1:1000){
    a=sum(convolve(x[1:n]*2^(0:(n-1)),y[1:n]*2^(0:(n-1))))
    
  }
  times2[j]=((proc.time()[1]-times2[j]))/1000
}
hist(times2)
