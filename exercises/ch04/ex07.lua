function ispali(s)
    return s == string.reverse(s)
end

print(ispali("step on no pets")) --> true
print(ispali("banana")) --> false