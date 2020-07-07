# SYNTAX TEST "Packages/Fluent/Src/Fluent.sublime-syntax"

int-zero = {0}
#           ^ constant.numeric.fluent
int-positive = {1}
#               ^ constant.numeric.fluent
int-negative = {-1}
#               ^^ constant.numeric.fluent
int-negative-zero = {-0}
#                    ^^ constant.numeric.fluent

int-positive-padded = {01}
#                      ^^ constant.numeric.fluent
int-negative-padded = {-01}
#                      ^^^ constant.numeric.fluent
int-zero-padded = {00}
#                  ^^ constant.numeric.fluent
int-negative-zero-padded = {-00}
#                           ^^^ constant.numeric.fluent

float-zero = {0.0}
#             ^^^ constant.numeric.fluent
float-positive = {0.01}
#                 ^^^^ constant.numeric.fluent
float-positive-one = {1.03}
#                     ^^^^ constant.numeric.fluent
float-positive-without-fraction = {1.000}
#                                  ^^^^^ constant.numeric.fluent

float-negative = {-0.01}
#                 ^^^^^ constant.numeric.fluent
float-negative-one = {-1.03}
#                     ^^^^^ constant.numeric.fluent
float-negative-zero = {-0.0}
#                      ^^^^ constant.numeric.fluent
float-negative-without-fraction = {-1.000}
#                                  ^^^^^^ constant.numeric.fluent

float-positive-padded-left = {01.03}
#                             ^^^^^ constant.numeric.fluent
float-positive-padded-right = {1.0300}
#                              ^^^^^^ constant.numeric.fluent
float-positive-padded-both = {01.0300}
#                             ^^^^^^^ constant.numeric.fluent

float-negative-padded-left = {-01.03}
#                             ^^^^^^ constant.numeric.fluent
float-negative-padded-right = {-1.0300}
#                              ^^^^^^^ constant.numeric.fluent
float-negative-padded-both = {-01.0300}
#                             ^^^^^^^^ constant.numeric.fluent


## ERRORS

err01 = {1.}
#        ^^ constant.numeric.fluent
err02 = {.02}
#        ^ invalid.illegal.expression.fluent
#         ^^ constant.numeric.fluent
err03 = {1.02.03}
#        ^^^^ constant.numeric.fluent
#            ^ punctuation.accessor.dot.fluent
#             ^ invalid.illegal.juxtaposed-expressions.fluent
err04 = {1. 02}
#        ^^ constant.numeric.fluent
#          ^ - invalid
#           ^ invalid.illegal.juxtaposed-expressions.fluent
err05 = {1 .02}
#        ^ constant.numeric.fluent
#         ^ - invalid
#          ^ invalid.illegal.multiple-accessors.fluent
err06 = {- 1}
#        ^ variable.other.term.fluent
#         ^ - invalid
#          ^ invalid.illegal.juxtaposed-expressions.fluent
err07 = {1,02}
#        ^ constant.numeric.fluent
#         ^ invalid.illegal.juxtaposed-expressions.fluent
#          ^^ constant.numeric.fluent
