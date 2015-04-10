VERSION=0.0.1
default:

install:
	mkdir -p $(DESTDIR)$(JHBUILD_PREFIX)/webkitgtk-test-dicts
	cp -r *.dic $(DESTDIR)$(JHBUILD_PREFIX)/webkitgtk-test-dicts

dist:
	mkdir webkitgtk-test-dicts-$(VERSION)
	cp *.dic Makefile webkitgtk-test-dicts-$(VERSION)
	tar cvzf webkitgtk-test-dicts-$(VERSION).tar.gz webkitgtk-test-dicts-$(VERSION)
	rm -rf webkitgtk-test-dicts-$(VERSION)

clean:
	@true

.PHONY: clean
