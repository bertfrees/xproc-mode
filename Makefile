#!/usr/bin/make -f

CLOJURE := /usr/local/bin/clj

all : snippets

snippets : src/steps.clj
	mkdir -p snippets/xproc-mode
	cp src/snippets/* snippets/xproc-mode
	$(CLOJURE) build-snippets

clean :
	rm -rf snippets

.PHONY: snippets
