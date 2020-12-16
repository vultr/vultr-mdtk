## Introduction

A short introduction of one or two paragraphs to orient the reader is appropriate. Describe what the reader should expect to learn from the documentation.

The first heading of a Vultr Doc Markdown file is H2 (`##`), because H1 is a separate field in the Vultr publishing system. The [Vultr Markdown Toolkit](https://github.com/vultr/vultr-mdtk) suppresses warnings for Markdown files that lack a H1 heading to avoid confusion.

## Prerequisites

Describe the prerequisite environment or knowledge needed to perform the steps in this document. Bullet points are often suitable for this information. For example, you may include:

* The server OS required
* The amount of memory or disk space required
* Required pre-install software packages
* Reader skill level

## 1. First Section

Break your documentation into logical sections. Replace `## 1. First Section` with your step number and section title. Use H2 (`##`) for major section headers. Headings should use title case, and Vultr follows the [Chicago Manual of Style](https://capitalizemytitle.com/style/chicago). When describing a series of major steps, the section headers should include a step number, followed by a period, a space, and the section title, as shown in this example:

    ## 1. Step One

    ## 2. Step Two

* Indent your code blocks with four spaces. **Vultr does not use triple-backticks to fence code blocks.**
* Preface command lines with a prompt symbol. Leave a space between the prompt and the command.

Linux or macOS commands that need to run as root should use a hash prompt.

    # ls

Commands run as a non-root user should use a dollar sign.

    $ ls

Windows PowerShell commands use `PS C:\>`.

    PS C:\> ls

Windows CMD commands use `C:\>`.

    C:\> dir

## 2. Next Step

Wrap inline code with a single backtick. For example, you could instruct the user to perform `ls` in your narrative. Reserve backticks for commands and filenames. Don't use backticks as a replacement for bold or italics.

Use bold for the names of graphical objects such as buttons, icons, or input fields. For example, this is correct:

* Click the **Done** button, then type :key_win:+:key_r:.
* Type `cmd.exe` in the **Open** field, then click **OK**.
* When the command window opens, type `dir` at the prompt.

### H3 Sections for Minor Sub-Steps

Heading 2 sections may contain multiple subsections. Use Heading 3 for subsections.

### Another H3 Section

Review the Vultr Style Guide for more formatting information. The Vultr Markdown Toolkit is helpful for real-time grammar and style feedback.

## 3. Last Step

This template has three steps-by-step sections. Your document may have more sections.

## Conclusion

Refresh the reader on what they have accomplished and what capabilities they have enabled. If appropriate, you may consider including subsections about next steps, more documentation, or references.

### Next Steps

This is a good place to link more tutorials or recommend standard settings.

### References

Consider including bullet points with links more documentation or comprehensive references. For example:

* Links to GitHub projects
* Links to Linux distribution documentation
* Links to the application documentation
