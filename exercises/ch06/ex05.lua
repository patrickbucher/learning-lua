function without_nth(xs, n)
    local ys = {}
    local j = 1
    for i = 1, #xs do
        if i ~= n then
            ys[j] = xs[i]
            j = j + 1
        end
    end
    return ys
end

function combinations(xs)
    local perms = {}
    if #xs == 0 then
        return perms
    elseif #xs == 1 then
        return { xs }
    else
        for i = 1, #xs do
            local y = xs[i]
            local ys = without_nth(xs, i)
            local zs = combinations(ys)
            for j = 1, #zs do
                table.insert(perms, { y, table.unpack(zs[j]) })
            end
        end
    end
    return perms
end

for _, t in pairs(combinations({ 1, 2, 3, 4 })) do
    for _, v in pairs(t) do
        io.write(v, " ")
    end
    io.write("\n")
end
