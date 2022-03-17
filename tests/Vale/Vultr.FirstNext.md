# Test Case

    Vultr.FirstNext

## Warning Expected

First without a comma at the beginning of a sentence should have a warning. First, with a comma should also have a warning.

Firstly without a comma should have an error. And, Firstly anywhere should also even if the firstly case changes. Firstly, this one with a comma should also.

Next this sentence without a comma should have a warning. Next, with a comma should also.

Finally this sentence with a comma should have a warning. Finally, this one should also.

Last this sentence without a comma should have a warning. Last, this one should warn also.

And using Lastly anywhere should have an error. Lastly, this one should error. Lastly this one without a comma should also.

## Correct

But, this First example should not have a first warning.

But, this Next example should not have a next warning.

But, this Finally example should not have a finally warning.

But, this Last example should not have a last warning.
