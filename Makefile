SHELL  = /bin/sh
PREFIX = /usr/local

all: dotd.1.gz

%.1.gz: %.1
	cat $< | gzip -f >$@

install:
	mkdir -p $(PREFIX)/bin $(PREFIX)/share/man/man1
	install -m 0755 dotd $(PREFIX)/bin
	install -m 0644 dotd.1.gz $(PREFIX)/share/man/man1

uninstall:
	rm -f $(PREFIX)/bin/dotd
	rm -f $(PREFIX)/share/man/man1/dotd.1.gz

clean:
	rm -f *.1.gz
