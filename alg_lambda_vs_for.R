a=rep(0,50)
b=rep(0,50)
for (k in 1:50){

a1=proc.time()
for(i in 1:9000){

x=0  
for(j in 1:16){
x=x+1
} 

}
a[k]=(proc.time()-a1)[1]  

a1=proc.time()
for(i in 1:9000){

x=0
x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-(x<-x+1)+1)+1)+1)+1)+1)+1)+1)+1)+1)+1)+1)+1)+1)+1)+1
}
b[k]=(proc.time()-a1)[1]
}
hist(a/9000)
hist(b/9000)
