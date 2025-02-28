function insert(a, i, b)
    local left = string.sub(a, 1, i - 1)
    local right = string.sub(a, i)
    return left .. b .. right
end

print(insert("hello world", 1, "start: ")) --> start: hello world
print(insert("hello world", 7, "small "))  --> hello small world
