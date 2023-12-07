# functions are the 'building blocks' of applications written using julia

# there are three ways to define a function :-
# - use the 'function' keyword
# - use an 'inline' definition
# - use 'anonymous' functions

# in Julia the convention is that function names are all lowercase, are meaningful and
# if required may contain 'underscores' as a separator - to ensure that the function names
# is clear.
# if a function modifies 1 or more of its arguments then suffix the function name with a '!'

# functions are 'first-class citizens' :-
# - a function can be assigned to a variable
# - a function can be called from a variable
# - functions can be passed as arguments
# - functions can be returned as 'values'

# using the 'function' keyword
function add(x, y)
    return x + y
end
# add (generic function with 1 method)

# 'inline'
multiply(x, y) = x * y # multiply (generic function with 1 method)

# anonymous - assign to a variable ... 
f1 = a -> a / 2 # #66 (generic function with 1 method)
f1(3) # 1.5
# if multiple arguments are required ...
f2 = (a,b) -> a / b # #70 (generic function with 1 method)
f2(1,4) # 0.25