.PHONY: html upload clean

html:
	sphinx-build -Ea . _build/html -b html

upload:	
	ghp-import -n -o -p -f _build/html

clean:
	rm -r _build

help:
	@echo "Usage: make [target]"
	@echo "Available targets:"
	@echo "  html    - Build HTML documentation"
	@echo "  upload  - Upload using ghp-import to github pages"
	@echo "  clean   - Remove build directory"
	@echo "  help    - Show this help message"
