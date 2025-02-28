function remove(s, i, l)
    local j = utf8.offset(s, i)
    local k = utf8.offset(s, i + l)
    local left = string.sub(s, 1, j - 1)
    local right = string.sub(s, k)
    return left .. right
end

print(remove("ação", 2, 2)) --> ao
