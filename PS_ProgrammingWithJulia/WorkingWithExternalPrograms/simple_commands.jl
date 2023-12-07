# running 'simple' commands from julia

# defining - we could just use 'back ticks' - such as `ls` but the use of the 
# Cmd module gives us more options ...
cmd_ls = Cmd(`ls`, dir="../Data") # setenv(`ls`; dir="../Data")

# using pipes - such as `ls | sort`
cmd_pipeline_1 = pipeline(cmd_ls, `sort`) # pipeline(`ls`, stdout=`sort`)
# in this case - to redirect the output to a file - just add the filename as a string
cmd_pipeline_2 = pipeline(`ls`, `sort`, "../simple_command_out.txt")
# pipeline(pipeline(`ls`, stdout=`sort`), stdout>Base.FileRedirect("../simple_command_out.txt", false))

# we have 'defined' our commands - how do we 'run' them (this returns a 'Process' object)...
run(cmd_ls)
# hello.txt       new_order.csv   order.txt       sqlite.db
# Process(setenv(`ls`; dir="../Data"), ProcessExited(0))

run(cmd_pipeline_1)
# hello.txt
# new_order.csv
# order.txt
# sqlite.db
# Base.ProcessChain(Base.Process[Process(setenv(`ls`; dir="../Data"), ProcessExited(0)), Process(`sort`, ProcessExited(0))], Base.DevNull(), Base.DevNull(), Base.DevNull())

# to 'store' the data that is returned use the 'read' function
files = read(cmd_ls, String) # "hello.txt\nnew_order.csv\norder.txt\nsqlite.db\n"
split(files)
# 4-element Vector{SubString{String}}:
#  "hello.txt"
#  "new_order.csv"
#  "order.txt"
#  "sqlite.db"