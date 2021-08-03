# create a Dict
d1 = Dict("name" => "Richard", "age" => 21)
println(typeof(d1))
println(d1)
println(d1["name"])

# to explicitly state the types of 'keys' and 'values'
d2 = Dict{String,String}("name" => "Dawn", "city" => "New York")
println(typeof(d2))
println(d2)
println(d2["name"])

# and to add an entry ...
d2["employee"] = "Google"
println(d2)

# to check if a Dict has a 'key'
println(haskey(d2, "employee"))
println(haskey(d2, "status"))

# to remove an entry from a Dict
delete!(d2, "employee")
println(d2)

# to retrieve the keys / values of a Dict as arrays
println(keys(d2))
println(values(d2))

# it is possible to iterate over a Dict
for (k, v) in d2
    println("key : $k / value : $v")
end