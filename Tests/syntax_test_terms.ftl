# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

## Simple terms.

-term = Value
# <- meta.term.fluent entity.name.term.fluent
#^^^^^^^^^^^^^ meta.term.fluent
#^^^^ entity.name.term.fluent
#    ^ - entity - keyword
#     ^ keyword.operator.assignment.fluent
#      ^ - keyword - string
#       ^^^^^^ string.unquoted.fluent

-no-whitespace=Value
# <- meta.term.fluent entity.name.term.fluent
#^^^^^^^^^^^^^^^^^^^^ meta.term.fluent
#^^^^^^^^^^^^^ entity.name.term.fluent
#             ^ keyword.operator.assignment.fluent
#              ^^^^^^ string.unquoted.fluent

-not-a-comment = # Number sign.
#                ^^^^^^^^^^^^^^^ string.unquoted.fluent - comment

-incomplete
# <- meta.term.fluent entity.name.term.fluent
#^^^^^^^^^^ meta.term.fluent entity.name.term.fluent
#          ^ - entity - invalid

-empty =
# <- meta.term.fluent entity.name.term.fluent
#^^^^^^^ meta.term.fluent
#      ^ keyword.operator.assignment.fluent
#       ^ string.unquoted.fluent - keyword - invalid

-space = 
# <- meta.term.fluent entity.name.term.fluent
#^^^^^^^^ meta.term.fluent
#      ^ keyword.operator.assignment.fluent
#       ^ - keyword - string - invalid
#        ^ string.unquoted.fluent - keyword - invalid

-numeric-007_id
#^^^^^^^^^^^^^^ meta.term.fluent entity.name.term.fluent - constant

-snake_case
#^^^^^^^^^^ meta.term.fluent entity.name.term.fluent

-SNAKE_CAPS
#^^^^^^^^^^ meta.term.fluent entity.name.term.fluent

-long__snake
#    ^^^ meta.term.fluent entity.name.term.fluent

-long--kebab
#    ^^^ meta.term.fluent entity.name.term.fluent

-trailing-underscores__
#        ^ meta.term.fluent entity.name.term.fluent
#                    ^^ meta.term.fluent entity.name.term.fluent

-trailing_dashes--
#        ^ meta.term.fluent entity.name.term.fluent
#               ^^ meta.term.fluent entity.name.term.fluent

-W-_-W
# <- meta.term.fluent entity.name.term.fluent
#^^^^^ meta.term.fluent entity.name.term.fluent

-
# <- meta.term.fluent entity.name.term.fluent
#^ - invalid

- =
# <- meta.term.fluent entity.name.term.fluent
#^^^ meta.term.fluent - invalid


## Multiline terms.

-multiline = First line.
#           ^ - string
#            ^^^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
    # Second line.
#  ^ - string
#   ^^^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}

-multiline-with-space = 
#                      ^ meta.term.fluent - string
#                       ^ meta.term.fluent string.unquoted.fluent
    First line.
#  ^ - string
#   ^^^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
    # Second line.
#  ^ - string
#   ^^^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}


## Invalid terms.

--
#^ meta.term.fluent invalid.illegal.assignment-required.fluent

-_
#^ meta.term.fluent invalid.illegal.assignment-required.fluent

-0invalid
#^ meta.term.fluent invalid.illegal.assignment-required.fluent

-кириллица
#^ meta.term.fluent invalid.illegal.assignment-required.fluent

-incomplete-multiline
#                    ^ meta.term.fluent - invalid
    First line.
#   ^ meta.term.fluent invalid.illegal.assignment-required.fluent
    Second line.
#   ^ meta.term.fluent invalid.illegal.assignment-required.fluent

# !NOINDENT {{
-invalid-leading-bracket =
    [key]
#   ^ invalid.illegal.entry.fluent - meta.term
# }}
