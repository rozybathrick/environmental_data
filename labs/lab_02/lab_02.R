##Lab 2

TRUE/5
FALSE/5
10/TRUE
TRUE>FALSE
TRUE==FALSE

for(i in 1:20)
{
  cat(i)
}

rnorm(10)
rnorm(n = 10, sd = 1)
rnorm(sd = 1, mean = 0, n = 10)

n = 12345
vec_1 = sample(12, n, replace = TRUE)
head(vec_1)
tail(vec_1)
print(vec_1)

#Use a logical test operator to create a Boolean vector (called vec_2)
#whose entries are TRUE if the corresponding entry in vec_1 is 3 and FALSE otherwise.

#Self test: you can use vec_2 to retrieve all of the 3 elements of vec_1 using the following:

vec_2=vec_1==3
vec_1[vec_2]
print(vec_2)

length(vec_1)
sum(vec_1 == 3)

n = 10
vec_1 = sample(12, n, replace = TRUE)
paste0("Sum of elements with value 3: ", sum(vec_1 == 3))
n = 10
vec_1 = sample(12, n, replace = TRUE)
paste0("Sum of elements with value 3: ", sum(vec_1 == 3))
n = 10
vec_1 = sample(12, n, replace = TRUE)
paste0("Sum of elements with value 3: ", sum(vec_1 == 3))
