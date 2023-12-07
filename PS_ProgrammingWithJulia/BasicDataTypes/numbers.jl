# Julia will by default infer the 'type' of a number - '1' / '-1' are
# Integers where the 'type' will default to 'Int64' 
# Similarly 3.14 will have a type of 'Float64'

a = -1
typeof(a) # Int64
b = 1
typeof(b) # Int64
c = 3.14
typeof(c) # Float64

# the type hierarchy for Integers / Floats is :-
supertypes(Int64) # (Int64, Signed, Integer, Real, Number, Any)
subtypes(Signed)
# 6-element Vector{Any}:
#  BigInt
#  Int128
#  Int16
#  Int32
#  Int64
#  Int8

supertypes(Float64) # (Float64, AbstractFloat, Real, Number, Any)
subtypes(AbstractFloat)
# 4-element Vector{Any}:
#  BigFloat
#  Float16
#  Float32
#  Float64

# the min / max values that can be held by a variable of a certain type ...
typemin(Int64) # -9223372036854775808
typemax(Int64) # 9223372036854775807
typemin(Float64) # -Inf
typemax(Float64) # Inf