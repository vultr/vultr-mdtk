#########################################
# Run as:
#
# > powershell.exe .\_RunTest.ps1
#
# To generate new expected results:
#
# 1. Run the script
# 3. Copy _TestResult.txt to _ExpectedResult.txt
#
#########################################

# Delete old test output.
If (Test-Path -Path _TestResult.txt ) { Remove-Item -Path _TestResult.txt }

# Run tests
vale --output line Vale.Repetition.md >> _TestResult.txt
vale --output line Vultr.Acronyms.md >> _TestResult.txt
vale --output line Vultr.AvoidAdverbs.md >> _TestResult.txt
vale --output line Vultr.AvoidIdoms.md >> _TestResult.txt
vale --output line Vultr.AvoidWordy.md >> _TestResult.txt
vale --output line Vultr.Because.md >> _TestResult.txt
vale --output line Vultr.British.md >> _TestResult.txt
vale --output line Vultr.Contractions.md >> _TestResult.txt
vale --output line Vultr.CurrentStatus.md >> _TestResult.txt
vale --output line Vultr.DateMidnight.md >> _TestResult.txt
vale --output line Vultr.DateRedundancy.md >> _TestResult.txt
vale --output line Vultr.Ellipses.md >> _TestResult.txt
vale --output line Vultr.Exclamation.md >> _TestResult.txt
vale --output line Vultr.FirstPerson.md >> _TestResult.txt
vale --output line Vultr.FutureTense.md >> _TestResult.txt
vale --output line Vultr.Gender.md >> _TestResult.txt
vale --output line Vultr.HeadingPunctuation.md >> _TestResult.txt
vale --output line Vultr.Headings.md >> _TestResult.txt
vale --output line Vultr.LatinAbbreviations.md >> _TestResult.txt
vale --output line Vultr.Login.md >> _TestResult.txt
vale --output line Vultr.MarkdownBlockquote.md >> _TestResult.txt
vale --output line Vultr.MarkdownBullet.md >> _TestResult.txt
vale --output line Vultr.MarkdownFencedCode.md >> _TestResult.txt
vale --output line Vultr.MarkdownTabs.md >> _TestResult.txt
vale --output line Vultr.MeaningfulLinks.md >> _TestResult.txt
vale --output line Vultr.Negative.md >> _TestResult.txt
vale --output line Vultr.Once.md >> _TestResult.txt
vale --output line Vultr.Ordinal.md >> _TestResult.txt
vale --output line Vultr.Oxymorons.md >> _TestResult.txt
vale --output line Vultr.Passive.md >> _TestResult.txt
vale --output line Vultr.Percentages.md >> _TestResult.txt
vale --output line Vultr.Periods.md >> _TestResult.txt
vale --output line Vultr.Plurals.md >> _TestResult.txt
vale --output line Vultr.Ranges.md >> _TestResult.txt
vale --output line Vultr.RangeSpace.md >> _TestResult.txt
vale --output line Vultr.Semicolon.md >> _TestResult.txt
vale --output line Vultr.SentenceLength.md >> _TestResult.txt
vale --output line Vultr.SentenceSpacing.md >> _TestResult.txt
vale --output line Vultr.Setup.md >> _TestResult.txt
vale --output line Vultr.Simplicity.md >> _TestResult.txt
vale --output line Vultr.So.md >> _TestResult.txt
vale --output line Vultr.SubstitutionComplex.md >> _TestResult.txt
vale --output line Vultr.Substitutions.md >> _TestResult.txt
vale --output line Vultr.SubstitutionWarning.md >> _TestResult.txt
vale --output line Vultr.Thereis.md >> _TestResult.txt
vale --output line Vultr.TimeFormat.md >> _TestResult.txt
vale --output line Vultr.TimeRange.md >> _TestResult.txt
vale --output line Vultr.Uncomparables.md >> _TestResult.txt
vale --output line Vultr.URLFormat.md >> _TestResult.txt
vale --output line Vultr.VPS.md >> _TestResult.txt
vale --output line Vultr.We.md >> _TestResult.txt

# Compare the output to expected result.

$fileExpected = "_ExpectedResult.txt"
$fileTest = "_TestResult.txt"

$compareExpected = Get-Content $fileExpected
$compareTest = Get-Content $fileTest

$Compare = Compare-Object $compareExpected $compareTest

If ($Compare) { 

    Write-Host "Differences found:`n`n"

    $Compare | foreach  { 
      if ($_.sideindicator -eq '<=')
        {$_.sideindicator = $fileExpected}

      if ($_.sideindicator -eq '=>')
        {$_.sideindicator = $fileTest}
    }

    #$Compare | select @{l='Value';e={$_.InputObject}},@{l='File';e={$_.SideIndicator}} | Out-File $outFile
    $Compare | select @{l='Value';e={$_.InputObject}},@{l='File';e={$_.SideIndicator}} | Write-Host

} Else {
    Write-Host "Test matches expected result."
}

# If (Test-Path -Path _TestResult.txt ) { Remove-Item -Path _TestResult.txt }
