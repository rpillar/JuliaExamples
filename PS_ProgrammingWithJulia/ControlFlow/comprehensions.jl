# 'comprehensions' are a light-weight way of looping ... A common use is as a means of creating a 
# 'new' array from an existing array
# there are two types of comprehensions :-
# - array
# - generator

## An Array comprehension
## ======================

products = ["Table", "Chair", "Stool", "Kettle", "Cup"]
# process this array using a 'for'  loop (as an example)
updated_products = String[]
for p in products
    push!(updated_products, "One " * p)
end
updated_products
# 5-element Vector{String}:
#  "One Table"
#  "One Chair"
#  "One Stool"
#  "One Kettle"
#  "One Cup"    

# ^^ as an 'array' comprehension - result as ^^
updated_products = ["One " * p for p in products]

# for 'completeness' we could have used vectorization with the dot operator
"One ".* products

# vectorization however cannot do 'filtering' - suppose we only want process products 
# that have a length of 3 characters
filtered_products = ["One " * p for p in products if length(p) == 3]
# 1-element Vector{String}:
#  "One Cup"

# A Generator comprehension
# These can be used with very large arrays - note use of '(' and ')'
on_demand_products_generator = ("One " * p for p in products if length(p) == 3)
# Base.Generator{Base.Iterators.Filter{var"#14#16", Vector{String}}, var"#13#15"}(var"#13#15"(), Base.Iterators.Filter{var"#14#16", Vector{String}}(var"#14#16"(), ["Table", "Chair", "Stool", "Kettle", "Cup"]))

# we can then iterate over the 'generator'
for p in on_demand_products_generator
    println(p)
end
# One Cup

# or we can convert the generator into an array using the 'collect' function
collect(on_demand_products_generator)
# 1-element Vector{String}:
#   "One Cup"

# so - comparing array vs generator comprehensions
sum((n for n in 1:100000000)) # 5000000050000000
sum([n for n in 1:100000000])