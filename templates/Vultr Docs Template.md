## Introduction

You should follow this template and [Vultr's style guide](https://www.vultr.com/docs/vultr-docs-style-guide) when writing for Vultr Docs. Although the introduction is the first section of the article, it should be Heading 2 (`##`). Vultr Docs do not use Heading 1 in Markdown.

The introduction section is a short description of the article and what the reader should expect to learn. You should write in the second person and avoid promotional hype or advocacy. Vultr often receives and rejects articles that start like this:

> LAMP is a world-changing open-source web development stack consisting of Linux, Apache, MySQL or MariaDB, and PHP. LAMP is much better than other alternatives like LEMP because it uses Apache, the king of web servers. In this article, I will tell you how to install a LAMP stack on Debian, the ultimate Linux distribution for developers.

That introduction is written in the first person and has gratuitous and misleading hype. Instead, please stick to the facts, like this:

> LAMP is a popular open-source web development stack consisting of Linux, Apache, MySQL or MariaDB, and PHP. This guide explains how to install a LAMP stack on Debian.

If you are writing an installation guide, please include more than the bare installation instructions. You should include code examples and post-installation security steps also.

## Prerequisites

Describe the prerequisite environment or knowledge needed to perform the steps in this document. Bullet points are often suitable for this information. For example, you may include:

* The server OS required
* The amount of memory or disk space required
* Required software packages
* Reader skill level
* Common steps

For example:

    Before you begin, you should:

    * [Deploy a Debian 11 cloud server at Vultr](https://my.vultr.com/deploy/) with at least 4 GB of RAM.
    * [Update the server](https://www.vultr.com/docs/update-debian-server-best-practices).
    * [Create a non-root user with sudo privileges](https://www.vultr.com/docs/create-a-sudo-user-on-debian-best-practices).
    * [Log in to your server](https://www.vultr.com/docs/how-to-access-your-vultr-vps) as the non-root user.

## 1. Title of the First Major Step

Break your documentation into logical sections, using H2 (`##`) for major section headers. Headings should use title case in the Chicago Manual of Style format. Vultr recommends [capitalizemytitle.com](https://capitalizemytitle.com/style/chicago) to check your title format.

When describing a series of major steps, the section headers should include a step number, followed by a period, a space, and the section title, like this:

    ## 1. Step One

    ## 2. Step Two

If the section is not part of a sequence of steps, you should omit the step number, like the **Introduction** and **Prerequisites** sections of this template.

## 2. Title of the Next Step

If you need sub-sections, use Heading 3 as shown.

### H3 Sections for Minor Sub-Steps

This is a subsection of `2. Title of the Next Step`.

## 3. Another Step

This is the third section.

## 4. Examples

Include appropriate examples for how to configure, test, and use the technology. For instance, if your guide explains how to install a development environment, it should also include a basic "Hello World" example at a minimum. Your guide may need more comprehensive examples to explain the technology.

## 5. Security

Explain how to secure the system with HTTPS, firewall, SSH keys, proxies, or other technology as appropriate.

### Next Steps

This section is an excellent place to link other tutorials or to recommend best practices. This section does not have a step number because it's not part of a sequence.

### More Information

Consider including bullet points with links to more documentation or comprehensive references. For example:

* Links to GitHub projects
* Links to Linux distribution documentation
* Links to the application documentation
