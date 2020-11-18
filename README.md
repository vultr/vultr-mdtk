# Vultr Markdown Toolkit

The Vultr Markdown Toolkit is a productive Markdown writing environment with a docs-as-code philosophy that provides:

* Markdown linting with **markdownlint**
* Markdown productivity with **Markdown All in One**.
* Grammar and style linting with **Vale** and the Vultr style guide.

The toolkit supports remote editing with code-server or local installation with Visual Studio Code.

## Installation

### code-server

* See the [code-server](https://github.com/vultr/vultr-mdtk/blob/main/Install%20with%20code-server.md) installation instructions in the Markdown folder.

### Visual Studio Code

1. Install [Visual Studio Code](https://code.visualstudio.com/).
1. Install [Vale](https://docs.errata.ai/vale/install).

    **Linux & macOS users:**

    * Install [Brew](https://brew.sh/).
    * Install [Vale](https://docs.errata.ai/vale/install):

            $ brew install vale

    **Windows users:**

    * Install [Chocolatey](https://chocolatey.org/).
    * Install [Vale](https://docs.errata.ai/vale/install):

            > choco install vale

1. Install Extensions:

   * [Vale Extension](https://marketplace.visualstudio.com/items?itemName=errata-ai.vale-server)
   * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
   * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

1. Clone the [Vultr Markdown Toolkit](https://github.com/vultr/vultr-mdtk) repository to a local folder.
1. Open `VSCode_vultr-mdtk.code-workspace` with Visual Studio Code, which contains extension configuration and sets the `Markdown/` folder as working path.
    * The `.gitignore` file excludes `Markdown/Vultr Docs`, which is handy for editors who use the toolkit and also contribute to the vultr-vmtk repo.

## Key Project Files

* `code-server_vultr-mdtk.code-workspace` : Workspace for code-server
* `VSCode_vultr-mdtk.code-workspace` : Workspace for Visual Studio Code

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
