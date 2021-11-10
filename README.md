# Example site: scientific Python manual

Hugo site for scientific Python ecosystem how-to's and best practices 

NOTE: the primary goal is to evaluate infrastructure - content is very much in
a draft state!

## Setup

Setup hugo theme: `git submodule update --init --recursive`
Install Python requirements: `pip install -r requirements.txt`

## Building the site

1. generate executable content via: `make html`
2. generate html with `hugo`. For example, to preview: `hugo server`
