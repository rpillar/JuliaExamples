function f(x, y)
    x * y
end
println(f(1, 2))

# short-hand
g(x,y) = x * y
println(g(3, 2.1))

h(x::Int64, y::Int64) = x * y
println(h(19, 65))

# default args
i(x::Int64, y::Int64, z::Int64=10) = (x + y) * z
println(i(12, 4))
println(i(12, 4, 6))

# functions with keyword args
j(x, y; mult=10) = (x + y) * mult
println("result is $(j(2, 4))")
println("result is $(j(4, 5, mult=5.6))")

# variable argument lists
function sum(args...)
    sum = 0
    for x in args
        sum += x
    end

    sum
end
println("the sum of 1..10 is $(sum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))")