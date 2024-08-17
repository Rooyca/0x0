PREFIX = /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp src/0x0 $(PREFIX)/bin

	mkdir -p $(PREFIX)/man/man1
	cp doc/0x0.1 $(PREFIX)/man/man1

uninstall:
	rm -f $(PREFIX)/bin/0x0
	rm -f $(PREFIX)/man/man1/0x0.1

lint:
	bin/lint.sh

.PHONY: test
test:
	bin/test.sh
