# Vultr Markdown Toolkit

## Beta Preview Release

This is a preview release.

## Introduction

The Markdown Toolkit is a helpful aid for Vultr Docs authors. The toolkit uses Visual Studio Code, Vale, and some useful Markdown extensions to find common issues when writing documentation. The Vultr Docs editing team uses this toolkit, and authors who write for [Vultr Docs](https://www.vultr.com/docs/) may also find it helpful. The toolkit is also compatible with code-server and you can [learn how to install that version at Vultr Docs](https://www.vultr.com/docs/vultr-markdown-toolkit-with-codeserver).

Vultr uses this as a helpful screening tool, but our editors don't accept or reject articles based on the toolkit reports because it may produce false-positives or fail to detect problems. It's possible to write inferior articles that this toolkit will pass without error. This is not a substitute for a human proofreader.

## How to Install the Toolkit

### Install with code-server

See the [code-server installation instructions](https://www.vultr.com/docs/vultr-markdown-toolkit-with-codeserver).

### Install locally in Visual Studio Code

1. Install [Visual Studio Code](https://code.visualstudio.com/).
1. Install [Vale](https://docs.errata.ai/vale/install).
1. Install the required extensions:

    * [Vale Extension](https://marketplace.visualstudio.com/items?itemName=errata-ai.vale-server)
    * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

1. Clone the [vultr/vultr-mdtk](https://github.com/vultr/vultr-mdtk) repository to a folder on your workstation.
1. Open `vultr-mdtk.code-workspace` with Visual Studio Code. This workspace configures the correct options for Vale and the Markdown extensions.
1. Edit your Markdown files in the `Markdown/` folder.
1. As you write, the extensions check your code for common Markdown and writing issues.

## Key Project Files and Folders

* `Markdown/` : [Working folder](https://github.com/vultr/vultr-mdtk/tree/main/Markdown)
* `Markdown/Vultr Docs Template.md` : [A template for Vultr Docs authors](https://github.com/vultr/vultr-mdtk/tree/main/Markdown/Vultr%20Docs%20Template.md)
* `styles/` : [Vale style rules](https://github.com/vultr/vultr-mdtk/tree/main/.vale)
* `tests/` : [Test suite](https://github.com/vultr/vultr-mdtk/tree/main/tests) for Vultr styles. See [README.md](https://github.com/vultr/vultr-mdtk/tree/main/tests/README.md).
* `.vale.ini` : [Vale configuration file](https://github.com/vultr/vultr-mdtk/tree/main/.vale.ini)
* `code-server.code-workspace` : [Workspace for code-server](https://github.com/vultr/vultr-mdtk/tree/main/code-server.code-workspace)
* `vultr-mdtk.code-workspace` : [Workspace for Visual Studio Code](https://github.com/vultr/vultr-mdtk/tree/main/vultr-mdtk.code-workspace)
