function calculate(poly, x)
    local sum = 0.0
    for i = 1, #poly do
        local a = poly[i]
        sum = sum + a * x ^ (i - 1)
    end
    return sum
end

-- { 2, 3, 1 }
-- 2 + 3x¹ + x²
-- x = 2: 2 + 6 + 4 = 12
print(calculate({ 2, 3, 1 }, 2)) --> 12.0
