##############################################################################
# Contact: David Finster - dfinster@vultr.com
#
# This folder contain one Markdown files per Vale Style rule. Each Markdown
# file is designed to violate that rule in some way, and may also demonstrate
# successful examples. The PowerShell script runs each Markdown file through 
# Vale, collects the results, then compares the test result to the expected
# result.
#
# This tests new rules and regression tests the entire set of styles, which
# is useful after a Vale upgrade or to compare across platforms.
#
#### To run the test:
#
#    1. Open PowerShell.
#    2. Change to this directory.
#    3. Run:
#
#        PS > .\Test.ps1
#
#### To set new expected results:
#
#    1. Run the script
#    2. Copy Test.txt to ExpectedResult.txt
#
##############################################################################
# MIT license
#
# Copyright 2020, Vultr.com
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to 
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
#
##############################################################################

## Expected result. These are the expected errors for a successful test.
$fileExpected = "ExpectedResult.txt"

# Intermediate test file with the errors from this test run.
$fileTest = "Test.txt"

# Final report showing the difference from expected results.
# File is not created if test is successful.
$fileReport = "Report.txt"

# Delete old test output
If (Test-Path -Path $fileTest ) { Remove-Item -Path $fileTest }
If (Test-Path -Path $fileReport ) { Remove-Item -Path $fileReport }

# Run tests on all Markdown files
Write-Host "`nTesting:`n"
foreach ($fileMarkdown in Get-ChildItem -Path *.md -Name) {
    Write-Host $fileMarkdown
    vale --output line $fileMarkdown >> $fileTest
}

# Compare the output to expected result.
$compareExpected = Get-Content $fileExpected
$compareTest = Get-Content $fileTest
$compare = Compare-Object $compareExpected $compareTest

If ($compare) { 
    Write-Host "`nDifferences found. See:" $fileReport
    $compare | ForEach-Object  { 
        if ($_.sideindicator -eq '<=') {
            $_.sideindicator = $fileExpected
        }

        if ($_.sideindicator -eq '=>') {
            $_.sideindicator = $fileTest
        }
    }
    $compare | Select-Object @{l='Value';e={$_.InputObject}} | Out-File $fileReport
    Get-Content -Path $fileReport
    # $Compare | select @{l='Value';e={$_.InputObject}},@{l='File';e={$_.SideIndicator}} | Write-Host
} Else {
    Write-Host "`nTest matches expected result.`n`n"
}

# If (Test-Path -Path $fileTest ) { Remove-Item -Path $fileTest }
