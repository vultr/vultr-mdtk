# Vultr Markdown Toolkit

The starter docs for the MarkDown Toolkit are:

* Stored in the repo on the `mkdocs` branch
* Published as GitHub Pages on the `gh-pages` branch
* Browsable at <https://vultr.github.io/vultr-mdtk>

## How to Update Docs

To build and test this documentation locally:

1. Install MkDocs.
2. Install the Material theme.
3. Switch to the `mkdocs` branch of this repo.
4. Build the docs:

        $ mkdocs build

5. Serve the docs to <https://127.0.0.1:8000>

        $ mkdocs serve

To deploy to GitHub:

1. Switch to the `mkdocs` branch of this repo.
2. Deploy the docs to the `gh-pages` branch:

        $ mkdocs gh-deploy
