function cone_volume(h, theta)
    local r = h / math.atan(theta)
    return (math.pi * r ^ 2 * h) / 3
end

-- lua -l exercises/ch03/ex05 -e 'print(cone_volume(1, 45))'