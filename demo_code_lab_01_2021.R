
# Let's make a 6 by 2 matrix!

nrow = 6
ncol = 2

# I'll choose some Poisson-distributed random numbers for this one:

mat_1 = matrix(
  data = rpois(nrow * ncol, lambda = 5),
  nrow = nrow, ncol = ncol)


# And some uniform-distributed random numbers for this one!

mat_2 = matrix(
  data = sample(nrow * ncol),
  nrow = nrow, ncol = ncol)

# Let's take a look!

mat_1
mat_2



# Element-wise operations ----

# Most operations using two matrices (of the same shape)
# are element-wise:
mat_1 + mat_2
mat_1 * mat_2

# It's easy to multiply by a constant:

mat_2 * 10









mat_1 %*% t(mat_2)



# saller matrices
nrow2 = 3
ncol2 = 2



mat_3 = matrix(1:(nrow2 * ncol2), 
       nrow = nrow2, ncol = ncol2, 
       byrow = FALSE)
mat_4 = matrix(1:(nrow2 * ncol2), 
       nrow = nrow2, ncol = ncol2,
       byrow = TRUE)

row_sums_mat_3 = rowSums(mat_3)
row_sums_mat_3


# Matching elements in a matrix ----
# We can use a Boolean test for equality (the double ==)

# mat_3 contains a value of '3' in one of its elements:
mat_3
mat_3 == 3

# mat_1 has many values of 4:
mat_1 == 4



