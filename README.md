# Vultr Markdown Toolkit (MDTK)

The Vultr Markdown Toolkit has been discontinued. This repository is archived and no longer maintained.

---

(MDTK) is a helpful aid for Vultr Docs authors. MDTK consists of Vale style rules, vocabulary, a recommended set of Visual Studio Code extensions, and a workspace file that sets the preferred defaults.

The Vultr Docs editors update MDTK frequently. [Vultr Docs](https://www.vultr.com/docs/) authors are encouraged to use MDTK to lint their articles before submission. MDTK can detect many [style guide](https://www.vultr.com/docs/vultr-docs-style-guide) issues and provides a good spell-check with a [curated list of industry terms](https://github.com/vultr/vultr-mdtk/blob/main/styles/Vocab/Vultr/accept.txt). However, MDTK is not a substitute for a human editor and does not perform complete grammar checking.

## How to Install MDTK

1. Install the requred components:

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

## Key Project Files and Folders

* `Markdown/` : [Working folder](/Markdown)
* `templates/` : [Templates for Vultr Docs authors](/templates)
* `styles/` : [Vale style rules](/styles)
* `.vale.ini` : [Vale configuration file](.vale.ini)
* `vultr-mdtk.code-workspace` : [Workspace for Visual Studio Code](vultr-mdtk.code-workspace)
