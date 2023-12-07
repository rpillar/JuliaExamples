# using databases using Julia - using SQLite

using SQLite

db = SQLite.DB("../Data/sqlite.db")
DBInterface.execute(db, "create table customer(id INTEGER, name TEXT, age INTEGER)")

# to write data into our 'customer' table - first the 'prepare' method to 
# validate and create the appropriate query - then execute
stmt = DBInterface.prepare(db, "insert into customer values(?, ?, ?)")
DBInterface.execute(stmt, (1, "Richard", 21))

# it is possible to insert 'many' rows by using arrays for our data
DBInterface.executemany(stmt, ([2,3], ["Dawn", "Sam"], [23, 17]))

# to read data from our database ...
rows = DBInterface.execute(db, "select * from customer")
for row in rows
    println(string(row.name, " / ", row.age))
end
# Richard / 21
# Dawn / 23
# Sam / 17

# it is possible to create a DataFrame from the results of a query
using DataFrames
df = DataFrame(DBInterface.execute(db, "select * from customer"))
# 3×3 DataFrame
#  Row │ id     name     age   
#      │ Int64  String   Int64 
# ─────┼───────────────────────
#    1 │     1  Richard     21
#    2 │     2  Dawn        23
#    3 │     3  Sam         17

# always 'close' the database handle
DBInterface.close!(db)