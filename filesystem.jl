# get the 'current' working directory
println(pwd())

# read the contents of the 'current' working directory - returns
# an array of file / folder names
println(readdir())

# create / open a file for writing (create it first if it does't exist) ...
function filecreate(file::String, text::String="This is some text")
    io = open(file, "w")
    write(io, text)
    close(io)
end
filecreate("testfile.txt", "Hello from somewhere out there")

# read a file
function fileread(file::String)
    io = open(file, "r")
    contents = read(io, String) # if you don't specify a type you get UInt8 'char' collection returned
    close(io)
    println(contents)
end
fileread("testfile.txt")

# add to a file
function fileappend(file::String, text::String)
    io = open(file, "a")
    write(io, text)
    close(io)
end
fileappend("testfile.txt", "\nHello from somewhere else")

# rename a file
function filerename(file1::String, file2::String)
    mv(file1, file2)
end
filerename("testfile.txt", "testfilenew.txt")

# delete a file
rm("testfilenew.txt")