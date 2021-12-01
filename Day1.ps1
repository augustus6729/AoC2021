$fromFile = @(Get-Content H:\Redirected\Documents\AdventPuzzle1Input.txt)
$amount = 0;
$window = 0;
for ($i = 0; $i -lt $fromFile.Count; $i++) {
    if ([int]$fromFile[$i] -gt [int]$fromFile[$i-1]) {
        $amount++;
    }

    if ([int]$fromFile[$i+1] + [int]$fromFile[$i+2] + [int]$fromFile[$i+3] -gt [int]$fromFile[$i] + [int]$fromFile[$i+1] + [int]$fromFile[$i+2]) {
        $window++;
    }
}
Write-Output "The total number of increases is" $amount;
Write-Output "The toal number of increases for Part 2 is" $window;