# Create a vector called x containing the first 5 positive odd integers

x=c(1,3,5,7,9)

#recreate x using seq function
x=seq(from=1,to=9,by=2)

# Create a vector called y containing the first 5 positive even integers
y=c(2,4,6,8,10)

#combine into z
z=c(x,y)

#create a vector of 7 2's
rep(2,7)

# add x and z.  They are not the same length, so what happens?
x+z

#multiply x and y
x*y

#print out the elements in x that are in (3,7) using logic statements
x[x>3 & x<7]

#Use seq function to divide interval (0,1) into 4 equal parts
seq(from=0,to=1,length=5)


#Convert logical variable to numeric
d1 = 1; d2 = 2   # sample values 
c = d1 > d2      # is d1 larger than d2? 
c		     # it is not, so c=FALSE
c=as.numeric(c)
c

#Why does this not work?
turtle_names=c(Leonardo,Donatello,Michaelangelo,Raphael)
turtle_names

#Characters have to be in " "
turtle_names=c("Leonardo","Donatello","Michaelangelo","Raphael")
turtle_names

#Print out the 2 middle turtles
turtle_names[2:3]
#or
turtle_names[c(2,3)]

#Print out all names except for second
turtle_names[-2]

#out of range
turtle_names[10]
#How many turtles are there?
length(turtle_names)


#Three ways to create a matrix
A = matrix( 
c(2, 4, 3, 1, 5, 7), # the data elements 
nrow=2,              # number of rows 
ncol=3,              # number of columns 
byrow = TRUE)        # fill matrix by rows 
A


#Print the first (1,2)th element and (2,3)th
A[1,2]
A[2,3]
#Print out first 2 columns
A[,1:2]
#first and third columns
A[,c(1,3)]

#Create a 3X2 matrix B
B = matrix(c(4, 8, 6, 2, 10, 14),nrow=3,ncol=2) #transpose of B is same dimension as A
C = t(B)
#put A and C together by rows
rbind(A,C)
#this worked because they had the same number of columns

#put them together by columns
cbind(A,C)
#this worked because they had the same number of rows

#put A and B together by rows.  Why does this not work?
rbind(A,B)
#they do not have the same number of columns

#Multiply A and B element by element:
A*B
#Why does this not work?
#they do not have the same dimensions

#dot product multiplication
#This will be a 2X2 matrix
A%*%B
#This can be done because number of A columns=number of B rows.

#This will be a 3X3 matrix:
B%*%A


#A is a matrix, but we can make it a data frame:
A=as.data.frame(A)
class(A)


#create a list
c1=c(1,2,3)
c2=c("a","b","c","d")
c3=c(TRUE,FALSE)
L=list(c1,c2,c3)
L
#The second element of L is c2: "a","b","c","d"
L[[2]]
#what will this give? 
L[[2]][3]


#Create the data frame of obs. number and letter:
m=c(1,2,3,4)
n=c("a","b","c","d")
p=data.frame(m,n)
#Label columns and rows
dimnames(p)=list(c("A","B","C","D"),c("number","letter"))
p

#first column of p:
p[[1]]
p[["number"]]
p$number






