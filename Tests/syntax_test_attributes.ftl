# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

.orphan = Value
# <- invalid.illegal.entry.fluent - meta.attribute

message = Value
#
# <- meta.message.fluent comment.line.number-sign.fluent
    .attr = Value
#  ^^^^^^^^^^^^^^^ meta.message.fluent
#  ^ - meta.attribute
#   ^^^^^^^^^^^^^^ meta.attribute.fluent
#   ^ punctuation.accessor.dot.fluent
#    ^^^^ entity.name.attribute.fluent
#        ^ - entity - keyword
#         ^ keyword.operator.assignment.fluent
#           ^^^^^^ string.unquoted.fluent

#
# <- meta.message.fluent meta.attribute.fluent comment.line.number-sign.fluent
    .no-whitespace=Value
#  ^^^^^^^^^^^^^^^^^^^^^^ meta.message.fluent meta.attribute.fluent
#   ^ punctuation.accessor.dot.fluent
#    ^^^^^^^^^^^^^ entity.name.attribute.fluent
#                 ^ keyword.operator.assignment.fluent
#                  ^^^^^^ string.unquoted.fluent

.unindented = Value
# <- meta.message.fluent meta.attribute.fluent punctuation.accessor.dot.fluent
#^^^^^^^^^^ entity.name.attribute.fluent
#           ^ keyword.operator.assignment.fluent

    .not-a-comment = # Number sign.
#                    ^^^^^^^^^^^^^^ string.unquoted.fluent - comment

    .incomplete
#   ^ punctuation.accessor.dot.fluent
#    ^^^^^^^^^^ entity.name.attribute.fluent
#              ^ meta.message.fluent meta.attribute.fluent - entity - invalid

    .empty =
#   ^ punctuation.accessor.dot.fluent
#    ^^^^^ entity.name.attribute.fluent
#          ^ keyword.operator.assignment.fluent
#           ^ string.unquoted.fluent - keyword - invalid

    .space = 
#   ^ punctuation.accessor.dot.fluent
#    ^^^^^ entity.name.attribute.fluent
#          ^ keyword.operator.assignment.fluent
#           ^ - keyword - string - invalid
#            ^ string.unquoted.fluent - keyword - invalid

    .multiline = First line.
#               ^ - string
#                ^^^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
        # Second line.
#      ^ - string
#       ^^^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}

    .multiline-with-space = 
#                          ^ meta.message.fluent - string
#                           ^ meta.message.fluent string.unquoted.fluent
        First line.
#      ^ - string
#       ^^^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
        # Second line.
#      ^ - string
#       ^^^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}

.=
# <- meta.message.fluent meta.attribute.fluent punctuation.accessor.dot.fluent - entity
#^ meta.message.fluent meta.attribute.fluent keyword.operator.assignment.fluent - entity

.missing-assignment # Value
#                  ^ meta.attribute.fluent - entity - string - invalid
#                   ^ invalid.illegal.assignment-required.fluent
#                    ^^^^^^^ string.unquoted.fluent - comment

.invalid-char?!
#            ^ meta.attribute.fluent invalid.illegal.assignment-required.fluent

.invalid-кириллица
#        ^ meta.attribute.fluent invalid.illegal.assignment-required.fluent

.кириллица-invalid
#^ meta.attribute.fluent invalid.illegal.assignment-required.fluent

.incomplete-multiline
#                    ^ meta.attribute.fluent - invalid
    First line.
#   ^ meta.attribute.fluent invalid.illegal.assignment-required.fluent
#              ^ meta.message.fluent string.unquoted.fluent
    Second line.
#   ^ meta.attribute.fluent invalid.illegal.assignment-required.fluent
#               ^ meta.message.fluent string.unquoted.fluent

# !NOINDENT {{
.invalid-leading-bracket =
    [key]
#   ^ invalid.illegal.entry.fluent - meta.message - meta.attribute
# }}
