# how do we handle exceptions in julia ?
# see :- https://docs.julialang.org/en/v1/manual/control-flow/#Exception-Handling 

# the syntax is similar to that found in other programming languages
# try
#     <statements>
# catch <exception>
#     <statements>
# finally (optional)
#     <statements>
# end

# for example - sqrt(-1) throws the exception 'DomainError'
try
    sqrt(-1)
catch e
    println("An exception has occured : $e ....")
end
# An exception has occured : DomainError(-1.0, "sqrt will only return a complex result if called with a complex argument. Try sqrt(Complex(x)).") ....

# if we want to handle certain exceptions differently then we can check the 'type' of the exception
try
    sqrt(-1)
catch e
    if isa(e, DomainError)
        println("Exception : DomainError - value supplied must be positive")
    end
end
# Exception : DomainError - value supplied must be positive

# it is also possible to initiate an exception using the 'throw' function
f(x) = x>=0 ? exp(-x) : throw(DomainError(x, "argument must be nonnegative"))
f(12) # all okay - 6.14421235332821e-6
try
    f(-2)
catch e
    println(e)
end
# DomainError(-2, "argument must be nonnegative")