N = 8

Calls_to_is_free_from_attacks = 0

function is_free_from_attacks(a, n, c)
    Calls_to_is_free_from_attacks = Calls_to_is_free_from_attacks + 1
    for i = 1, n - 1 do
        if (a[i] == c) or (a[i] - i == c - n) or (a[i] + i == c + n) then
            return false
        end
    end
    return true
end

function print_solution(a)
    for i = 1, N do
        for j = 1, N do
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end

function add_queen(a, n)
    if n > N then
        print_solution(a)
    else
        for c = 1, N do
            if is_free_from_attacks(a, n, c) then
                a[n] = c
                add_queen(a, n + 1)
            end
        end
    end
end

function original_solution()
    add_queen({}, 1)
    -- print(Calls_to_is_free_from_attacks)
end

-- $ lua -l exercises/ch02/ex02 -e 'original_solution()'
-- 15720

function permut(xs)
    local perms = {}
    if #xs == 0 then
        return perms
    elseif #xs == 1 then
        return { xs }
    else
        for i = 1, #xs do
            local y = xs[i]
            local ys = without_nth(xs, i)
            local zs = permut(ys)
            for j = 1, #zs do
                table.insert(perms, { y, table.unpack(zs[j]) })
            end
        end
    end
    return perms
end

function without_nth(xs, n)
    local ys = {}
    local j = 1
    for i = 1, #xs do
        if i ~= n then
            ys[j] = xs[i]
            j = j + 1
        end
    end
    return ys
end

function print_perms(xs)
    local perms = permut(xs)
    for i = 1, #perms do
        for j = 1, #perms[i] do
            io.write(perms[i][j], " ")
        end
        io.write("\n")
    end
end

-- permutations:
-- $ lua -l exercises/ch02/ex02 -e 'print_perms({1, 2, 3, 4, 5, 6, 7, 8})' | wc -l
-- 40320
-- There are 40320 permutations to check, more than twice as many as with the original solution!

function is_safe_candidate(perm)
    for j = 1, N do
        if not is_free_from_attacks(perm, j, perm[j]) then
            return false
        end
    end
    return true
end

function permutation_solution()
    local perms = permut({ 1, 2, 3, 4, 5, 6, 7, 8 })
    for i = 1, #perms do
        if is_safe_candidate(perms[i]) then
            print_solution(perms[i])
        end
    end
end

-- $ lua -l exercises/ch02/ex02 -e 'permutation_solution()'

-- Comparison
-- $ time lua -l exercises/ch02/ex02 -e 'original_solution()'
-- 0.023s
-- # time lua -l exercises/ch02/ex02 -e 'permutation_solution()'
-- 0.147s