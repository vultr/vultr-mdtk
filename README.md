# Vultr Markdown Toolkit

The Vultr Markdown Toolkit is a productive Markdown writing environment with a docs-as-code philosophy that provides:

* Markdown linting with **markdownlint**
* Markdown productivity with **Markdown All in One**.
* Grammar and style linting with **Vale** and the Vultr style guide.

The toolkit supports remote editing with code-server or local installation with Visual Studio Code. 

## Installation

* [code-server](https://github.com/vultr/vultr-mdtk/blob/integrate-vscode-w/-code-server/Markdown/Install%20with%20code-server.md) installation instructions
* [Visual Studio Code](https://github.com/vultr/vultr-mdtk/blob/integrate-vscode-w/-code-server/Markdown/Install%20with%20Visual%20Studio%20Code.md) installation instructions

## Key Project Files

* `code-server_vultr-mdtk.code-workspace` : Vultr Markdown Toolkit workspace configuration for code-server
* `VSCode_vultr-mdtk.code-workspace` : Vultr Markdown Toolkit workspace configuration for Visual Studio Code

The **code-server** and **VSCode** workspaces share:

* `.vale/` : Vale style rules
* `.vale.ini` : Vale configuration
* `Markdown/` : Work folder
* `Install with code-server.md` : Installation instructions for code-server
* `Install with Visual Studio Code.md` : Installation instructions for VSCode
* `Tests for Markdownlint and Vale.md` : Test suite
* `Vultr Docs Template.md` : Vultr Docs author template


## About the Vultr Style Guide and Vale

This toolkit uses Vale and markdownlint to catch common writing issues. Please review all suggestions, warnings, and errors before submitting an article to Vultr Docs. These rules are not infallible. They may produce false-positives or fail to detect issues. The editors at Vultr do not automatically reject or accept articles based solely on the Markdown Toolkit reports.
