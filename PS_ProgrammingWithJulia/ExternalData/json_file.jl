# using JSON files - key / value pairs

using JSON

# process an integer
JSON.json(1) # "1" (a string)
JSON.json([1,2]) # "[1,2]" (a string)

# process a julia dictionary
d = Dict("k1" => 1, "k2" => 2, "k3" => 3)
println(json(d)) # {"k3":3,"k1":1,"k2":2}

# for a 'prettier' print add a 2nd argument - an integer that indicates the indent
# in terms of 'number of spaces'
println(json(d, 2)) 
# {
#   "k3": 3,
#   "k1": 1,
#   "k2": 2
# }

# to read / parse JSON data :-
data = """
{
    "items": [
        {
            "name": "apple",
            "price": 1.05
        },
        {
            "name": "pear",
            "price": 0.95
        }
    ]
}
"""
inventory = JSON.parse(data)
# Dict{String, Any} with 1 entry:
#   "items" => Any[Dict{String, Any}("name"=>"apple", "price"=>1.05), Dict{String, Any}("name"=>"pear", "p…

# accessing the inventory dictionary ...
inventory["items"][1]["price"] # 1.05