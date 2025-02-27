function foo(x, y, z)
    return (x and y and (not z)) or ((not y) and x)
end

function bar(x, y, z)
    return x and y and not z or not y and x
end

-- The parentheses are not necessary, but improve legibility.