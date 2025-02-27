# Learning Lua

Using _Programming in Lua_ (4th Edition)

## Setup

Setup (Arch Linux):

```sh
$ sudo pacman -S lua
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