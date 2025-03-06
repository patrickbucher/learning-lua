local find_last_newline = function(f)
    local size = f:seek("end")
    local pos = size - 1
    while pos > 0 do
        f:seek("set", pos)
        local s = f:read(1)
        if s == '\n' and pos ~= size - 1 then
            f:seek("set", 1)
            return pos
        else
            pos = pos - 1
        end
    end
end

local get_last_line = function(file)
    local f, err = io.open(file, "r")
    if err ~= nil or f == nil then
        return nil
    end
    local last_newline_at = find_last_newline(f)
    f:seek("set", last_newline_at + 1)
    local last_line = f:read("l")
    return last_line
end

local file = arg[1]
local last_line = get_last_line(file)
print(last_line)
