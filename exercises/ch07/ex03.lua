local timed = function(f)
    local before = os.clock()
    f()
    local after = os.clock()
    return after - before
end

local redirect_io = function(source, sink)
    if source ~= nil then
        io.input(source)
    end
    if sink ~= nil then
        io.output(sink)
    end
end

local copy = function(chunk)
    return function(source, sink)
        redirect_io(source, sink)
        for i = 0, math.huge do
            local data = io.read(chunk)
            if data == nil or chunk == 'a' then
                break
            end
            io.write(data)
        end
    end
end

local source = "/usr/share/dict/ngerman"
local sink = "/tmp/ngerman"
local funcs = {
    ["byte by byte"] = copy(1),
    ["line by line"] = copy("l"),
    ["in 8kb chunk"] = copy(2 ^ 13),
    ["file at once"] = copy("a"),
}
for name, func in pairs(funcs) do
    local duration = timed(function() func(source, sink) end)
    print(string.format("%s: %.5fs", name, duration))
end
