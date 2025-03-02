local insert_all = function(whole, pos, part)
    table.move(whole, pos, #whole, pos + #part)
    for i, v in pairs(part) do
        whole[pos + i - 1] = part[i]
    end
end

local whole = { 1, 2, 3, 7, 8, 9 }
insert_all(whole, 4, { 4, 5, 6 })
for _, v in pairs(whole) do
    print(v)
end
