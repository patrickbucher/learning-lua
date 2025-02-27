# Learning Lua

Using _Programming in Lua_ (4th Edition)

## Setup

Setup (Arch Linux):

```sh
$ sudo pacman -S lua luarocks
```

## Usage

Interactive:

```sh
$ lua
> print("Hello, Lua!")
```

Script file (`examples/hello.lua`):

```lua
#!/usr/bin/env lua

print("Hello, Lua!")
```

Running the script file:

```sh
$ lua examples/hello.lua

$ chmod +x examples/hello.lua
$ examples/hello.lua
```

Loading the script file from an interactive session:

```sh
$ lua
> dofile("examples/hello.lua")
```

Run interactive session after executing a script:

```sh
$ lua -i examples/hello.lua
>
```

Example library script (`examples/hypot.lua`):

```lua
function hypot(a, b)
    return math.sqrt(a ^ 2 + b ^ 2)
end
```

Load library and execute an expression:

```sh
$ lua -l examples/hypot -e 'print(hypot(3, 4))'
5.0
```

## Links

- [Official Website](https://lua.org/)
    - [Reference Manual (Lua 5.4)](https://lua.org/manual/5.4/)
- [Programming in Lua (Book)](https://lua.org/pil/)
- [LuaRocks](https://luarocks.org/)
    - [Documentation](https://github.com/luarocks/luarocks/blob/master/docs/index.md)