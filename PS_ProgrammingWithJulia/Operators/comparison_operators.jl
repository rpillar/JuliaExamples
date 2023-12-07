# comparison operators

# less than / less than or equal - < / <=
1 < 2 # true
2 <= 2. # true

# greater than / greater than or equal - > / >=
2 > 1 # true
1 > 3 # false

# equality in terms of value - ==
5 == 5 # true
5 != 10 # true

# equality in terms of value and type - ===
1 === 1. # false
"john" === "john" # true

# approximate - ≈
1 ≈ 0.99999999999999 # true 

# NOTE - be aware of assignment vs equallity check ....
# ALSO - comparisons of floats - best to use 'approx'

# when comparing 'objects' - arrays / tuples etc :-
[1,2] == [1,2] # true
[1,2] === [1,2] # false - these arrays are not the 'same' object so check returns 'false'
(1,2) == (1,2) # true
(1,2) === (1,2) # true - these two tuples share the same memory location.