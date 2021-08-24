# Vultr Markdown Toolkit

## Beta Preview Release

This is a preview release.

## Introduction

The Markdown Toolkit is a helpful aid for Vultr Docs authors. The toolkit uses Visual Studio Code, Vale, and some useful Markdown extensions to find common issues when writing documentation. The Vultr Docs editing team uses this toolkit, and authors who write for [Vultr Docs](https://www.vultr.com/docs/) may find it helpful. The toolkit is also compatible with code-server.

Vultr uses this as an article screening tool, but it may produce false-positives or fail to detect problems. It's possible to write inferior articles that this toolkit will pass without error. This is not a substitute for a human proofreader.

## How to Install the Toolkit

* **code-server:** See the [code-server installation instructions](https://github.com/vultr/vultr-mdtk/blob/main/HOWTO_code-server.md).
* **Visual Studio Code:** See the [Visual Studio Code installation instructions](https://github.com/vultr/vultr-mdtk/blob/main/HOWTO_Visual-Studio-Code.md).

## Key Project Files and Folders

* `Markdown/` : [Working folder](https://github.com/vultr/vultr-mdtk/tree/main/Markdown)
* `Markdown/Vultr Docs Template.md` : [A template for Vultr Docs authors](https://github.com/vultr/vultr-mdtk/tree/main/Markdown/Vultr%20Docs%20Template.md)
* `styles/` : [Vale style rules](https://github.com/vultr/vultr-mdtk/tree/main/styles)
* `tests/` : [Test suite](https://github.com/vultr/vultr-mdtk/tree/main/tests) for Vultr styles. See [README.md](https://github.com/vultr/vultr-mdtk/tree/main/tests/README.md).
* `.vale.ini` : [Vale configuration file](https://github.com/vultr/vultr-mdtk/tree/main/.vale.ini)
* `code-server.code-workspace` : [Workspace for code-server](https://github.com/vultr/vultr-mdtk/tree/main/code-server.code-workspace)
* `vultr-mdtk.code-workspace` : [Workspace for Visual Studio Code](https://github.com/vultr/vultr-mdtk/tree/main/vultr-mdtk.code-workspace)
