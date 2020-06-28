# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

## Simple messages.

msg = Value
# <- meta.message.fluent entity.name.message.fluent
#^^^^^^^^^^ meta.message.fluent
#^^ entity.name.message.fluent
#  ^ - entity - keyword
#   ^ keyword.operator.assignment.fluent
#    ^ - keyword - string
#     ^^^^^ string.unquoted.fluent

no-whitespace=Value
# <- meta.message.fluent entity.name.message.fluent
#^^^^^^^^^^^^^^^^^^ meta.message.fluent
#^^^^^^^^^^^^ entity.name.message.fluent
#            ^ keyword.operator.assignment.fluent
#             ^^^^^ string.unquoted.fluent

not-a-comment = # Number sign.
#               ^^^^^^^^^^^^^^ string.unquoted.fluent - comment

incomplete
# <- meta.message.fluent entity.name.message.fluent
#^^^^^^^^^ meta.message.fluent entity.name.message.fluent
#         ^ - entity - invalid

empty =
# <- meta.message.fluent entity.name.message.fluent
#^^^^^^ meta.message.fluent
#     ^ keyword.operator.assignment.fluent
#      ^ string.unquoted.fluent - keyword - invalid

space = 
# <- meta.message.fluent entity.name.message.fluent
#^^^^^^^ meta.message.fluent
#     ^ keyword.operator.assignment.fluent
#      ^ - keyword - string - invalid
#       ^ string.unquoted.fluent - keyword - invalid

numeric-007_id
#^^^^^^^^^^^^^ meta.message.fluent entity.name.message.fluent - constant

snake_case
#^^^^^^^^^ meta.message.fluent entity.name.message.fluent

SNAKE_CAPS
#^^^^^^^^^ meta.message.fluent entity.name.message.fluent

long__snake
#   ^^^ meta.message.fluent entity.name.message.fluent

long--kebab
#   ^^^ meta.message.fluent entity.name.message.fluent

trailing-underscores__
#       ^ meta.message.fluent entity.name.message.fluent
#                   ^^ meta.message.fluent entity.name.message.fluent

trailing_dashes--
#       ^ meta.message.fluent entity.name.message.fluent
#              ^^ meta.message.fluent entity.name.message.fluent

W-_-W
# <- meta.message.fluent entity.name.message.fluent
#^^^^ meta.message.fluent entity.name.message.fluent


## Multiline messages.

multiline = First line.
#          ^ - string
#           ^^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
    # Second line.
#  ^ - string
#   ^^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}

multiline-with-space = 
#                     ^ meta.message.fluent - string
#                      ^ meta.message.fluent string.unquoted.fluent
    First line.
#  ^ - string
#   ^^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
    # Second line.
#  ^ - string
#   ^^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}


## Invalid messages.

# !NOINDENT {{
=
# <- invalid.illegal.fluent - meta.message

 =
# <- - meta.message - invalid
#^ invalid.illegal.fluent - meta.message

0invalid
# <- invalid.illegal.fluent - meta.message

_invalid
# <- invalid.illegal.fluent - meta.message
# }}

missing-assignment # Value
#                 ^ meta.message.fluent - entity - string - invalid
#                  ^ invalid.illegal.fluent
#                   ^^^^^^ string.unquoted.fluent - comment

invalid-char?!
#           ^ meta.message.fluent invalid.illegal.fluent

invalid-кириллица
#       ^ meta.message.fluent invalid.illegal.fluent

# !NOINDENT {{
кириллица-invalid
# <- invalid.illegal.fluent - meta.message
# }}

incomplete-multiline
#                   ^ meta.message.fluent - invalid
    First line.
#   ^ meta.message.fluent invalid.illegal.fluent
    Second line.
#   ^ meta.message.fluent invalid.illegal.fluent

# !NOINDENT {{
invalid-leading-bracket =
    [key]
#   ^ invalid.illegal.fluent - meta.message
# }}
