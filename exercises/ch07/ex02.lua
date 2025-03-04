local input = arg[1]
local output = arg[2]

if output ~= nil then
    local f, err = io.open(output, "r")
    print(f)
    if err == nil then
        print(string.format("%s already exists. Overwrite? [y/n]", output))
        local answer = io.read("l")
        if answer == "n" then
            os.exit(0)
        end
    elseif f ~= nil then
        f:close()
    end
    io.output(output)
end
if input ~= nil then
    io.input(input)
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
