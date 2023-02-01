# Vultr Markdown Toolkit (MDTK)

MDTK is a helpful aid for authors who write Markdown, consisting of Vale style rules, Vultr vocabulary, a recommended set of Visual Studio Code extensions, and a workspace file that sets the preferred defaults.

## How to Install MDTK

1. Install the required components:

    * [Visual Studio Code](https://code.visualstudio.com/)
    * [Vale CLI](https://docs.errata.ai/vale/install)
    * [Vale Extension](https://marketplace.visualstudio.com/items?itemName=errata-ai.vale-server)
    * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

1. Clone the [vultr/vultr-mdtk](https://github.com/vultr/vultr-mdtk) repository to a folder on your workstation.
1. Open `vultr-mdtk.code-workspace` with Visual Studio Code. This workspace configures the correct options for Vale and the Markdown extensions.
1. Edit your Markdown files in the `Markdown` folder. *Errors* are underlined in red, *Warnings* in yellow, and *Suggestions* in blue. You can hover over the alerts for pop-up help.

    ![Popup Help](templates/media/Popup%20Help.png)

1. Open the *Problems* tab to view the complete list of errors, warnings, and suggestions.

    ![VSCode Example](templates/media/VSCode%20Example.png)
