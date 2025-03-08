local N = 3

-- This is not really unconditional, because a long-running event loop could
-- terminate after a while by reaching math.huge.
for i = 1, math.huge do
    print(i)
    if i == N then
        break
    end
end

-- This is my favorite way, because you see straight away that it's an
-- unterminated loop.
local i = 1
while true do
    print(i)
    if i == N then
        break
    end
    i = i + 1
end

-- Here you need to jump to the end of the loop to find the condition.
i = 1
repeat
    print(i)
    if i == N then
        break
    end
    i = i + 1
until false

-- This is short, but the intent (writing a loop) is not immediately clear.
i = 1
::start::
print(i)
if i < N then
    i = i + 1
    goto start
end

-- Answr: I prefer while true.