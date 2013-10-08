#!/usr/bin/make -f

CLOJURE := /usr/local/bin/clj
PACKAGE_VERSION := 1.0.0alpha1

all : snippets

snippets : src/steps.clj src/snippets/*
	mkdir -p snippets/xproc-mode
	cp src/snippets/* snippets/xproc-mode
	$(CLOJURE) build-snippets

elpa: snippets
	tar --transform='s::xproc-mode-$(PACKAGE_VERSION)/:' \
	    -cf xproc-mode-$(PACKAGE_VERSION).tar *.el schema snippets steps.html

clean :
	rm -rf snippets xproc-mode-*.tar

.PHONY: snippets
