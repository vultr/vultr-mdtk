#########################################
# MIT license
#
# Copyright 2020, David Finster
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
# Run as:
#
# > .\Test.ps1
#
# To generate new expected results:
#
# 1. Run the script
# 3. Copy TestRaw.txt to TestExpected.txt
#
#########################################

## Expected results. Vale errors in this file are expected.
$fileExpected = "TestExpected.txt"

# Intermediate raw test file with Vale errors from this test pass.
$fileTest = "TestRaw.txt"

# Final report with difference from expected results. Should be null is test is successful.
$fileReport = "TestReport.txt"

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
    Write-Host "`nDifferences found. Report file:" $fileReport
    $compare | foreach  { 
        if ($_.sideindicator -eq '<=') {
            $_.sideindicator = $fileExpected
        }

        if ($_.sideindicator -eq '=>') {
            $_.sideindicator = $fileTest
        }
    }
    $compare | select @{l='Value';e={$_.InputObject}} | Out-File $fileReport
    Get-Content -Path $fileReport
    # $Compare | select @{l='Value';e={$_.InputObject}},@{l='File';e={$_.SideIndicator}} | Write-Host
} Else {
    Write-Host "`nTest matches expected result.`n`n"
}

# If (Test-Path -Path $fileTest ) { Remove-Item -Path $fileTest }
