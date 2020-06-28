# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

key01 = {$var}
#        ^^^^ variable.other.fluent
#        ^ punctuation.definition.variable.fluent
#            ^ punctuation.section.interpolation.end.fluent - variable - invalid
key02 = {   $var   }
#           ^^^^ variable.other.fluent
#           ^ punctuation.definition.variable.fluent
#               ^ - variable - invalid
#                  ^ - variable - invalid
key03 = {
    $var
#   ^^^^ variable.other.fluent
#   ^ punctuation.definition.variable.fluent
}
# <- punctuation.section.interpolation.end.fluent - variable - invalid
key04 = {
$var}
#^^^ variable.other.fluent
# <- punctuation.definition.variable.fluent
#   ^ punctuation.section.interpolation.end.fluent - variable - invalid


## Errors

# ERROR Missing variable identifier
err01 = {$}
#        ^ variable.other.fluent punctuation.definition.variable.fluent - invalid
#         ^ punctuation.section.interpolation.end.fluent - variable - invalid
# ERROR Double $$
err02 = {$$var}
#        ^ variable.other.fluent punctuation.definition.variable.fluent - invalid
#         ^ invalid.illegal.juxtaposed-expressions.fluent
#          ^^^^ - invalid
# ERROR Invalid first char of the identifier
err03 = {$-var}
#        ^ variable.other.fluent punctuation.definition.variable.fluent - invalid
#         ^ invalid.illegal.juxtaposed-expressions.fluent
#          ^^^^ - invalid
