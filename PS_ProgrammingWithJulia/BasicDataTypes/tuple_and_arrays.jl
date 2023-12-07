# store multiple values in tuples or arrays

# firstly - type hierarchy
supertypes(Tuple) # (Tuple, Any)
supertypes(Array) # (Array, DenseArray, AbstractArray, Any)

# Tuples
# ======

# tuples can be used to store a fixed number of values - different types are
# allowed. However tuples are immutable - you cannot change the values or size.
t1 = (1,2,3,4) # a tuple uses parentheses - although these are optional
t2 = 1,2,3,4   # note also that tuples are 'ordered'

# to access elements in a tuple you can specify the appropriate index - note
# that in Julia indexes always start at '1'.
t1_value = t1[1]
println("tuple index 1 is : $t1_value") # tuple index 1 is : 1

# you can also 'deref' tuples :-
a,b,c,d = t1
println("$a / $b / $c / $d") # 1 / 2 / 3 / 4

# Arrays
# ======

# arrays can store and number of values - but the 'type' of these values should be the 
# same (no mixing strings and integers - not enforced but the array 'Type' will 
# default to 'Any') and arrays are mutable.
# Arrays can be multi-dimensional - single dimension arrays are called 'vectors' /
# multi-dimension arrays are call a 'matrix'.
prices = [1.25, 4.50, 6.77, 9.99] # 4-element Vector{Float64}

# a matrix can be created by using the '[]' notation but separating the 'rows' using 
# a ';'. Note that you separate values with a 'space' rather than a 'comma'
ages = [100 76; 99 65] # 2x2 Matrix{Int64}

# to access an element in an array :-
prices[2] # 4.5
prices[1:3] # take a slice from an array - returns a 3-element Vector{Float64}

# update an element :-
prices[1] = 10.99
prices
# 4-element Vector{Float64}:
#  10.99
#   4.5
#   6.77
#   9.99