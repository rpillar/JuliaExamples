# Int64 array (by default)
a1 = [1,2,3,4,5]
println(a1)
println(typeof(a1))
println("the size of the array is : ", length(a1))
println("The element at pos 3 is : ", a1[3])

# array of type Any
a2 = ["Richard", 'x', 1, 1.23]
println(a2)
println(typeof(a2))
println("the size of the array is : ", length(a2))

# create an array of a specific type
a3 = Float64[]
push!(a3, 1.0, 2.33, 3.14)
println(a3)
println(typeof(a3))
println("the size of the array is : ", length(a3))

# fill an array with default values
a4 = zeros(4)
println(a4)
println(typeof(a4))
println("the size of the array is : ", length(a4))

a5 = ones(4)
println(a5)
println(typeof(a5))
println("the size of the array is : ", length(a5))

a6 = fill('x', 6)
println(a6)
println(typeof(a6))
println("the size of the array is : ", length(a6))

# sort ...
a7 = sort(a1, rev=true)
println(a7)
println(typeof(a7))
println("the size of the array is : ", length(a7))

# concat values in an array with a specified delimiter
a8 = join(a1, "-")
println(a8)
