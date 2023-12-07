# the '.' operator (dot) allows us to iterate over a collection - applying access
# specified operation

prices = [9.99, 19.99, 12.99, 1.45]
updated_prices = prices .+ 1 # add a '.' to vectorise the addition operator
# 4-element Vector{Float64}:
#  20.99
#  10.99
#  13.99
#   2.45

# the '.' operator works on a number of different 'operators' - not just 'plus'
[1,2,3].*2.4
# 3-element Vector{Float64}:
#  2.4
#  4.8
#  7.199999999999999

[1,2,3,4].> 2
# 4-element BitVector:
#  0
#  0
#  1
#  1

# here we create a 'new' array based on a comparison (note that the original array is not changed) ...
prices[prices .> 10]
# 2-element Vector{Float64}:
#  19.99
#  12.99

# we can also use the '.' operator with other functions :-
typeof(prices) # Vector{Float64}
typeof.(prices)
# 4-element Vector{DataType}:
#  Float64
#  Float64
#  Float64
#  Float64