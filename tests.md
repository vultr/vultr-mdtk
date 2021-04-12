# Tests

## Folders

The [/tests](https://github.com/vultr/vultr-mdtk/tree/main/tests) folder contains a series of test cases to verify the rules are functional.

* [/tests/markdownlint](https://github.com/vultr/vultr-mdtk/tree/main/tests/markdownlint): Manual tests for markdownlint.
* [/tests/Vale](https://github.com/vultr/vultr-mdtk/tree/main/tests/Vale): Test suite for Vultr's style rules.

## Vale Test Script

To run the test:

1. Open PowerShell.
2. Change to the /tests directory.
3. Run:

        PS > .\Test.ps1

To set new expected results:

1. Run the script
1. Copy `Test.txt` to `ExpectedResult.txt`

## Example Test Success

    PS > .\Test.ps1

    Testing:

    Vale.Repetition.md
    Vultr.Acronyms.md
    Vultr.AvoidAdverbs.md
    ...
    Vultr.URLFormat.md
    Vultr.VPS.md
    Vultr.We.md

    Test matches expected result.

## Example Test Failure

    PS > .\Test.ps1

    Testing:

    Vale.Repetition.md
    Vultr.Acronyms.md
    Vultr.AvoidAdverbs.md
    ...
    Vultr.URLFormat.md
    Vultr.VPS.md
    Vultr.We.md

    Differences found.

    Value
    -----
    Vultr.Passive.md:8:11:Vultr.Passive:In most cases, documentation should use active voice. 'was logged' looks like passive voice.
    Vultr.Percentages.md:8:6:Vultr.Percentages:Use a numeral plus the units.
