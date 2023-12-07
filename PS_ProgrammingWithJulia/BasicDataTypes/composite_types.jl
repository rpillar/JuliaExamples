# 'composite' types group together fields of various other types
# so they are ....
# - user defined (struct)
# - named fields with optional types
# - similar to classes
# - immutable by default

struct Person
    name::String
    age::Int64
    gender::String
end

person = Person("Richard", 21, "male") # Person("Richard", 21, "male")
person.age # 21

# the data in the struct ^^ cannot be changed - but we can create 'mutable' structs using the
# 'mutable' keyword
mutable struct House
    type::String
    bedrooms::Int64
    bathrooms::Int64
end

house = House("detached", 3, 2) # House("detached", 3, 2)
house.bedrooms = 4
println(house) # House("detached", 4, 2)

# for lots more detail on types - see https://docs.julialang.org/en/v1/manual/types/