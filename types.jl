# create a new 'type'
struct Person
    name::String
    age::Int
    gender::Char
end

p1 = Person("Richard", 21, 'M')
println("I have a person : $(p1.name) / age : $(p1.age) / gender: $(p1.gender)")

# types are 'immutable' by default. To ensure that you can update attributes of a type use the 'mutable' keyword
mutable struct Car
    manufacturer::String
    model::String;
    registered::Bool
end
c1 = Car("Ford", "Escort", true)
println(c1)
c1.registered = false
println(c1)

# to check the 'type' of a variable use the 'isa' method
println(isa(c1, Car))