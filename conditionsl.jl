x = 6
if x < 10
    println("Too small")
end

y = 15
if y < 10
    println("y is too small")
elseif y > 10 && y < 25
    println("y is medium")
else
    println("y is big")
end

z = 7
println(z < 10 ? "z is small" : "z is big")