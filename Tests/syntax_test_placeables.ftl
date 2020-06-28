# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

brace-at-bol =
{""}First line
# <- meta.message.fluent meta.interpolation.fluent punctuation.section.interpolation.begin.fluent - string
#   ^^^^^^^^^^ string.unquoted.fluent
# !NOINDENT {{
    # Second line
#  ^ - string
#   ^^^^^^^^^^^^^ string.unquoted.fluent - comment
# }}

select-expression = {$count ->
#                           ^^ keyword.operator.select.fluent - meta.variant-list
#                             ^ meta.variant-list.fluent
    [zero] Z
# <- meta.variant-list.fluent
#^^^^^^^^^^^^ meta.variant-list.fluent
#   ^^^^^^ meta.brackets.fluent
#   ^ punctuation.section.brackets.begin.fluent
#    ^^^^ meta.variant-key.fluent constant.language.plural-category.fluent
#        ^ punctuation.section.brackets.end.fluent
#         ^ - meta.brackets - string
#          ^^ string.unquoted.fluent
    [1] 1
#    ^ meta.variant-key.fluent constant.numeric.fluent
#       ^^ string.unquoted.fluent
   *[something] X
#  ^ keyword.operator.default.fluent
#   ^^^^^^^^^^^ meta.brackets.fluent
#    ^^^^^^^^^ meta.variant-key.fluent string.unquoted.fluent
#               ^^ string.unquoted.fluent
   *[other] Y
#  ^ invalid.illegal.multiple-defaults.fluent
#   ^^^^^^^ meta.brackets.fluent
#           ^^ string.unquoted.fluent
}

nested-select = {$x ->
    [0] {$y ->
#    ^ meta.variant-key.fluent
#           ^^ meta.interpolation.fluent meta.interpolation.fluent keyword.operator.select.fluent
        [0] ZZ
#       ^^^^^^^ meta.interpolation.fluent meta.interpolation.fluent
#        ^ meta.variant-key.fluent constant.numeric.fluent
#           ^^^ string.unquoted.fluent
       *[1] ZN
#      ^^^^^^^^ meta.interpolation.fluent meta.interpolation.fluent
#      ^ keyword.operator.default.fluent
#        ^ meta.variant-key.fluent constant.numeric.fluent
#           ^^^ string.unquoted.fluent
    }
   *[1] {$y ->
#  ^ keyword.operator.default.fluent - meta.interpolation meta.interpolation
#    ^ meta.variant-key.fluent
#           ^^ meta.interpolation.fluent meta.interpolation.fluent keyword.operator.select.fluent
        [0] NZ
#       ^^^^^^^ meta.interpolation.fluent meta.interpolation.fluent
#        ^ meta.variant-key.fluent constant.numeric.fluent
#           ^^^ string.unquoted.fluent
       *[1] NN
#      ^ keyword.operator.default.fluent
#        ^ meta.variant-key.fluent constant.numeric.fluent
#           ^^^ string.unquoted.fluent
    }
}

select-select = {{$a ->
#                    ^^ meta.interpolation.fluent meta.interpolation.fluent keyword.operator.select.fluent
   *[0] A
#  ^^^^^^^ meta.interpolation.fluent meta.interpolation.fluent
#  ^ keyword.operator.default.fluent
#    ^ meta.variant-key.fluent constant.numeric.fluent
#       ^^ string.unquoted.fluent
} ->
# ^^ meta.interpolation.fluent keyword.operator.select.fluent - meta.interpolation meta.interpolation
   *[1] B
#  ^^^^^^^ meta.interpolation.fluent - meta.interpolation meta.interpolation
#  ^ keyword.operator.default.fluent
#    ^ meta.variant-key.fluent constant.numeric.fluent
#       ^^ string.unquoted.fluent
}C
# <- meta.message.fluent meta.interpolation.fluent punctuation.section.interpolation.end.fluent - string
#^^ meta.message.fluent string.unquoted.fluent

unclosed-select = {0 ->
    error
#   ^ meta.variant-list.fluent invalid.illegal.variant.fluent
    error
#   ^ meta.variant-list.fluent invalid.illegal.variant.fluent
# !NOINDENT {{
error
# <- meta.interpolation.fluent invalid.illegal.juxtaposed-expressions.fluent - meta.variant-list
# }}
message
# <- meta.message.fluent entity.name.message.fluent - meta.interpolation - string - invalid
