# working with CSV files - often used in conjunction with the DataFrames package

using CSV
using DataFrames

# create a simple DataFrame
df = DataFrame(order_id=1:3,
    product=["apple", "orange", "pineapple"],
    price=[0.33, 0.25, 1.05])
# 3×3 DataFrame
#  Row │ order_id  product    price   
#      │ Int64     String     Float64 
# ─────┼──────────────────────────────
#    1 │        1  apple         0.33
#    2 │        2  orange        0.25
#    3 │        3  pineapple     1.05

df.product
# 3-element Vector{String}:
#  "apple"
#  "orange"
#  "pineapple"

# we can plot our data
using Plots
plot(df.product, df.price)

# save our data to a CSV file
CSV.write("../Data/new_order.csv", df)
# order_id,product,price
# 2,orange,0.25
# 1,apple,0.33
# 3,pineapple,1.05