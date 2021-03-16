SHELL  = /bin/sh
PREFIX = /usr/local

all:

install:
	mkdir -p $(PREFIX)/bin
	install -m 0755 dotd $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/dotd

clean:
