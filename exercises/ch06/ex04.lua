local shuffle = function(xs)
    local ys = {}
    local n = #xs
    for i = 1, n do
        local j = math.random(1, #xs)
        table.insert(ys, xs[j])
        table.remove(xs, j)
    end
    return ys
end

print(table.unpack(shuffle({ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 })))
