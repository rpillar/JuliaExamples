# sort an array - aplying a function to the sort process
a1 = [1, 2, 0, -2, 7, 3, -11, 12, -43]
res = sort(a1, by=abs) # sort on the basis of the elements absolute value ...
println("$a1  / $res")

# is this array sorted
a2 = [1, 3, 6, 3]
println(issorted(a1))

a3 = [(1, 2), (2, 4), (3, 1), (5, 2)]
println(issorted(a3, by=x -> x[1])) # is this array sorted on the basis of the lambda function provided - get the first element of each tuple

# sorting custom types (structs)
struct Rect
    length::Int
    width::Int
end

a4 = [Rect(12, 22), Rect(10, 18), Rect(7, 12), Rect(9, 30)]

# create a custom sort function
function comparearea(r1::Rect, r2::Rect)
    area1 = r1.length * r1.width
    area2 = r2.length * r2.width

    return area1 < area2
end

sort!(a4, lt=comparearea) # sort 'in place', provide a 'less than' function (lt)
println(a4)