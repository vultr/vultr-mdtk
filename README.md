# Vultr Markdown Toolkit

The Vultr Markdown Toolkit is a productive Markdown writing environment with a docs-as-code philosophy that provides:

* Markdown linting with **markdownlint**
* Markdown productivity with **Markdown All in One**.
* Grammar and style linting with **Vale** and the Vultr style guide.

The toolkit supports remote editing with code-server or local installation with Visual Studio Code.

## code-server Installation

See the [code-server](https://github.com/vultr/vultr-mdtk/blob/main/Install%20with%20code-server.md) installation instructions in the Markdown folder.

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

1. Clone the [Vultr Markdown Toolkit](https://github.com/vultr/vultr-mdtk) repository to a local folder.
1. Open `VSCode_vultr-mdtk.code-workspace` with Visual Studio Code. The workspace:
    * Uses `Markdown/` as the working path.
    * Sets preferences specific to Vultr Docs.

## Key Project Files and Folders

* `code-server_vultr-mdtk.code-workspace` : [Workspace for code-server](https://github.com/vultr/vultr-mdtk/blob/main/code-server_vultr-mdtk.code-workspace)
* `VSCode_vultr-mdtk.code-workspace` : [Workspace for Visual Studio Code](https://github.com/vultr/vultr-mdtk/blob/main/VSCode_vultr-mdtk.code-workspace)
* `Tests/` : [Test suite](https://github.com/vultr/vultr-mdtk/tree/main/tests) for Vultr styles. See [README.md](https://github.com/vultr/vultr-mdtk/blob/main/tests/README.md).
* `.vale/` : [Vale style rules](https://github.com/vultr/vultr-mdtk/tree/main/.vale)
* `.vale.ini` : [Vale configuration](https://github.com/vultr/vultr-mdtk/blob/main/.vale.ini)
* `Markdown/` : [Working folder](https://github.com/vultr/vultr-mdtk/tree/main/Markdown)
* `Install with code-server.md` : [Installation instructions](https://github.com/vultr/vultr-mdtk/blob/main/Install%20with%20code-server.md) for code-server
* `Markdown/Vultr Docs Template.md` : [Vultr Docs template](https://github.com/vultr/vultr-mdtk/blob/main/Markdown/Vultr%20Docs%20Template.md)
* `.gitignore` [excludes](https://github.com/vultr/vultr-mdtk/blob/main/.gitignore) `Markdown/Vultr Docs/`, which is handy for editors who use the toolkit and also contribute to the vultr-vmtk repo.

## About the Vultr Style Guide and Vale

This toolkit uses Vale and markdownlint to catch common writing issues. Please review all suggestions, warnings, and errors before submitting an article to Vultr Docs. These rules are not infallible. They may produce false-positives or fail to detect issues. The editors at Vultr do not automatically reject or accept articles based solely on the Markdown Toolkit reports.
