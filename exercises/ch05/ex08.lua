local concat = function(t)
    local str = ""
    for _, v in pairs(t) do
        str = str .. v
    end
    return str
end

print(concat({ "This", " ", "is", " ", "boring." }))

local benchmark = function(f)
    local started = os.clock()
    f()
    local finished = os.clock()
    return finished - started
end

local load = {}
for _ = 1, 100000 do
    table.insert(load, tostring(math.random(0, 9)))
end

print(benchmark(function() local str = concat(load) end))       -- ~0.1
print(benchmark(function() local str = table.concat(load) end)) -- ~0.001
