function remove(s, i, l)
    local left = string.sub(s, 1, i - 1)
    local right = string.sub(s, i + l)
    return left .. right
end

print(remove("hello world", 7, 4)) --> hello d
