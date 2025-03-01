local escape_sequences = { ["\n"] = "newline", ["\b"] = "backspace" } -- etc.
print(escape_sequences["\n"])
print(escape_sequences["\b"])