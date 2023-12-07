# read a 'text' file using Julia

fh = open("../Data/hello.txt", "w")
write(fh, "Hello World")
close(fh) # do not forget to do thia ....

fh = open("../Data/hello.txt", "r") # IOStream(<file ../Data/hello.txt>)
contents = read(fh, String) # "Hello World"
close(fh)

# to ensure that a file opened for read / write is always 'closed' after it is used
# you can use a <open do> construct :-
open("../Data/order.txt", "w") do  fh
    for id in 1:1000
        write(fh, "order_id=$id\n")
    end
end

function read_all_lines(filename::String)
    counter = 1
    open(filename) do fh
        for line in readlines(fh)
            println(line)
            counter += 1
            if counter > 10
                break
            end
        end
    end
end
read_all_lines("../Data/order.txt")
# order_id=1
# order_id=2
# order_id=3
# order_id=4
# order_id=5
# order_id=7
# order_id=8
# order_id=6
# order_id=9
# order_id=10

function head_of_file(filename::String)
    counter = 1
    open(filename) do fh
        for line in eachline(fh)
            println(line)
            counter += 1
            if counter > 10
                break
            end
        end
    end
end
head_of_file("../Data/order.txt")
# order_id=1
# order_id=2
# order_id=3
# order_id=4
# order_id=5
# order_id=6
# order_id=7
# order_id=8
# order_id=9
# order_id=10

# lets benchmark the performance of our two functions - note time / memory usage differences
using BenchmarkTools
@btime read_all_lines("../Data/order.txt") # 1.104 ms (2088 allocations: 70.85 KiB)
@btime head_of_file("../Data/order.txt") # 961.570 μs (92 allocations: 2.45 KiB)