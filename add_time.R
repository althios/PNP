time=rep(0,1000)
for(i in 1:1000){
  time[i]=proc.time()[1]
  for (j in 1:100000){
    x=10000+10000*i
  }
  time[i]=(proc.time()[1]-time[i])/100000
}  
table(time)
