local find_last_newline = function(f)
    local step = 80
    local size = f:seek("end")
    local to = size
    local from = size - 80
    if from < 0 then
        from = 0
    end
    while to > 0 do
        f:seek("set", from)
        local chunk = to - from + 1
        local s = f:read(chunk)
    end
end

local get_last_line = function(file)
    local f, err = io.open(file, "r")
    if err ~= nil then
        return nil
    end
    local last_newline_at = find_last_newline(f)
end
