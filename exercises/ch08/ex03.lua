local read_number_head = function()
    local x = 0
    while true do
        io.write("Enter a number: ")
        x = io.read("n")
        if x ~= nil then
            break
        else
            _ = io.read()
        end
    end
    return x
end

local read_number_foot = function()
    local x = 0
    repeat
        io.write("Enter a number: ")
        x = io.read("n")
        _ = io.read()
    until x ~= nil
    return x
end

local x = read_number_head()
io.write(string.format("%d²=%d\n", x, x * x))

local y = read_number_foot()
io.write(string.format("%d²=%d\n", y, y * y))

-- The repeat/until loop is at least executed once, which is shorter than a
-- while loop if at leats one execution is required, as with user input or the
-- like.