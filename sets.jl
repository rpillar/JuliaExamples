# sets can only contain unique elements - adding an additional
# 1 will appear to do 'nothing'.
s1 = Set([1,2,3,"Richard", 3])
println(typeof(s1))
push!(s1, 1,55,98)
println(s1)
println("******")

# if I create a set of integers I cannot
# add a string
s2 = Set([1,2,3])
println(typeof(s2))

# to explicitly create a Set of a particular type
s3 = Set{Float64}([1,2,3,4,5,66])
println(typeof(s3))
println(s3)

# I can check if a Set contains a value
println(1 in s3)
println(34 in s3)

# I can iterate over a Set - but order is not guarenteed
# and I can't  use an index to retrieve a element from the Set
for e in s3
    println("$(e * 5)")
end

# with Sets it is possible to calculate the interset (common elements) of two Sets
s4 = Set([1,4,6,7])
s5 = Set([4,7,8,9])
println(intersect(s4, s5))

# to output the 'union' (all unique elements from both sets) of two sets
println(union(s4, s5))

# to calculate the 'elements' that are in set1 but not in set2
println(setdiff(s5, s4))