# A 'recursive' function :-
# - calls itself
# - simplifies the problem
# - requires a base case

# an example - calculate a sum :-
function calc(n::Int64)
    if n == 1
        return 1
    end
    return n + calc(n - 1)
end
calc(100000) # 5000050000

# note - Julia has a limit to the number of times a function can call itself - about 80k
