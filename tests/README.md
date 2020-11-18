# Tests

## Test Folders

* **markdownlint:** Manual tests for markdownlint.
* **Vale:** Test suite with test script.

## Vale Test Script

From the Vale folder in PowerShell, run `Test.ps1` to test the Vale style rules.

* **TestExpected.txt:** Expected results. TestRaw.txt should match this file.
* **TestRaw.txt:** Raw test file with Vale errors from this test pass.
* **TestReport.txt:** Report with difference from expected results. This file isn't created if the test succeeds.

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

    Differences found. Report file: TestReport.txt

    Value
    -----
    Vultr.Passive.md:8:11:Vultr.Passive:In most cases, documentation should use active voice. 'was logged' looks like passive voice.
    Vultr.Percentages.md:8:6:Vultr.Percentages:Use a numeral plus the units.


