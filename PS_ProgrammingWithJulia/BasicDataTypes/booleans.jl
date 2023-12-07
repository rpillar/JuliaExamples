# unsuprisingly we have two values - 'true' / 'false'
is_male = true
if ( is_male )
    println("I am true")
end

is_tuesday = false
if ( is_tuesday )
    println("It must be Tuesday")
else
    println("Its not Tuesday")
end

# as with all values - we can check the type using the 'typeof' function
typeof(true) # Bool
typeof(is_male) # Bool

# it is always worth understanding where in the type hierarchy a 'type' can be found
# we can use the 'supertypes' function for this
Base.show_supertypes(Bool) # Bool <: Integer <: Real <: Number <: Any