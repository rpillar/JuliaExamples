# Characters and Strings are two more data types

# Characters are delimited by single quotes :-
c = 'c' # must just be one character
typeof(c) # Char

# String values are delimited by 'double' quotes
s = "Richard"
typeof(s) # String

# to concatenate two (or more) Strings
d = "John"
e = "Doe"
f = d * e # JohnDoe
# or
g = "$d $e" # using string interpolation

# Note that if you tried to include number values in your concatenation you may get an error
# In this case you would have to 'cast' the number to a string using the 'string'
# function :-
h = g * string(55) # John Doe55
