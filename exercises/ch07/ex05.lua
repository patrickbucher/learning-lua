local find_nth_last_newline = function(f, n)
    local size = f:seek("end")
    local pos = size - 1
    while pos > 0 do
        f:seek("set", pos)
        local s = f:read(1)
        if s == '\n' and pos ~= size - 1 then
            n = n - 1
            if n == 0 then
                break
            end
        end
        pos = pos - 1
    end
    f:seek("set", 1)
    return pos
end

local get_nth_last_line = function(file, n)
    local f, err = io.open(file, "r")
    if err ~= nil or f == nil then
        return nil
    end
    local nth_last_newline_at = find_nth_last_newline(f, n)
    f:seek("set", nth_last_newline_at + 1)
    local buf = ""
    while true do
        local line = f:read("L")
        if line == nil then
            break
        end
        buf = buf .. line
    end
    return buf
end

local file = arg[1]
local n = tonumber(arg[2])
local last_line = get_nth_last_line(file, n)
print(last_line)
