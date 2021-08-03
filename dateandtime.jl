using Dates

# create a Date / dateTime variable
d1 = Date(2021, 1, 25)
dt1 = DateTime(2021, 4, 12) # if the 'time' elements are not specified this will detail to 00:00:00
dt2 = DateTime(2021, 9, 16, 14, 22, 1)
println("Date and DateTime : $d1 / $dt1")
println("DateTime (2) : $dt2")

# parse a date using a DateFormat 
df1 = DateFormat("y-m-d")
d2 = Date("2021-02-03", df1) # parse a date 'string'
println("Date (2) is : $d2 ( $(typeof(d2) ) )")

# calculate the difference between two Dates
d3 = Date(2021, 2, 10)
d4 = Date(2021, 4, 9)
dt3 = DateTime(2021, 5, 3, 10, 19, 11)
dt4 = DateTime(2021, 5, 3, 12, 9, 2)
println("Is $d3 < $d4 : $(d3 < d4)")
println("The difference between $d4 and $d3 is : $(d4 - d3)")
println("The difference between $dt4 and $dt3 is : $(dt4 - dt3)") # note answer is in milliseconds (Millisecond type)

# date query methods
println("The day of the week of $d3 is : $(Dates.dayofweek(d3))")
println("The day name of the week of $d3 is : $(Dates.dayname(d3))")

# there are also a number of 'adjuster' methods
println("The first day of the week where the date is $d4 is : $(Dates.firstdayofweek(d4))")
println("The last day of the month (Date $d4) is : $(Dates.lastdayofmonth(d4))")