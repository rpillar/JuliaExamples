# it is possible to call 'code' developed in other programming languages from Julia
# - C - supported natively
# - R - using RCall
# - Java - using JavaCall 
# - Python - using PyCall

# running python code - you can use the 'run' / 'read' commands but this is
# not very flexible.
# so use the PyCall module

using PyCall

# to check which python executable is being used :-
PyCall.python # "/Users/rpillar/.julia/conda/3/bin/python"

# use 'py' ...
total = py"1+2" # 3

# you can import python modules and run functions
py_clean = pyimport("cleantext")
# PyObject <module 'cleantext' from '/Users/rpillar/.julia/conda/3/lib/python3.9/site-packages/cleantext/__init__.py'>
py_clean.clean("H€ello") # "hello"

# you can 'even' define python functions
py"""
def f(x,y):
    return x + y
"""
py"f(2,3)" # 5

py"""
from cleantext import clean
def my_clean(x):
    return clean('processed text : ' + x)
"""
py"my_clean"("h€ello w•orld") # "processed text : hello world"

# Note - it is possible to run Julia code from python using the 
# PyJulia package (install in the normal way - pip install julia). Then :-
#
# from julia.api import Julia
# j = Julia(compiled_modules=False)
# j.eval('println("Hello from Julia")')
#
# To define Julia functions in your python code :-
# from julia import Main
# j.eval("""
#   inc(x::Int64) = x + 1
# """)
# 
# as a test use the following - which runs more quickly :-
#
# from timeit import Timer

# from julia.api import Julia
# j = Julia(compiled_modules=False)
# from julia import Main

# def f_python():
#     i = 0
#     while i < 10000:
#         if i == 9999:
#             return i
#         i += 1
#
# j.eval("""
# function f_julia()
#     i = 0
#     while i < 10000
#         if i == 9999
#             return i
#         end
#         i += 1
#     end
# end
# """)
#
# print(f'Python function needs {Timer(f_python).timeit(number=100000):.2f} seconds')
# print(f'Julia function needs {Timer(Main.f_julia).timeit(number=100000):.2f} seconds)
