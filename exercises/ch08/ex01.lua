local fizzbuzz_idiomatic = function(n)
    for i = 1, n do
        if i % 15 == 0 then
            print('FizzBuzz')
        elseif i % 3 == 0 then
            print('Fizz')
        elseif i % 5 == 0 then
            print('Buzz')
        else
            print(i)
        end
    end
end

local fizzbuzz_strange = function(n)
    for i = 1, n do
        if i % 15 == 0 then
            print('FizzBuzz')
        else
            if i % 3 == 0 then
                print('Fizz')
            else
                if i % 5 == 0 then
                    print('Buzz')
                else
                    print(i)
                end
            end
        end
    end
end

fizzbuzz_idiomatic(20)
fizzbuzz_strange(20)

-- Blocks need to be terminated in Lua using the end keyword. In C-like
-- languages, a single statement (e.g. an if statement) can be used without
-- termination.  Furthermore, Lua probably has a single-pass compiler, so it
-- doesn't look ahead whether or not else is followed by an if or not. And there
-- can only be one single else block that is not further constrainted using an
-- if.
