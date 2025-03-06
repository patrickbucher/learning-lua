local mkdir = function(path)
    local cmd = string.format("mkdir %s", path)
    return os.execute(cmd)
end

local rmdir = function(path)
    local cmd = string.format("rm -rf %s", path)
    return os.execute(cmd)
end

local lsdir = function(path)
    local entries = {}
    local cmd = string.format("ls %s", path)
    print(cmd)
    local f = io.popen(cmd, "r")
    if f ~= nil then
        for e in f:lines() do
            table.insert(entries, e)
        end
        f:close()
    end
    return entries
end

mkdir("/tmp/lua-exercises")
rmdir("/tmp/lua-exercises")
local entries = lsdir("/tmp")
for _, e in pairs(entries) do
    print(e)
end
