#Boucle infini pour rester dansle Programme
while ($true) {
# Traitement du premier imput
    $input1 = Read-Host "first Number"}
do {
    if ($input1 -notmatch '^\d+$') {
    $input1 = Read-Host "Enter a Valid Number"
    }
} while ($input1 -notmatch '^\d+$')
$input1 = [int]$input1

echo "+------------------------+"
echo "|-[+] : Add--------------|"
echo "|-[-] : Substract--------|"
echo "|-[*] : Multiply---------|"
echo "|-[/] : Divide-----------|"
echo "+------------------------+"

[string]$op = Read-Host "Operator"
$input2 = Read-Host "second Number"
do {
    if ($input2 -notmatch '^\d+$') {
    $input2 = Read-Host "Enter a Valid Number"
    }
} while ($input2 -notmatch '^\d+$')
$input2 = [int]$input2
    swicth ($op){
    "+" {
    $res = $input1 + $input2
    }
    "-" {
    $res = $input1 - $input2
    }
    "*" {
    $res = $input1 * $input2
    }
    "/" {
    $res = $input1 / $input2
    }
    default {
    $res = "error"
    }
    }
    Write-Host "`n result >> $res`n`a"
    }