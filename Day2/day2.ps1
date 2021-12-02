$fromFile = @(Get-Content -Path .\input.txt)
$horizontal = 0;
$depth = 0;
$aim = 0;

function Get-Part1 {
    foreach($line in $fromFile){
        $str = $line -split " "
        if ($str[0] -eq 'forward') {
            $horizontal += [int]$str[1];
        }
        elseif ($str[0] -eq 'down') {
            $depth += [int]$str[1];
        }
        elseif ($str[0] -eq 'up') {
            $depth -= [int]$str[1];
        }
    }
    $total = [int]$horizontal * [int]$depth;
    Write-Output "The answer for part 1 is: "$total;   
}

function Get-Part2 {
    foreach($line in $fromFile){
        $str = $line -split " "
        if ($str[0] -eq 'forward') {
            $horizontal += [int]$str[1];
            $depth += $aim * [int]$str[1];
        }
        elseif ($str[0] -eq 'down') {
            $aim += [int]$str[1];
        }
        elseif ($str[0] -eq 'up') {
            $aim -= [int]$str[1];
        }
    }
    $total = [int]$horizontal * [int]$depth;
    Write-Output "the answer for Part 2 is: " $total; 
}

Get-Part1;
Get-Part2;