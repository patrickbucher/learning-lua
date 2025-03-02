local round = function(x)
    local lower = math.floor(x)
    local upper = math.ceil(x)
    if math.abs(x - lower) < math.abs(x - upper) then
        return lower
    else
        return upper
    end
end

local round_to = function(x, granularity)
    local factor = 1.0 / granularity
    return round((x * factor)) / factor
end

local numbers = { 0.499, 0.5, 0.501, 1 / 2, 10 / 3 }
for i = 1, #numbers do
    local n = numbers[i]
    print(round(n))
end

for i = 1, #numbers do
    local n = numbers[i]
    print(round_to(n, 0.1))
end
