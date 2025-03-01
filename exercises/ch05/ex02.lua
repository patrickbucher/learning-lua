a = {}; a.a = a

print(a.a.a.a) --> table
-- the first a is a global variable
-- the second a and the following as are indices

a.a.a.a = 3
print(a.a.a.a)
-- now an error is thrown, because the reference to the table is no longer a table