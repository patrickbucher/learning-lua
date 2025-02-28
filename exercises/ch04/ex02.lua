-- I would put those bytes in a table; one byte per line.
local bytes = {
    0x48,
    0x65,
    0x6c,
    0x6c,
    0x6f,
    0x2c,
    0x20,
    0x57,
    0x6f,
    0x72,
    0x6c,
    0x64,
    0x21,
}
local s = ""
for i = 1, #bytes do
    s = s .. string.char(bytes[i])
end
print(s) --> "Hello, World!"