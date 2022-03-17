#!/bin/bash
##############################################################################
# Contact: David Finster - dfinster@vultr.com
#
# This folder contain one Markdown files per Vale Style rule. Each Markdown
# file is designed to violate that rule in some way, and may also demonstrate
# successful examples. This script runs each Markdown file through Vale, 
# collects the results, then compares the test result to the expected
# result.
#
# This tests new rules and regression tests the entire set of styles, which
# is useful after a Vale upgrade or to compare across platforms.
#
# ## To run the test:
#
#    $ ./test.sh
#
# ## To update the expected results when a rule is added or changed:
#   
#    Run the script and examine the output. If correct:
#
#    $ cp Output.log to Expected.log
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
expected=Expected.log
output=Output.log
report=Report.log

# Delete old test output
rm -f $output
rm -f $report

echo "Running tests..."

# Loop through all the markdown files
for f in $(ls -1 *.md | sort); 
do 
  echo Processing $f ; 
    # Run the test
    vale --output line $f >> $output;
done;

# Compare the output to expected result.
grep -Fxvf $expected $output > $report
if [ -s $report ]
then
  echo "-------------------------------------------------------"
  echo "Check these rules for errors:"
  echo
  cat $report
  exit 1
else
  echo "-------------------------------------------------------"
  echo "All tests passed."
  rm -f $report
  rm -f $output
  exit 0
fi
