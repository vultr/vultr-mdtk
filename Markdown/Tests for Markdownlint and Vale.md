## Tests for Markdownlint and Vale

A Markdown file to test Vale style rules and Markdownlint configuration.

## Markdownlint Rules

---

### MD013: Line Length

<https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md013>

The markdownlint rule **MD013** limits line length to 80 chars by default. Setting this rule to false allows unlimited line length without warnings. There should be no warning on this long line.

### MD014: Dollar Signs Used Before Commands without Showing Output

<https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md014>

There should be no warning on the code below.

    ls
    cat foo
    less bar

### MD041: First Line in File should be a Top Level Heading

<https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md041>

This file begins with H2. There should you be no warning on the first headline in this file.

### MD026: Trailing Punctuation in Heading

<https://github.com/DavidAnson/markdownlint/blob/main/doc/Rules.md#md026>

Vultr allows punctuation in FAQs. There should be no warning on the question mark in the preceding heading.

## Vale Rules

---

### Acronyms

* Rule: `.vale/styles/Vultr/Acronyms.yml`

Wrong:  
The OED is the principal historical dictionary of the English language.

Correct:  
The Oxford English Dictionary (OED) is the principal historical dictionary of the English language.

### Adverbs

* Rule: `.vale/styles/Vultr/Adverbs.yml`

The server is extremely overloaded.

### Time Format

* Rule: `.vale/styles/Vultr/TimeFormat.yml`

Wrong:  
The time is 12:34 am.
The time is 12:34 pm.
The time is 12:34 A.M.
The time is 12:34 P.M.
The time is 12:34 AM
The time is 12:34 PM
The time is 12:34a.m.
The time is 12:34p.m.

Correct:  
The time is 12:34 a.m.
The time is 12:34 p.m.

### Because

* Rule: `.vale/styles/Vultr/Because.yml`

Wrong:  
The server crashed since it ran out of disk space.

Correct:  
The server crashed because it ran out of disk space.

### British

* Rule: `.vale/styles/Vultr/British.yml`

The packet filter rules define the firewall behaviour.

### Cliches

* Rule: `.vale/styles/Vultr/Cliches.yml`

This guide explains how to install a server in a jiffy.

### Complex Words

* Rule: `.vale/styles/Vultr/ComplexWords.yml`

You can ascertain the error by reading the log file.

### Contractions

* Rule: `.vale/styles/Vultr/Contractions.yml`

The server does not have a physical display.

### Current Status

* Rule: `.vale/styles/Vultr/CurrentStatus.yml`

The foobar package is currently in beta.

### Date Midnight

* Rule: `.vale/styles/Vultr/DateMidnight.yml`

Wrong:  
The log file resets at 12 a.m.  
The log file resets at 12:00 a.m.  
The log file resets at 00:00 a.m.  
The log file resets at 12 p.m.  
The log file resets at 12:00 p.m.  
The log file resets at 00:00 p.m.  

Correct:  
The log file resets at midnight.  
The log file resets at noon.  

### Date Redundancy

* Rule: `.vale/styles/Vultr/DateRedundancy.yml`

Wrong:  
The log file resets at 12:30 a.m. in the morning.  
The log file resets at 12:30 p.m. in the afternoon.  
The log file resets at 6:30 p.m. in the evening.  
The log file resets at 10:30 p.m. at night.  

Correct:  
The log file resets at 12:30 a.m.  
The log file resets at 12:30 p.m.  
The log file resets at 6:30 p.m.  
The log file resets at 10:30 p.m.  

### Ellipses

* Rule: `.vale/styles/Vultr/Ellipses.yml`

In general... don't use an ellipses.

### Exclamation

* Rule: `.vale/styles/Vultr/Exclamation.yml`

Documentation seldom needs an exclamation point!

### First Person

* Rule: `.vale/styles/Vultr/FirstPerson.yml`

I wrote this guide to explain how to install my server.

### Future Tense

* Rule: `.vale/styles/Vultr/FutureTense.yml`

The script will finish the MySQL installation in the next step.

### Gender

* Rule: `.vale/styles/Vultr/Gender.yml`

He finished the MySQL installation before she tested it.

### Heading Punctuation

* Rule: `.vale/styles/Vultr/HeadingPunctuation.yml`

#### Headings Don't Use Periods

#### But, It's OK to Use Question Marks in FAQ Headings

### Headings

* Rule: `.vale/styles/Vultr/Headings.yml`

#### Headings use Chicago manual of style headline style

### Latin Abbreviations

* Rule: `.vale/styles/Vultr/LatinAbbreviations.yml`

Avoid Latin abbreviations such as e.g. or i.e. when writing documentation, etc.

### Login

* Rule: `.vale/styles/Vultr/Login.yml`

Wrong:
Before you login to the server, make sure the server has a log in screen.

