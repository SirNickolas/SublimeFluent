# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

#             ↓ BEL, U+0007
control0 = abcdef
#             ^ string.unquoted.fluent - invalid

#           ↓ DEL, U+007F
delete = abcdef
#           ^ string.unquoted.fluent - invalid

#             ↓ BPM, U+0082
control1 = abcdef
#             ^ string.unquoted.fluent - invalid
