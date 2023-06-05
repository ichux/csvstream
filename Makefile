# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:
# help: csvstream help
# help:

.PHONY: help
# help: help				- Please use "make <target>" where <target> is one of
help:
	@grep "^# help\:" Makefile | sed 's/\# help\: //' | sed 's/\# help\://'

.PHONY: b
# help: b 				- build main image
b:
	@docker-compose -f docker-compose.yml up --build --detach
