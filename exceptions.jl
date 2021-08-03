# create an exception
x = -9
try
    println(sqrt(x))
catch ex
    println("==============")
    println(ex)
    println("==============")
finally
    println("This code always runs ....")
end


