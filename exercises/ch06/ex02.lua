local rest = function(...)
    return select(2, ...)
end

print(rest(0, 1, 2, 3, 4, 5))
