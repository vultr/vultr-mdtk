# Tests

## Test Folders

* **markdownlint:** Manual tests for markdownlint.
* **Vale:** Test suite with test script.

## Vale Test Script

Run `Test.ps1` in the `Vale` folder to test the Vale style rules. See more documentation in the header of `Test.ps1`.

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


