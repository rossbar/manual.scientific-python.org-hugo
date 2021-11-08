.PHONY: html
.DEFAULT_GOAL := html
SHELL:=/bin/bash

html:
	jupytext --from markdown --to notebook content/contributors/*
	jupyter nbconvert --to markdown --execute content/contributors/*.ipynb

clean:
	rm -rf content/contributors/*.ipynb
