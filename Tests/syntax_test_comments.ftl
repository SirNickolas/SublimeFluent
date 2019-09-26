# SYNTAX TEST "Packages/Fluent/Fluent.sublime-syntax"

## Valid comments.

### Resource comment.
# <- comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#^^ comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#  ^^ comment.line.number-sign.resource.fluent

## Group comment.
# <- comment.line.number-sign.group.fluent punctuation.definition.comment.fluent
#^ comment.line.number-sign.group.fluent punctuation.definition.comment.fluent
# ^^ comment.line.number-sign.group.fluent

# Standalone comment.
# <- comment.line.number-sign.fluent punctuation.definition.comment.fluent
#^^ comment.line.number-sign.fluent


## Invalid comments.

#### Error
# <- comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#^^ comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#  ^ invalid.illegal.space-required.fluent
#   ^ comment.line.number-sign.resource.fluent

###Error.
# <- comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#^^ comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#  ^ invalid.illegal.space-required.fluent
#   ^ comment.line.number-sign.resource.fluent

##Error.
# <- comment.line.number-sign.group.fluent punctuation.definition.comment.fluent
#^ comment.line.number-sign.group.fluent punctuation.definition.comment.fluent
# ^ invalid.illegal.space-required.fluent
#  ^ comment.line.number-sign.group.fluent

#Error.
# <- comment.line.number-sign.fluent punctuation.definition.comment.fluent
#^ invalid.illegal.space-required.fluent
# ^ comment.line.number-sign.fluent


## Empty comments.

###
# <- comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#^^ comment.line.number-sign.resource.fluent punctuation.definition.comment.fluent
#  ^ - invalid

##
# <- comment.line.number-sign.group.fluent punctuation.definition.comment.fluent
#^ comment.line.number-sign.group.fluent punctuation.definition.comment.fluent
# ^ - invalid

#
# <- comment.line.number-sign.fluent punctuation.definition.comment.fluent
#^ - invalid


## Comments with a single space.

### 
#  ^ comment.line.number-sign.resource.fluent

## 
# ^ comment.line.number-sign.group.fluent

# 
#^ comment.line.number-sign.fluent
