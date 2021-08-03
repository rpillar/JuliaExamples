using Random

# generate a random number between 0 and 1
println(rand())

# select a 'random' element from a collection
for i in 1:5
    println(rand([1,2,3,4,5,6]))
end

# populate a collection with random values - specify 'type' and the 'number' of 
# elements you want
a1 = rand(UInt16, 5)
println(typeof(a1))
println(a1)

# generate a 'random' set of characters
s1 = "World"
println(randstring(s1)) # note - default length of the output is 8
println(randstring(s1, 4)) # set the length of the output string
println(randstring('a':'z', 6)) # give it a range ...

# shuffle a collection
a2 = [1,2,3,4,5,6,7]
Random.shuffle!(a2)
println(a2)

# use a seed function
Random.seed!(100)
println(rand())
println(rand())