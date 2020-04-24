PREFIX ?= /usr/local

clientbuffer.so : clientbuffer.cpp
	znc-buildmod clientbuffer.cpp

install: clientbuffer.so
	install -dm 755 $(DESTDIR)$(PREFIX)/znc
	install -Dm 644 clientbuffer.so $(DESTDIR)$(PREFIX)/znc/clientbuffer.so
