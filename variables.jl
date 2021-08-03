first = 1
second = 2.1
string = "I am a string"
boolvar = true

println(first)
println(second)
println(string)
println(boolvar)

const MYNAME = "Richard"
println(MYNAME)

function f1()
    x::Int64 = 21
    println(x)
end
f1()

function f2()
    y = Int64(1234)
    z = Int(2)
    println(typeof(y))
    println(typeof(z))
end
f2()

function f3()
    println(typemax(Int64))
    println(typemin(Int64))
end
f3()

println(Sys.WORD_SIZE)
println(zero(Int64))

function f4()
    x1 = 'x'
    println(Int(x1))
    println(Char(120))
end
f4()

myStr = """
Hello from
the 
other 
side of the room
"""
println(myStr)
println(length(myStr))
println(myStr[1:10])

for c in myStr
    print(Int64(c))
end
println()

x2 = Int64(12)
x3 = Int64(119)
println("The result of $x2 + $x3 is $(x2 + x3)")

