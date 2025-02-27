function is_boolean(expr)
    return expr == true or expr == false
end

-- > is_boolean(true)
-- true
-- > is_boolean(false)
-- true
-- > is_boolean(3)
-- false
-- > is_boolean("foo")
-- false
-- > is_boolean(nil)
-- false