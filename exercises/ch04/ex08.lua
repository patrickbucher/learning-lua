function ispali(s)
    local chars = ""
    for i = 1, #s do
        local c = string.sub(s, i, i + 1)
        local b = string.byte(c)
        if b >= 65 and b <= 90 or b >= 97 and b <= 122 then
            chars = chars .. string.char(b)
        end
    end
    return chars == string.reverse(chars)
end

print(ispali("step    on no pets")) --> true
print(ispali("banana"))             --> false
