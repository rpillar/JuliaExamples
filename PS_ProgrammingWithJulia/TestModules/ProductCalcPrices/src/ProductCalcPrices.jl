module ProductCalcPrices

export Product, calc_vat

struct Product
    name::String
    price::Float64
end

function calc_vat(p::Product, quantity::Int64)
    vat = (p.price * quantity) * .2
    total = vat + p.price
    return (total, vat)
end

end # module ProductCalcPrices
