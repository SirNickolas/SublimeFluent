# SYNTAX TEST "Packages/Fluent/Fluent.sublime-syntax"

### '\t' is a regular text character in Fluent. It is allowed in patterns and strings,
### but not treated as whitespace and cannot be used for indentation.

tab-in-value = ->	<-
#                ^ meta.message.fluent string.unquoted.fluent - invalid

leading-tab =	<-
#            ^ meta.message.fluent string.unquoted.fluent - invalid

tab-after-space = 	<-
#                 ^ meta.message.fluent string.unquoted.fluent - invalid

tab-after-name	=<-
#             ^ meta.message.fluent invalid.illegal.fluent

tabs-in-multiline =
	<-
# <- invalid.illegal.tab.fluent
#^ string.unquoted.fluent - invalid
    	<- Spaces followed by a tab.
#   ^^ meta.message.fluent string.unquoted.fluent - invalid

tab-in-string-literal = {"	<-"}
#                         ^ string.quoted.double.fluent - invalid

tab-in-placeable = {
	0
# <- invalid.illegal.fluent
#^ constant.numeric.fluent
}
