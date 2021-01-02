# Vultr Markdown Toolkit

The GitHub Pages for this repository are:

* Stored in the repoository on the `mkdocs` branch
* Published on the `gh-pages` branch
* Browsable at <https://vultr.github.io/vultr-mdtk>

## How to Update GitHub Pages

To build and test the GitHub Pages locally:

1. Install [MkDocs](https://www.mkdocs.org/).
2. Install the [Material theme](https://squidfunk.github.io/mkdocs-material/).
3. Switch to the `mkdocs` branch of this repo.
4. Build the docs:

        $ mkdocs build

5. Serve the docs to <https://127.0.0.1:8000>

        $ mkdocs serve

To deploy to GitHub:

1. Switch to the `mkdocs` branch of this repo.
2. Deploy the docs to the `gh-pages` branch:

        $ mkdocs gh-deploy
