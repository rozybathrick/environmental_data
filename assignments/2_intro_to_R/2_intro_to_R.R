#7Sept2022:Assignment 2, Datacamp, Intro to R


#Variables: Q1-6
#A variable a that contains the text of your first name.
a<-"Rozy"
#A variable b1 that contains the number 45.6
b1<-45.6
#A variable b2 that contains the text “45.6”
b2<-"45.6"
#A variable c1 that contains the sequence of integers from 0 to 3
c1<-0:3
# Q1 (1 pt.): What type of data is contained in the variable a?
#character
# Q2 (1 pt.): What type of data is contained in the variable b1?
#numeric
# Q3 (1 pt.): What type of data is contained in the variable b2?
#	Q4 (2 pts.): Explain what happens when you try to add b1 and b2 and why.
sum(b1, b2)

#Q6 (3 pts.): Explain what happens when you add b1 and c1. Consider both the number of elements in each variable and the data types.
sum(b1, c1)


## Vectors: Q7-9
v1<--2:2
print(v1)
v2<-v1*3
print(v2)
sum(v2)

##Matrices: Q10-11
vec_4<-1:12
mat_1<-matrix(vec_4, nrow=3, byrow=TRUE)
print(mat_1)
mat_2<-matrix(vec_4, nrow=3, byrow=FALSE)
print(mat_2)

##Lists: Q12-14
my_list_1<-c(5.2, "five point two", 0:5)
print(my_list_1)
my_list_1<-list(two=5.2, one="five point two", three=0:5)
print(my_list_1)
my_list_1[[3]]
my_list_1$one

##Logical tests and subsetting Q15-16
my_vec = rep(1:3, 5)
my_vec
my_bool_vec<-my_vec==3
print(my_bool_vec)
data.frame(my_vec, my_bool_vec)
my_vec[my_bool_vec[TRUE]]
