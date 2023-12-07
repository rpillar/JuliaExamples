# a function can have multiple methods - it is possible to define
# functions where the 'signature' (number of args / type of args) may differ but
# the function 'name' remains the same.
# Julia will 'dispatch' a call to the method that has the 'best' match - at run-time

function addx(x::Int64, y::Int64)
    println("Call made with In64 args")
    return x + y
end
function addx(x::Float64, y::Float64)
    println("Call made with Float64 args")
    return x + y
end # addx (generic function with 2 methods)

addx(3,4) # 7
addx(12.44, 76.2) # 88.64

# you can get info on a functions 'methods' using :-
methods(addx)
#  2 methods for generic function "addx" from Main:
#   [1] addx(x::Int64, y::Int64)
#     @ ~/julia/ProgrammingWithJulia/Functions/multiple_dispatch.jl:6
#   [2] addx(x::Float64, y::Float64)
#     @ ~/julia/ProgrammingWithJulia/Functions/multiple_dispatch.jl:10

# to check which method is going to be called :-
@which addx(1.2, 4.5)
# addx(x::Float64, y::Float64)
#      @ Main ~/julia/ProgrammingWithJulia/Functions/multiple_dispatch.jl:10

# you can use you own 'types' :-
struct Product
    name::String
    price::Float64
end
function calc_vat(p::Product, quantity::Int64)
    vat = (p.price * quantity) * .2
    total = vat + p.price
    return (total, vat)
end
p = Product("Phone", 123.55)
calc_vat(p, 1) # (148.26, 24.71)
calc_vat(p, 3) # (197.68, 74.13)