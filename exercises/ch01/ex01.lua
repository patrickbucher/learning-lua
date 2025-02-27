function fact(n)
    if n < 0 then
        return nil
    elseif n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

-- fact(-3) --> nil
-- fact(0) --> 1
-- fact(10) --> 3628800