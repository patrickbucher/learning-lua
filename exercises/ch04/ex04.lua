function insert(a, i, b)
    local j = utf8.offset(a, i)
    local left = string.sub(a, 1, j - 1)
    local right = string.sub(a, j)
    return left .. b .. right
end

print(insert("ação", 3, "-")) --> aç-ão
print(insert("ação", 5, "!")) --> ação!
