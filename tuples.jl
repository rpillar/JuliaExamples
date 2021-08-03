# tuples are ordered and immutable
t1 = (1, 2, 3, 4, "Richard")
println(typeof(t1))
println("the 2nd element of t1 is : ", t1[2])
println("a slice of 2nd to 4th elements of t1 is : ", t1[2:4])

# iterate over a tuple
println("*** iterate over a tuple ***")
for e in t1
    println(e)
end
println("******")

# you can check that a 'value' is 'in' a tuple
println("*** check a tuple for a value ***")
println(2 in t1)
println(9 in t1)
println("******")

# multi-dimensional tuples
println("*** multi-dimensional tuples ***")
t2 = ((1, 2), (3, 4))
println(typeof(t2))
println(t2[1][2])
println("******")

# named tuples
println("*** named tuples ***")
t3 = (a = 1, b = 2, name = "Richard")
println(typeof(t3))
println(t3)
println(t3.name)
println("******")