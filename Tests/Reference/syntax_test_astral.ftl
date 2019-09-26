# SYNTAX TEST "Packages/Fluent/Fluent.sublime-syntax"

face-with-tears-of-joy = 😂
#                        ^ string.unquoted.fluent - invalid
tetragram-for-centre = 𝌆
#                      ^ string.unquoted.fluent - invalid

surrogates-in-text = \uD83D\uDE02
#                    ^^^^^^^^^^^^ string.unquoted.fluent - constant - invalid
surrogates-in-string = {"\uD83D\uDE02"}
#                        ^^^^^^^^^^^^ invalid.deprecated.character.escape.fluent
surrogates-in-adjacent-strings = {"\uD83D"}{"\uDE02"}
#                                  ^^^^^^ invalid.deprecated.character.escape.fluent
#                                            ^^^^^^ invalid.deprecated.character.escape.fluent

emoji-in-text = A face 😂 with tears of joy.
#                      ^^ string.unquoted.fluent - invalid
emoji-in-string = {"A face 😂 with tears of joy."}
#                          ^^ string.quoted.double.fluent - invalid

# ERROR Invalid identifier
err-😂 = Value
#   ^ meta.message.fluent invalid.illegal.fluent

# ERROR Invalid expression
err-invalid-expression = { 😂 }
#                          ^ invalid.illegal.fluent
#                            ^ meta.message.fluent meta.interpolation.fluent punctuation.section.interpolation.end.fluent - invalid

# ERROR Invalid variant key
err-invalid-variant-key = { $sel ->
    *[😂] Value
#     ^ meta.variant-key.fluent invalid.illegal.fluent
#      ^ meta.variant-key.fluent punctuation.section.brackets.end.fluent - invalid
#        ^^^^^ string.unquoted.fluent - invalid
}