Correct:
Before you log in to the server, make sure the server has a login screen.

### Meaningful Links

* Rule: `.vale/styles/Vultr/MeaningfulLinks.yml`

See the installation instructions [here](https://example.com).  
See the installation instructions on [this page](https://example.com).  

See the [installation instructions](https://example.com).

### Negative

* Rule: `.vale/styles/Vultr/Negative.yml`

Wrong:  
The server room felt like -10 degrees.  

Correct:  
The server room felt like –10 degrees.

### Once

* Rule: `.vale/styles/Vultr/Once.yml`

Once you have completed the installation, verify the SSL certificate.

### Plurals

* Rule: `.vale/styles/Vultr/Plurals.yml`

Deploy the server(s).

### Ordinal

* Rule: `.vale/styles/Vultr/Ordinal.yml`

Secondly, deploy an Ubuntu server.

### Oxford Comma

* Rule: `.vale/styles/Vultr/OxfordComma.yml`

Wrong:  
Deploy an Ubuntu server with three vCPUs, two GB of memory and a network adapter.

Correct:  
Deploy an Ubuntu server with three vCPUs, two GB of memory, and a network adapter.

### Oxymorons

* Rule: `.vale/styles/Vultr/Oxymorons.yml`

You should generally always log into the server as a sudo user.

### Passive Voice

* Rule: `.vale/styles/Vultr/Passive.yml`

The error was logged in real-time.

### Percentages

* Rule: `.vale/styles/Vultr/Percentages.yml`

Wrong:  
Over twenty percent of the cases result in an error.

Correct:  
Over 20 percent of the cases result in an error.

### Periods

* Rule: `.vale/styles/Vultr/Periods.yml`

Wrong:  
The server requires 20 T.B. of R.A.M. to boot.

Correct:  
The server requires 20 TB of RAM to boot.

### Ranges of Numbers

* Rule: `.vale/styles/Vultr/Ranges.yml`

Wrong:  
Edit lines 20–30 to configure Nginx.  

Correct:  
Edit lines from 20 through 30 to configure Nginx.  

### Range of Numbers When Space is an Issue

* Rule: `.vale/styles/Vultr/RangeFormat.yml`

Wrong:  
Edit lines 20-30 configure Nginx.

### Time Ranges

* Rule: `.vale/styles/Vultr/TimeRange.yml`

Wrong:
The schedule runs 10:00 a.m. - 2:00 p.m. each day.
The schedule runs 10:00 a.m.-2:00 p.m. each day.

Correct:  
The schedule runs from 10:00 a.m. to 2:00 p.m. each day.

### Repetition

* Rule: `Vale.Repetition`

The quick brown dog jumped jumped over the lazy dog.

### Semicolon

* Rule: `.vale/styles/Vultr/Semicolon.yml`

What’s considered a powerful server-class machines changes with time; today a smartphone outperforms a computer than filled a room in the past.

### Sentence Length

* Rule: `.vale/styles/Vultr/SentenceLength.yml`

Often a long sentence is just full of fluffy words that don't actually contain any meaningful information that a shorter collection of words, arranged with utmost care, could explain much better.

### Sentence Spacing

* Rule: `.vale/styles/Vultr/SentenceSpacing.yml`

Use a single space after a period.It's not a good idea to use two spaces after the period in Vultr Markdown files.  The extra space isn't needed.

### Setup

* Rule: `.vale/styles/Vultr/Setup.yml`

Wrong:  
Make sure you can log in after you setup the server. If you aren't able to log in, reconfigure the set up.

Correct:  
Make sure you can log in after you set up the server. If you aren't able to log in, reconfigure the setup.

### Simplicity

* Rule: `.vale/styles/Vultr/Simplicity.yml`

To install MySQL, simply run the following commands.

### Substitution

* Rule: `.vale/styles/Vultr/Substitutions.yml`

Please read the styleguide.

### Substitution Warnings

* Rule: `.vale/styles/Vultr/SubstitutionWarning.yml`

The standard code base requires 20 GB of RAM.

### Too Wordy

* Rule: `.vale/styles/Vultr/TooWordy.yml`

Use MySQL should you wish to install a database.

### Uncomparables

* Rule: `.vale/styles/Vultr/Uncomparables.yml`

It's increasingly impossible to run a sophisticated website on a single server.

### URL Format

* Rule: `.vale/styles/Vultr/URLFormat.yml`

Make sure to include an URL to your website.

### We

* Rule: `.vale/styles/Vultr/We.yml`

We finished the MySQL installation.

### Weak Writing

* Rule: `.vale/styles/Vultr/ThereIs.yml`
* Rule: `.vale/styles/Vultr/So.yml`

There is a lot of confusion about clear, direct writing. So, these weak sentence constructions exist. There are solutions to this problem.
