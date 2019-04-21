.PHONY: lint
lint:
	@echo Linting generate.sh...
	@shellcheck generate.sh

.PHONY: clean
clean:
	rm -rf ./*.html man? index.*

.PHONY: test
test:
	$(MAKE) clean
	$(MAKE) clean
	./generate.sh bash
	ebook-meta index.epub | \
	  grep '^Comments *: *Generated from the following list of man pages: bash'
	$(MAKE) clean
