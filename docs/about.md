# Vultr Markdown Toolkit

## Beta Preview Release

This is preview release. Please contact [David Finster](mailto:dfinster@vultr.com?subject=Vultr%20Markdown%20Toolkit) with comments and suggestions.

## Introduction

The Markdown Toolkit toolkit enhances Visual Studio Code with productivity tools and Vultr Style Guide linting. Authors who write for [Vultr Docs](https://www.vultr.com/docs/) should consider using this toolkit to find common writing problems before [submitting their articles](https://my.vultr.com/docs/submit/) for review. The toolkit also runs under code-server for remote editing.

## Visual Studio Code Installation

1. Install [Visual Studio Code](https://code.visualstudio.com/).
1. Install [Vale](https://docs.errata.ai/vale/install).
1. Install the required extensions:

   * [Vale Extension](https://marketplace.visualstudio.com/items?itemName=errata-ai.vale-server)
   * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
   * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

1. Clone this repository to a local folder.
1. Open `vultr-mdtk.code-workspace` with Visual Studio Code.
1. Edit your Markdown files in the `Markdown/` folder.

## Code-Server Installation

See the [code-server](https://www.vultr.com/docs/vultr-markdown-toolkit-with-codeserver) installation instructions in the Vultr documentation library.

## Key Project Files and Folders
* `Markdown/` : [Working folder](Markdown)
* `Markdown/Vultr Docs Template.md` : [A template for Vultr Docs authors](Markdown/Vultr%20Docs%20Template.md)
* `styles/` : [Vale style rules](.vale)
* `tests/` : [Test suite](tests) for Vultr styles. See [README.md](tests/README.md).
* `.vale.ini` : [Vale configuration file](.vale.ini)
* `code-server.code-workspace` : [Workspace for code-server](code-server.code-workspace)
* `vultr-mdtk.code-workspace` : [Workspace for Visual Studio Code](vultr-mdtk.code-workspace)

## About the Vultr Style Guide and Vale

This toolkit uses **Vale** and **markdownlint** to catch common writing issues. Please review all suggestions, warnings, and errors before submitting an article to Vultr Docs. These rules are not infallible. They may produce false-positives or fail to detect issues. The editors at Vultr do not automatically reject or accept articles based solely on the Markdown Toolkit reports.
