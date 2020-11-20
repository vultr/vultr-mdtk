# Vultr Markdown Toolkit

The Vultr Markdown Toolkit is a productive Markdown writing environment with a docs-as-code philosophy that provides:

* Markdown linting with **markdownlint**
* Markdown productivity with **Markdown All in One**.
* Grammar and style linting with **Vale** and the Vultr style guide.

The toolkit supports remote editing with code-server or local installation with Visual Studio Code.

## Code-Server Installation

See the [code-server](https://www.vultr.com/docs/vultr-markdown-toolkit-with-codeserver) installation instructions in the Vultr documentation library.

### Visual Studio Code Installation

1. Install [Visual Studio Code](https://code.visualstudio.com/).
1. Install [Vale](https://docs.errata.ai/vale/install).

    **Linux & macOS users:**

    * Install [Brew](https://brew.sh/).
    * Install [Vale](https://docs.errata.ai/vale/install):

            brew install vale

    **Windows users:**

    * Install [Chocolatey](https://chocolatey.org/).
    * Install [Vale](https://docs.errata.ai/vale/install):

            > choco install vale

1. Install Extensions:

   * [Vale Extension](https://marketplace.visualstudio.com/items?itemName=errata-ai.vale-server)
   * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
   * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

1. Clone this repository to a local folder.
1. Open `vultr-mdtk.code-workspace` with Visual Studio Code. The workspace:
    * Uses `Markdown/` as the working path.
    * Sets preferences specific to Vultr Docs.

## Key Project Files and Folders

* `code-server.code-workspace` : [Workspace for code-server](code-server.code-workspace)
* `vultr-mdtk.code-workspace` : [Workspace for Visual Studio Code](vultr-mdtk.code-workspace)
* `tests/` : [Test suite](tests) for Vultr styles. See [README.md](tests/README.md).
* `.vale/` : [Vale style rules](.vale)
* `.vale.ini` : [Vale configuration file](.vale.ini)
* `Markdown/` : [Working folder](Markdown)
* `Markdown/Vultr Docs Template.md` : [A template for Vultr Docs authors](Markdown/Vultr%20Docs%20Template.md)

## About the Vultr Style Guide and Vale

This toolkit uses Vale and markdownlint to catch common writing issues. Please review all suggestions, warnings, and errors before submitting an article to Vultr Docs. These rules are not infallible. They may produce false-positives or fail to detect issues. The editors at Vultr do not automatically reject or accept articles based solely on the Markdown Toolkit reports.
