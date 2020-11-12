## Introduction

A short introduction of one or two paragraphs to orient the reader is appropriate. Describe what the reader should expect to learn from the documentation.

The first heading of a Vultr Doc Markdown file is H2 (`##`), because H1 is a separate field in the Vultr publishing system. The default markdownlint rule MD041 requires H1 as the first heading. Vultr Markdown Toolkit suppresses this warning in the `.code-workspace` file.

## Prerequisites

Describe the prerequisite environment or knowledge needed to perform the steps in this document. Bullet points are often suitable for this information. For example, you may include:

* The server OS required
* The amount of memory or disk space required
* Required pre-install software packages
* Reader skill level

## 1. The First Step-by-Step Section

Break your documentation into logical sections. Use H2 (`##`) for major section headers. Headings should use title case, and Vultr follows the [Chicago Manual of Style](https://capitalizemytitle.com/style/chicago). When describing a series of steps, preface the steps with step numbers in this format:

    ## 1. This is Step One

    ## 2. This is Step Two

Indent code blocks with four spaces. **Vultr doesn't use triple-backticks to fence code blocks.** Preface command lines with a prompt symbol. Linux commands run as root use a hash prompt. Preface command run as a non-root with a dollar sign.

A Linux root user performing `ls`:

    # ls

A Linux non-root user performing `ls`:

    $ ls

A PowerShell user performing `ls`:

    PS C:\> ls

A Windows CMD user performing `dir`:

    C:\> dir

## 2. The Next Step

Wrap inline code with a single backtick. For example, you could instruct the user to perform `ls` in your narrative. Reserve backticks for commands and filenames. Don't use backticks as a replacement for bold or italics.

Use bold for the names of graphical objects such as buttons, icons, or input fields. For example, this is correct:

* Click the **Done** button, then type :key_win:+:key_r:.
* Type `cmd.exe` in the **Open** field, then click **OK**.
* When the command window opens, type `dir` at the prompt.

### H3 Sections for Minor Sub-Steps

Heading 2 sections may contain multiple subsections. Use Heading 3 for subsections.

### Another H3 Section

Review the Vultr Style Guide for more formatting information. The Vultr Markdown Toolkit is helpful for real-time grammar and style feedback.

## 3. The Last Step

This is the last major section of this template. Your document may have more sections.

## Conclusion

Refresh the reader on what they have accomplished and what capabilities they have enabled. If appropriate, you may consider including subsections about next steps, more documentation, or references.

### Next Steps

This is a good place to link more tutorials or recommend standard settings.

### References

Consider including bullet points with links more documentation or comprehensive references. For example:

* Links to GitHub projects
* Links to Linux distribution documentation
* Links to the application documentation
