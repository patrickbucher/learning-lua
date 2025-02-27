function gaussian()
    -- FIXME: this is bogus...
    local z = math.random() - 0.5 -- -0.5..+0.5
    return math.exp((-z ^ 2 / 2)) / math.sqrt(2 * math.pi)
end

for i = 1, 10 do
    print(gaussian())
end
