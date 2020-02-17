a<-scan()
b<-scan()
b<-as.numeric(b)
a<-as.numeric(a)
a<-sort(a)
cat("a:",a)
m1<-function(x)
{
  return(sum(x)/length(x))
}
m2<-function(x)
{
  if(length(x)%%2!=0){
    return(x[length(x)%/%2])
  }
  else if(length(x)%%2==0){
    x=c(x[length(x)%/%2],x[(length(x)%/%2)+1])
    m1(x)
  }
}
m3<-function(x)
{
  maxvalue<-0
  maxcount<-0
  for(i in 1:length(x))
  {
    count<-0
    for(j in 1:length(x))
    {
      if(x[j]==x[i])
      {
        count=count+1
      }
      
    }
    if(count>maxcount)
    {
      maxcount=count
      maxvalue=x[i]
    }
  }
  return(maxvalue)
}
jaga_std<-function(x)
{
  x<-x-m1(x)
  x<-x**2/(length(x)-1)
  x<-sum(x)
  return(sqrt(x))
}
jaga_corcoef<-function(x,y)
{
  covar=(length(x)*sum(x*y))-(sum(x)*sum(y))
  stdivofx=sqrt((length(x)*sum(x**2))-((sum(x))**2))
  stdivofy=sqrt((length(y)*sum(y**2))-((sum(y))**2))
  totsrdofxy=stdivofx*stdivofy
  corre=covar/totsrdofxy
  return(corre)
}
mean_result1<-m1(a)
median_res1<-m2(a)
mode_res1<-m3(a)
mean_result2<-m1(b)
median_res2<-m2(b)
mode_res2<-m3(b)
cat("\nmean of first data is:",mean_result1)
cat("\nmedian of first data is:",median_res1)
cat("\nmode of first data is:",mode_res1,"\n")
cat("\nmean of second data is:",mean_result2)
cat("\nmedian of second data is:",median_res2)
cat("\nmode of second data is:",mode_res2,"\n")
std_via1<-jaga_std(a)
std_via2<-jaga_std(b)
cat("\nstandard deviation for first data:",std_via1)
cat("\nstandard deviation for second data:",std_via2)
jaaaja<-jaga_corcoef(a,b)
cat("\ncorrelation co-efficient:",jaaaja,"\n")
cat("mean using builtin function:\n",mean(a),"\n",mean(b))
cat("\nmedian using builtin function:\n",median(a),"\n",median(b))
cat("\nstandard diviation using built in function:\n",sd(a),"\n",sd(b))
cat("\ncorrelation co-efficient using built in function:",cor(a,b)) 