# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

## Literal text
text-backslash-one = Value with \ a backslash
#                               ^^ string.unquoted.fluent - constant - invalid
text-backslash-two = Value with \\ two backslashes
#                               ^^^ string.unquoted.fluent - constant - invalid
text-backslash-brace = Value with \{placeable}
#                                 ^ string.unquoted.fluent - constant - invalid
#                                  ^ meta.interpolation.fluent - string - constant
text-backslash-u = \u0041
#                  ^^ string.unquoted.fluent - constant - invalid
text-backslash-backslash-u = \\u0041
#                            ^^^ string.unquoted.fluent - constant - invalid

## String literals
quote-in-string = {"\""}
#                   ^^ string.quoted.double.fluent constant.character.escape.fluent
#                   ^ meta.escape-backslash.fluent
backslash-in-string = {"\\"}
#                       ^^ string.quoted.double.fluent constant.character.escape.fluent
#                       ^ meta.escape-backslash.fluent
# ERROR Mismatched quote
mismatched-quote = {"\\""}
#                    ^^ string.quoted.double.fluent constant.character.escape.fluent
#                    ^ meta.escape-backslash.fluent
#                       ^ invalid.illegal.juxtaposed-expressions.fluent
# ERROR Unknown escape
unknown-escape = {"\x"}
#                  ^^ string.quoted.double.fluent invalid.illegal.character.escape.fluent
#                  ^ meta.escape-backslash.fluent
# ERROR Multiline literal
invalid-multiline-literal = {"
#                             ^ string.quoted.double.fluent invalid.illegal.unclosed-string.fluent
 "}
# <- meta.interpolation.fluent - invalid
#^ meta.interpolation.fluent invalid.illegal.juxtaposed-expressions.fluent

## Unicode escapes
string-unicode-4digits = {"\u0041"}
#                          ^^^^^^ string.quoted.double.fluent constant.character.escape.fluent
#                          ^ meta.escape-backslash.fluent
escape-unicode-4digits = {"\\u0041"}
#                          ^^ string.quoted.double.fluent constant.character.escape.fluent
#                          ^ meta.escape-backslash.fluent
#                            ^^^^^ string.quoted.double.fluent - constant - invalid
string-unicode-6digits = {"\U01F602"}
#                          ^^^^^^^^ string.quoted.double.fluent constant.character.escape.fluent
#                          ^ meta.escape-backslash.fluent
escape-unicode-6digits = {"\\U01F602"}
#                          ^^ string.quoted.double.fluent constant.character.escape.fluent
#                          ^ meta.escape-backslash.fluent
#                            ^^^^^^^ string.quoted.double.fluent - constant - invalid

# OK The trailing "00" is part of the literal value.
string-too-many-4digits = {"\u004100"}
#                           ^^^^^^ string.quoted.double.fluent constant.character.escape.fluent
#                           ^ meta.escape-backslash.fluent
#                                 ^^ string.quoted.double.fluent - constant - invalid
# OK The trailing "00" is part of the literal value.
string-too-many-6digits = {"\U01F60200"}
#                           ^^^^^^^^ string.quoted.double.fluent constant.character.escape.fluent
#                           ^ meta.escape-backslash.fluent
#                                   ^^ string.quoted.double.fluent - constant - invalid

# ERROR Too few hex digits after \u.
string-too-few-4digits = {"\u41"}
#                          ^^^^ invalid.illegal.character.escape.fluent
#                          ^ meta.escape-backslash.fluent
# ERROR Too few hex digits after \U.
string-too-few-6digits = {"\U1F602"}
#                          ^^^^^^^ invalid.illegal.character.escape.fluent
#                          ^ meta.escape-backslash.fluent

## Literal braces
brace-open = An opening {"{"} brace.
#                        ^^^ meta.string.fluent string.quoted.double.fluent
#                         ^ - punctuation - constant - invalid
brace-close = A closing {"}"} brace.
#                        ^^^ meta.string.fluent string.quoted.double.fluent
#                         ^ - punctuation - constant - invalid
