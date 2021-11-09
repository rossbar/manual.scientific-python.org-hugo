.PHONY: html
.DEFAULT_GOAL := html
SHELL:=/bin/bash

content/contributors/hello_world.md: notebooks/hello_world.ipynb
	jupyter nbconvert --to markdown --execute $< --stdout > $@

notebooks/hello_world.ipynb: notebooks/hello_world.md
	jupytext --from markdown --to notebook $<

html: content/contributors/hello_world.md

clean:
	rm -rf content/contributors/hello_world.md notebooks/hello_world.ipynb
