# Date / Time / DateTime types in Julia
# see - https://docs.julialang.org/en/v1/stdlib/Dates/ - for more details

using Dates
supertypes(Date) # (Date, TimeType, Dates.AbstractTime, Any)
supertypes(Time) # (Time, TimeType, Dates.AbstractTime, Any)
supertypes(DateTime) # (DateTime, Dates.AbstractDateTime, TimeType, Dates.AbstractTime, Any)

Date(2022) # 2022-01-01
Date(2022, 04, 01) # 2022-04-01

Time(9) # 09:00:00
Time("10:30:21") # 10:30:21
Time(Dates.now()) # whatever 'now is - hh:mm:ss.ms'

DateTime("2023-01-01T10:13") # 2023-01-01T10:13:00
DateTime(2023, 01, 01, 11, 12) # 2023-01-01T11:12:00

# to use a custom date format
Date("22/12/2003", "dd/mm/yyyy") # 2003-12-22

# various functions exist :-
myDate1 = Date("2023-11-01")
Dates.year(myDate1) # 2023
Dates.month(myDate1) # 11
Dates.week(myDate1) # 44
Dates.day(myDate1) # 1
Dates.dayofweek(myDate1) # 3
Dates.dayname(myDate1) # "Wednesday"
Dates.dayofyear(myDate1) # 305

# you can compare dates :-
myDate2 = Date("2024-01-01")
myDate2 > myDate1 # true
myDate2 < myDate1 # false

# you can perform math on dates :-
myDate2 - myDate1 # 61 days
Date(2024, 1, 29) + Dates.Month(1) # 2024-02-29

# if you want to retrieve 'parts' of a date - use 'compound' methods
Dates.yearmonth(myDate2) # (2024, 1)
Dates.monthday(myDate2) # (1, 1)

# it is also possible to create a 'range' of dates
dr = Date(2023, 10, 3):Date(2023, 12, 2) # Date("2023-10-03"):Day(1):Date("2023-12-02")
collect(dr)
# 61-element Vector{Date}:
#  2023-10-03
#  2023-10-04
#  2023-10-05
#  2023-10-06
#  2023-10-07
#  2023-10-08
#  2023-10-09
#  2023-10-10
#  2023-10-11
#  ⋮
#  2023-11-24
#  2023-11-25
#  2023-11-26
#  2023-11-27
#  2023-11-28
#  2023-11-29
#  2023-11-30
#  2023-12-01
#  2023-12-02

# so we can do something like ...
for d in dr
    println(Dates.dayname(d))
end

# other helful functions exist ...
Dates.firstdayofweek(Date(2023, 11, 23)) # 2023-11-20
# ... adjust a date
Dates.firstdayofweek(Date(2023, 12, 22)) # 2023-12-18
Dates.lastdayofmonth(Date(2023, 07, 4)) # 2023-01-01

# it is also possible to work with 'periods' - see examples in the docs.