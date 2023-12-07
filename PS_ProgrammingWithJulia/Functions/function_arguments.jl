# Functuion arguments in Julia
# there are three ways to classify function arguments

# By Data type
# ============

# where the data type of an argument is not explicitly stated then each argument is of type 'Any'
fx(x,y) = x + y # fx (generic function with 1 method)

# it is possible to assign types to function arguments
fy(x :: Int64, y::Int64) = x + y

# we can make arguments 'optional' (by default they are mandatory) by specifying default values for them
fz(x,y=1) = x + y

# also sometimes we may not know the number of arguments in advance of a function being called
function fa(x,y...)
    for value in y
        x += value
    end
    println("The total value of all arguments is $x")
end
fa(1,2,3,4,6,7) # The total value of all arguments is 23

# note that if the arg to fa() is an array you must suffix the arg with '...' in order for
# each element to be processed - otherwise the array is treated as a single arg.
array_arg = [1,2,3,4,5,6]
fa(array_arg...) # The total value of all arguments is 21

# positional arguments come before keyword arguments (same as Python ...)
# position matters ^^
# if a function has positional AND keyword arguments then these are separated by a ';'

# a function with keyword arguments (note - ';'):-
fb(a=1 ; x, y) = a + x + y
fb(x=23,y=3) # 27
fb(12, y=4,x=22) # 38