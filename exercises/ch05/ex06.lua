local is_sequence = function(t)
    local indices = {}
    for k, _ in pairs(t) do
        table.insert(indices, k)
    end
    for i, j in pairs(indices) do
        if i ~= j then
            return false
        end
    end
    return true
end

print(is_sequence({ "a", "b", "c", "d" }))                         -- true
print(is_sequence({ [1] = "a", [2] = "b", [3] = "c", [4] = "d" })) -- false
