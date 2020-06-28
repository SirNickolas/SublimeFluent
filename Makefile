.PHONY: all clean

TESTS := $(shell find Tests/ -type f -name 'syntax_test_*.ftl' -not -name '*.indented.ftl')
INDENTED := $(TESTS:.ftl=.indented.ftl)

all: $(INDENTED)

clean:
	$(RM) -- $(INDENTED)

$(INDENTED): %.indented.ftl: %.ftl
	@echo 'INDENT $^' && sed '/^# \s*!NOINDENT\s*{{/,/^# \s*}}/ d; /./ s/^/  /' -- $^ >$@
