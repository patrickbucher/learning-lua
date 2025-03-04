local input = arg[1]
local output = arg[2]

if input ~= nil then
    io.input(input)
end
if output ~= nil then
    io.output(output)
end

local lines = {}
for i = 1, math.huge do
    local line = io.read("l")
    if line == nil then
        break
    end
    table.insert(lines, line)
end

table.sort(lines)

for _, l in pairs(lines) do
    io.write(string.format("%s\n", l))
end
