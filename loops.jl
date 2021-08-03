for i in 1:10
    println("i is $i")
end

for name in ["Richard", "Sam", "Dawn"]
    println(name)
end

# nested loops
for i in 1:5, j in 1:3
    println(i, " / ", j)
end

# enumerating over a list
names = ("Richard", "Dawn", "Sam", "Eleanor", "Lizzy")
for (idx, val) in enumerate(names)
    println(idx, " / ", val)
end 

# break or continue
for a in 1:10
    if isodd(a)
        continue
    elseif a > 8
        break
    else
        println("a is $a")
    end
end

# global values
b = 1
while b < 10
    print(b)
    global b += 1
end