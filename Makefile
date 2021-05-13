.PHONY: build
build:
	stack build --pedantic

.PHONY: test
test:
	stack test --pedantic

.PHONY: restyle
restyle:
	${CURDIR}/style.sh

.PHONY: check-style
check-style:
	${CURDIR}/style.sh check

.PHONY: clean
clean:
	stack clean
	rm -rf ${CURDIR}/.stack-work
