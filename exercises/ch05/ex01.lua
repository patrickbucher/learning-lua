sunday = "monday"; monday = "sunday"
t = { sunday = "monday", [sunday] = monday }
print(t.sunday, t[sunday], t[t.sunday])

-- guess: monday sunday sunday
-- actual: monday sunday sunday