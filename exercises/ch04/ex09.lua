function ispali(s)
    local chars = {}
    for i = 1, utf8.len(s) do
        local j = utf8.offset(s, i)
        local k = utf8.offset(s, i + 1)
        local c = string.sub(s, j, k)
        local b = utf8.codepoint(c)
        chars[i] = utf8.char(b)
    end
    local n = #chars
    for i = 1, math.ceil(n / 2) do
        if chars[i] ~= chars[n - i + 1] then
            return false
        end
    end
    return true
end

print(ispali("dödel ledöd")) --> true
print(ispali("sügüs"))       --> true
print(ispali("mäöäm"))       --> true
print(ispali("sugüs"))       --> false
print(ispali("mäöam"))       --> false
