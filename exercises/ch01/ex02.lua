function twice(x)
    return 2.0 * x
end

-- lua
-- > dofile("exercises/ch01/ex02.lua")
-- > twice(10)
-- 20.0

-- lua -l exercises/ch01/ex02 -e 'print(twice(10))'
-- 20.0