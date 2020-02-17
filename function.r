#function

n=function(n,g)
{
  s=n*g
  print(s)
  n=n-1
  g=g-1
  s=n*g
  print(s)
}
n(3,4)

#LETTERS

v<-LETTERS[1:20]
print(v)
for(i in v){
  print(i)
}

#next

for (i in v){
  if(i == 'D'){
    next
  }
  print(i)
}
c(3, 0, TRUE, 2+2i) -> a
print(a)
c(3, 0, TRUE, 2+2i) ->> a
print(a)
c(3, 0, TRUE, 2+2i) ->>b
print(b)
c(3, 0, TRUE, 2+2i)->b
print(b)

a1 <- 8
a2 <- 12
d <- 1:10
print(a1%in%d)
print(a2%in%d)

age<-readline(prompt='enter')
print(age)

y = "18"  
x = switch(  
  y,  
  "9"="Hello Arpita",  
  "12"="Hello Vaishali",  
  "18"="Hello Nishka",  
  "21"="Hello Shubham"  
)  

paste(x,y,sep="") #is used ry compain two character