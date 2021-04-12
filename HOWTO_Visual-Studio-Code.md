# How to Install the Vultr Markdown Toolkit with Visual Studio Code

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
