# 'while' loops and 'for' loops

## 'for' loops
## ===========

for i in 1:5
    println("Number : $i")
end
# Number : 1
# Number : 2
# Number : 3
# Number : 4
# Number : 5

# in cases where a variable defined outside the 'loop' is being 
# amended 'inside' a loop we have to mark that variable as 'global'.
# For example :-
total = 10
for i in 1:5
    global total += i
    println("Total is now : $total")
end
println("Final total : $total")
# Total is now : 11
# Total is now : 13
# Total is now : 16
# Total is now : 20
# Total is now : 25
#
# Final total : 25

## 'while' loops
## =============

total = 0
counter = 1
while counter <= 5
    global total += counter
    println("Counter : $counter / total : $total")
    global counter += 1
end
println("At the end - Counter : $counter / total : $total")
# Counter : 1 / total : 1
# Counter : 2 / total : 3
# Counter : 3 / total : 6
# Counter : 4 / total : 10
# Counter : 5 / total : 15
#
# At the end - Counter : 6 / total : 15

# NOTE - to avoid any ambiguities variables can be 'marked' as 'global' or 'local'. In the 
# examples above we are amending the value held in variables defined outside the 'loop'
# so to avoid any ambiguity these are marked as 'global'
# If we have a variable within a loop - such as 'total' (and we don't want to amend the value held
# by the 'external' variable) then we can mark it as 'local'