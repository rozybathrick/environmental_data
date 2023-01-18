c(1, 2, 3)
"c(1, 2, 3)"
c_1 = c(1, 2, 3)
print(c_1)
c_2 = "c(1, 2, 3)"
print(c_2)

##matrices

my_vec<-c(1:6)
print(my_vec)
mat_1 = matrix(my_vec, nrow = 3)
mat_1([1,3])
retrieve<-mat_1[1,3]
mat_1[3,1]
mat_2=matrix(my_vec, nrow=2)
mat_3=matrix(my_vec, nrow=3)
mat_4=matrix(my_vec, nrow=2, ncol=7)

##subsetting
my_list_1=list(5.2, "five point two", 0:5)
my_list_1=list("two"=5.2,
               "one"="five point two",
               "three"=0:5)
print(my_list_1)
my_list_1[[1]]
my_list_1[[as.numeric("1")]]
my_list_1[["1"]]
my_list_1[["one"]]
my_list_1$one
my_list_1$"one"
my_list_1$1
my_list_1$"1"
my_list_1[[as.character(one)]]

##loops

for(i in 1:5)
{
  print(i)
}

  