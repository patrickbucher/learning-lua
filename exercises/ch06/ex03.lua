local all_but_last = function(...)
    local t = table.pack(...)
    table.remove(t, #t)
    return table.unpack(t)
end

print(all_but_last(1, 2, 3, 4, 5))
