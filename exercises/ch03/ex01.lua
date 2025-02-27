print(.0e12) --> 0
-- invalid: .e12
-- invalid: 0.0e
print(0x12) --> 18
-- invalid: 0xABFG
print(0xA) --> 10
-- invalid: FFFF (nil)
print(0xFFFFFFFF) --> 4294967295
-- invalid: 0x
print(0x1P10) --> 1024 (2^10)
print(0.1e1) --> 1.0
print(0x0.1p1) --> 0.125 (1/8)