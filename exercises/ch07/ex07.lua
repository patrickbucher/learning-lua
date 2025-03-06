os.execute("cd /tmp")
local f = io.popen("pwd", "r")
if f ~= nil then
    for e in f:lines() do
        print(e)
    end
    f:close()
end

-- os.execute runs a subprocess in which the working directory is changed, but the script's working directory remains the same.
