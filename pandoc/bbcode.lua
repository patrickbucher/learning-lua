function processListPlain(p)
    return string.format('\n[*] %s', pandoc.utils.stringify(p:walk(filters)))
end

function processBulletList(bl)
    local inner = bl:walk {
        BulletList = function(l) processBulletList(l.content) end,
    }
    return string.format('[list]\n%s\n[/list]', pandoc.utils.stringify(inner))
end

function processOrderedList(bl)
    local inner = bl:walk {
        BulletList = function(l) processOrderedList(l.content) end,
    }
    return string.format('[list=1]\n%s\n[/list]', pandoc.utils.stringify(inner))
end

filters = {
    Header = function(h)
        local headerSizes = {
            [1] = 150, [2] = 130, [3] = 120, [4] = 115, [5] = 110, [6] = 105,
        }
        local size = headerSizes[h.level]
        local content = pandoc.utils.stringify(h.content)
        return string.format('[size=%d][b]%s[/b][/size]', size, content)
    end,
    Strong = function(s)
        return string.format('[b]%s[/b]', pandoc.utils.stringify(s))
    end,
    Emph = function(e)
        return string.format('[i]%s[/i]', pandoc.utils.stringify(e))
    end,
    Code = function(c)
        return string.format('[tt]%s[/tt]', pandoc.utils.stringify(c))
    end,
    BlockQuote = function(bq)
        local str = pandoc.utils.stringify(bq)
        return pandoc.RawBlock('plain', string.format('[quote]\n%s\n[/quote]', str))
    end,
    CodeBlock = function(cb)
        return pandoc.RawBlock('plain', string.format('[code]\n%s\n[/%s]', cb.text, 'code'))
    end,
    Link = function(l)
        local content = pandoc.utils.stringify(l.content)
        return string.format('[url=%s]%s[/url]', l.target, content)
    end,
    Plain = processListPlain,
    BulletList = processBulletList,
    OrderedList = processOrderedList,
}

function Writer(doc, _opts)
    return pandoc.write(doc:walk(filters), 'plain', { wrap_text = 'wrap-none' })
end

-- usage: pandoc -t bbcode.lua input.md -o output.txt
