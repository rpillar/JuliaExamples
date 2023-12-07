# 'if' statements / use of the 'ternary' operator
# note that in julia only 'boolean' values are accepted in 'if' conditions - unlike
# other programming languages.

paid = true
if paid
    println("The customer has paid for the order")
end 
if !paid
    println("The customer has not paid for the order")
end

# simple if conditions such as the ^^ could be written in a 'short' form as :-
paid && println("The customer has paid for the order")
paid || println("The customer has not paid for the order")

# if /else
if paid
    println("The customer has paid for the order")
else
    println("The customer has not paid for the order")
end

# this if / else expressed as a 'ternary' :-
paid ? println("The customer has paid for the order") : println("The customer has not paid for the order")

# the 'result' of an 'if' statement can be assigned to a variable
price = 90
high_cost = if price > 100
                true
            else
                false
            end
# NOTE - this could just as easily be re-written using the ternary operator

# a more complicated if/elseif/else
shipped = false
status = if paid && shipped
            "Waiting for delivery"
        elseif paid && !shipped
            "Preparing"
        else
            "Pending"
        end # "Preparing"
