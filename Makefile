.PHONY: html
.DEFAULT_GOAL := html
SHELL:=/bin/bash

content/contributors/accessibility_howto.md: notebooks/accessibility_howto.ipynb
	jupyter nbconvert --to markdown --execute $< --stdout > $@

notebooks/accessibility_howto.ipynb: notebooks/accessibility_howto.md
	jupytext --from markdown --to notebook $<

html: content/contributors/accessibility_howto.md

clean:
	rm -rf content/contributors/accessibility_howto.md notebooks/accessibility_howto.ipynb
