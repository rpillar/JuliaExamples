# calculating the length / size of strings. 
# If the string contains 'special' characters these may be different.
s1 = "ángeł"
println("the length of s1 is : ", length(s1))
println("the size of s1 is : ", sizeof(s1))

# concatenate two strings
s2 = "Hello" * " " * "World"
println(s2)

# repeat a string
s3 = "ABCD"^3
println(s3)

# substrings
s4 = "There once was a little pig named Dave"
println(findnext("once", s4, 1)) # substring / string / start_at - returns the 'range' where the substring is found
println(occursin("Dave", s4))
println(occursin("Bob", s4))

# string padding - spaces is the default
s5 = "Whats up today"
println(lpad(s5, 25)) # the 'n' value is the total length of the string once padding has been applied - so a padding value of 10 will leave the string unchanged
println(rpad(s5, 25, '*')) # you can specify a character to pad with

# create a string from an array
a1 = ["Lions", "Tigers", "Dogs", "Cats"]
println(join(a1, '/', " and ")) # args to join - array / join char or string / join char or string between the last two elements