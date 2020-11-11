# Vultr Markdown Toolkit

The Vultr Markdown Toolkit is a productive Markdown writing environment with a docs-as-code philosophy. The toolkit supports remote editing with code-server and local installation with Visual Studio Code. It provides:

* Markdown linting with **markdownlint**
* Markdown productivity with **Markdown All in One**.
* Grammar and style linting with **Vale** and the Vultr style guide.

## How to Install with Visual Studio Code

See [install-vscode.md](https://github.com/vultr/vultr-mdtk/blob/master/install-vscode.md) for code-server installation instructions.

## How to Install with code-server

See [install-code-server.md](https://github.com/vultr/vultr-mdtk/blob/master/install-code-server.md) for code-server installation instructions.

## Key Project Files

### Shared

* `.vale/` : The **code-server** and **vscode** workspaces share use the same Vale style rules.
* `.vale.ini` : The shared [Vale configuration file](https://docs.errata.ai/vale/config).

### Visual Studio Code

* `vscode/` : Visual Studio Code users should edit Markdown files in this folder, or create subfolders below this location.
* `vscode/vscode.code-workspace` : Open this workspace configuration when using Visual Studio Code.
* `vscode/Tests.md` : Example test cases for Vale and markdownlint.

### code-server

* `code-server/` : code-server users should edit Markdown files in this folder, or create subfolders below this location.
* `code-server/code-server.code-workspace` : Open this workspace configuration when using code-server.

## About the Vultr Style Guide and Vale

This toolkit uses Vale and markdownlint to catch common writing issues. Please review all suggestions, warnings, and errors before submitting an article to Vultr Docs. These rules are not infallible. They may produce false-positives or fail to detect issues. The editors at Vultr do not automatically reject or accept articles based solely on the Markdown Toolkit reports.
