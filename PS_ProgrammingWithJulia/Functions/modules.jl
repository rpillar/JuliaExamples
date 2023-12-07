# modules can :-
# - include one or more fields
# - each module os a separate namespace
# - modules export types and functions

# module names :-
# - use unique, meaningful names
# - use the 'plural' if possible
# - use upper camel case - MyReports (for example)

# note - in order to make use of a module we need to ensure that our code
# can 'find' it. 'LOAD_PATH' (check at the REPL) is a Vector that holds locations
# where julia will look - when adding 'new' modules this vector may need to 
# be updated
# - run at the REPL - push!(LOAD_PATH, "../TestModules")

using ProductCalcPrices

p = Product("Phone", 123.55)
calc_vat(p, 1) # (148.26, 24.71)
calc_vat(p, 3) # (197.68, 74.13)